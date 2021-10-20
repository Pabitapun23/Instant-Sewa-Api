<?php

namespace App\Http\Controllers;

use App\Http\Resources\TransactionCollection;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class TransactionController extends Controller
{
     public function AmountFinder(Request $request)
    {
      $amount = DB::table('transactions')->where('service_provider_id',$request->user()->id)->get();
      return new TransactionCollection($amount);
    }
}
