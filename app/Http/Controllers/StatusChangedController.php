<?php

namespace App\Http\Controllers;

use App\Http\Controllers\NotificationController;
use App\Models\CartGroup;
use App\Models\Operation;
use App\Models\Payment;
use App\Models\User;
use App\Notifications\CashPayment;
use App\Notifications\CashPaymentCancelled;
use App\Notifications\DuePayment;
use App\Notifications\OrderBooked;
use App\Notifications\OrderCancelled;
use App\Notifications\OrderStarted;
use App\Notifications\RechargeCompleted;
use App\Notifications\TaskFinished;
use App\Notifications\TaskFinishedByPaypal;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Notification;
use Illuminate\Support\Str;


class StatusChangedController extends Controller
{
    public function BookFlagChanged(Request $request)
    {
        $rules = [
            'operation_id' => 'required',
            'status' => 'required',
        ];
        $this->validate($request, $rules);
        if ($request['status'] == '1') {
            DB::table('operations')->where('id', $request['operation_id'])->update(['booked_flag' => '1']);
            $operation = Operation::findOrFail($request->operation_id);
            $user = User::findOrFail($operation->service_user_id);
             $title="Order Booked";
             $orderName=CartGroup::findOrFail($operation->cart_collection_id)->collection_name;
             $body = "Your Order ".$orderName." is booked.";
            NotificationController::send($user->device_token,$title,$body);
            $user->notify(new OrderBooked($operation));
        } else {
            DB::table('operations')->where('id', $request['operation_id'])->update(['cancel_flag' => '1']);
            $operation = Operation::findOrFail($request->operation_id);
            $user = User::findOrFail($operation->service_user_id);
        $title="Order Cancelled";
        $orderName=CartGroup::findOrFail($operation->cart_collection_id)->collection_name;
        $body = "Your Order ".$orderName." is cancelled.";
        NotificationController::send($user->device_token,$title,$body);
            $user->notify(new OrderCancelled($operation));
        }
    }
    public function StartFlagChanged(Request $request)
    {
        $rules = [
            'operation_id' => 'required',
        ];
        $this->validate($request, $rules);
        DB::table('operations')->where('id', $request['operation_id'])->update(['start_flag' => '1']);
        $operation = Operation::findOrFail($request->operation_id);
        $user = User::findOrFail($operation->service_user_id);
        $title="Task Ongoing";
        $orderName=CartGroup::findOrFail($operation->cart_collection_id)->collection_name;
        $body = "Your Order ".$orderName." is starting.";
        NotificationController::send($user->device_token,$title,$body);
        $user->notify(new OrderStarted($operation));
    }
    public function CompletedFlagChanged(Request $request)
    {
        $rules = [
            'operation_id' => 'required',
        ];
        $this->validate($request, $rules);
        DB::table('operations')->where('id', $request['operation_id'])->update(['completed_flag' => '1']);
        $operation = Operation::findOrFail($request->operation_id);
        $user = User::findOrFail($operation->service_user_id);
        $title="Payment is Due";
        $orderName=CartGroup::findOrFail($operation->cart_collection_id)->collection_name;
        $body = "Your Order ".$orderName." payment is not recieved  .";
        NotificationController::send($user->device_token,$title,$body);
        $user->notify(new DuePayment($operation));
    }
    public function PaymentFlagChanged(Request $request)
    {
        $rules = [
            'operation_id' => 'required',
            'total_amount' => 'required',
            'status' =>'required',
        ];
        $this->validate($request, $rules);
        $operation = Operation::findOrFail($request->operation_id);
        $user = User::findOrFail($operation->service_user_id);
        if($request['status']=='1'){
        $payment = new Payment;
        $payment->payment_id =  Str::random(10);
        $payment->payer_id = $operation->service_user_id;
        $payment->payer_email =$user->email;
        $payment->cart_id=$operation->cart_collection_id;
        $payment->amount = $request->total_amount;
        $payment->currency = 'Nrs.';
        $payment->payment_status = 'SUCCESS';
        $payment->platform = 'Cash';
        $payment->save();
        DB::table('operations')->where('id', $request['operation_id'])->update(['payment_flag' => '1']);
         $paymentcost = DB::table('transactions')->where('service_provider_id',$operation->service_provider_id)->get()->unique('payment')->pluck('payment');
           $new_payment = floatval($paymentcost[0]) - 0.02 * floatval( $payment->amount );
          DB::table('transactions')->where('service_provider_id',$operation->service_provider_id)->update(['payment'=>$new_payment]);
          DB::table('operations')->where('id', $request['operation_id'])->update(['pay_by_cash_flag' => '0']);
        $title="Task Completed";
        $orderName=CartGroup::findOrFail($operation->cart_collection_id)->collection_name;
        $body = "Order ".$orderName." is completed.";
        NotificationController::send($user->device_token,$title,$body);
        $user->notify(new TaskFinished($operation));
    }
    else{
         DB::table('operations')->where('id', $request['operation_id'])->update(['pay_by_cash_flag' => '0']);
          $title="Cash Request Cancelled";
        $orderName=CartGroup::findOrFail($operation->cart_collection_id)->collection_name;
        $body = "Order ".$orderName."'s cash request Cancelled by user";
        NotificationController::send($user->device_token,$title,$body);
        $user->notify(new CashPaymentCancelled($operation));

    }
}

