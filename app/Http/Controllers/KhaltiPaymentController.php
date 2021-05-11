<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Snlbaral\Khalti\Khalti;
class KhaltiPaymentController extends Controller
{

public function verification(Request $request) {
    $secret = "test_secret_key_YOUR_SECRET_KEY";
    $token = $reqeust->token;
    $amount = $reqeust->amount;
    $khalti = new Khalti();
    $response = $khalti->verifyPayment($secret,$token,$amount);

    dd($response);

}
}
