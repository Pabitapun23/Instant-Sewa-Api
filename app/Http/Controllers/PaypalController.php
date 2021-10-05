<?php

namespace App\Http\Controllers;
  
use App\Http\Controllers\StatusChangedController;
use App\Models\Payment;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Srmklive\PayPal\Services\ExpressCheckout;
   
class PayPalController extends Controller
{
    /**
     * Responds with a welcome message with instructions
     *
     * @return \Illuminate\Http\Response
     */
    public function payment($cartName,$total)
    {
        $data['items'] = [
            [
                'name' => $cartName,
                'price' => $total,
                'desc'  => 'Description for ItSolutionStuff.com',
                'qty' => 1
            ]
        ];
  
        $data['invoice_id'] = 1;
        $data['invoice_description'] = "Order #{$data['invoice_id']} Invoice";
        $data['return_url'] = route('payment.success');
        $data['cancel_url'] = route('payment.cancel');
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
        	 $isPaymentExist = Payment::where('payment_id', $response['CORRELATIONID'])->first();
        	      if(!$isPaymentExist)
                {
                	$cartID= DB::table('cart_groups')->select('id')->where('collection_name', $response['L_NAME0'])->first();
                    $payment = new Payment;
                    $payment->payment_id = $response['CORRELATIONID'];
                    $payment->payer_id = $response['PAYERID'];
                    $payment->payer_email =$response['EMAIL'];
                    $payment->cart_id=$cartID->id;
                    $payment->amount = $response['L_AMT0'];
                    $payment->currency = env('PAYPAL_CURRENCY');
                    $payment->payment_status = $response['ACK'];
                    $payment->platform = 'Paypal';
                    $payment->save();
                }
            // dd($response);
            $cartID= DB::table('cart_groups')->select('id')->where('collection_name', $response['L_NAME0'])->first();
            StatusChangedController::PaymentOnChanged($cartID, $response['L_AMT0']);
            dd('Your payment was successfully. You can create success page here.');
        }
  
        dd('Something is wrong.');
    }
}