    public static function PaymentOnChanged($cart_id, $amount)
    {
          DB::table('operations')->where('cart_collection_id', $cart_id->id)->update(['payment_flag' => '1']);
         $operation_id = DB::table('operations')->where('cart_collection_id', $cart_id->id)->get()->unique('id')->pluck('id');
         $operation = Operation::findOrFail($operation_id);
          $service_provider_id = DB::table('operations')->where('id',$operation_id)->get()->unique('service_provider_id')->pluck('service_provider_id');
          $payment = DB::table('transactions')->where('service_provider_id',$service_provider_id)->get()->unique('payment')->pluck('payment');
           $new_payment = floatval($payment[0]) + floatval( $amount ) - 0.02 * floatval( $amount );
          DB::table('transactions')->where('service_provider_id',$service_provider_id)->update(['payment'=>$new_payment]);
         $user = User::findOrFail($operation[0]->service_user_id);
        $title="Task Completed";
         $orderName=CartGroup::findOrFail($operation[0]->cart_collection_id)->collection_name;
        $body = "Order ".$orderName." is completed.";
         NotificationController::send($user->device_token,$title,$body);
         $user->notify(new TaskFinishedByPaypal($operation));
    }


public static function RechargeAmount($userid, $amount)
    {
          $payment = DB::table('transactions')->where('service_provider_id',$userid)->get()->unique('payment')->pluck('payment');
           $new_payment = floatval($payment[0]) + floatval( $amount );
          DB::table('transactions')->where('service_provider_id',$userid)->update(['payment'=>$new_payment]);
         $user = User::findOrFail($userid);
        $title="Recharge Completed";
        $body = "Recharge ".$amount." is completed.";
         NotificationController::send($user->device_token,$title,$body);
         $user->notify(new RechargeCompleted($amount));
    }
    public function CashFlagChanged(Request $request)
    {
        $rules = [
            'cart_name' => 'required',
        ];
        $this->validate($request, $rules);
        $cartId= DB::table('cart_groups')->select('id')->where('collection_name', $request['cart_name'])->first();
        DB::table('operations')->where('cart_collection_id', $cartId->id)->update(['pay_by_cash_flag' => '1']);
        $operation_id = DB::table('operations')->where('cart_collection_id', $cartId->id)->get()->unique('id')->pluck('id');
        $operation = Operation::findOrFail($operation_id);
        $user = User::findOrFail($operation[0]->service_user_id);
        $title="CashPayment";
        $orderName=CartGroup::findOrFail($operation[0]->cart_collection_id)->collection_name;
        $body = "Your Order ".$orderName." payment is recieved by cash?";
        NotificationController::send($user->device_token,$title,$body);
        $user->notify(new CashPayment($operation));

    }
}
