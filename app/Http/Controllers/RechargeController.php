<?php

namespace App\Http\Controllers;

use App\Models\Payment;
use App\Models\Recharge;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Srmklive\PayPal\Services\ExpressCheckout;

class RechargeController extends Controller
{
public function payment($user_id,$total)
    {
        $data['items'] = [
            [
                'name' => 'Recharge',
                'price' => $total,
                'desc'  => 'Description for Cart',
                'qty' => 1
            ]
        ];
  
        $data['invoice_id'] = $user_id;
        $data['invoice_description'] = "Order #{$data['invoice_id']} Invoice";
        $data['return_url'] = route('recharge.success');
        $data['cancel_url'] = route('recharge.cancel');
        $data['total'] = $total;
  
        $provider = new ExpressCheckout;
  
        $response = $provider->setExpressCheckout($data);
  
        $response = $provider->setExpressCheckout($data, true);
  
        return redirect($response['paypal_link']);
    }
   
    /**
     * Responds with a welcome message with instructions
     *
     * @return \Illuminate\Http\Response
     */
    public function cancel()
    {
        dd('Your payment is canceled. You can create cancel page here.');
    }
  
    /**
     * Responds with a welcome message with instructions
     *
     * @return \Illuminate\Http\Response
     */
    public function success(Request $request)
    {
         $provider = new ExpressCheckout;
  
         $response = $provider->getExpressCheckoutDetails($request->token);
  
         if (in_array(strtoupper($response['ACK']), ['SUCCESS', 'SUCCESSWITHWARNING'])) {
              $isPaymentExist = Recharge::where('payment_id', $response['CORRELATIONID'])->first();
                   if(!$isPaymentExist)
                 {
                    $recharge= new Recharge;
                    $recharge->payment_id = $response['CORRELATIONID'];
                    $recharge->payer_id = $response['PAYERID'];
                    $recharge->payer_email =$response['EMAIL'];
                    $recharge->payment_recharge = $response['L_AMT0'];
                    $recharge->currency = env('PAYPAL_CURRENCY');
                    $recharge->payment_status = $response['ACK'];
                    $recharge->platform = 'Paypal';
                    $recharge->service_provider_id = $response['INVNUM'];
                    $recharge->save();
                }
             // dd($response);
             StatusChangedController::RechargeAmount($response['INVNUM'], $response['L_AMT0']);
             dd('Your payment was successfully. You can create success page here.');
        }
  
        dd('Something is wrong.');
    }    
}
