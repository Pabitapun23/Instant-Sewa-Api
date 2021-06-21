<?php

namespace App\Http\Controllers;

use App\Http\Controllers\NotificationController;
use App\Models\CartGroup;
use App\Models\Operation;
use App\Models\User;
use App\Notifications\DuePayment;
use App\Notifications\OrderBooked;
use App\Notifications\OrderCancelled;
use App\Notifications\OrderStarted;
use App\Notifications\TaskFinished;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Notification;

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
        ];
        $this->validate($request, $rules);
        DB::table('operations')->where('id', $request['operation_id'])->update(['payment_flag' => '1']);
        $operation = Operation::findOrFail($request->operation_id);
        $user = User::findOrFail($operation->service_user_id);
        $title="Task Completed";
        $orderName=CartGroup::findOrFail($operation->cart_collection_id)->collection_name;
        $body = "Order ".$orderName." is completed.";
        NotificationController::send($user->device_token,$title,$body);
        $user->notify(new TaskFinished($operation));
    }
}
