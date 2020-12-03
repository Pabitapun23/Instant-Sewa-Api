<?php

namespace App\Http\Controllers;

use App\Http\Resources\CartResourceCollection;
use App\Models\Cart;
use App\Models\Service;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class CartController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $rules = [
            'service_name' =>'required',
            'quantity'=>'required',
            'cart_collection_id'=>'required'
        ];

        $this->validate($request, $rules);
        $service_id = DB::table('services')->select('id')->where('name', $request['service_name'])->first();
         $cart = new Cart();
       $cart->service_id  = $service_id->id;
      $cart->quantity = $request->quantity;
     $cart->cart_collection_id =$request->cart_collection_id;
        $cart->save();
        return $cart;
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Cart  $cart
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $cart = DB::table('carts')->where('id',$id)->get();
        //return $operation;
         return new CartResourceCollection($cart);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Cart  $cart
     * @return \Illuminate\Http\Response
     */
    public function edit(Cart $cart)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Cart  $cart
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Cart $cart)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Cart  $cart
     * @return \Illuminate\Http\Response
     */
    public function destroy(Cart $cart)
    {
        //
    }
    public static function ServiceName($id)
    {
         $serviceProviderName = DB::table('services')->select('name')->where('id',$id)->first();
            
        return $serviceProviderName->name;
    }
    public static function ServiceImage($id)
    {
         $serviceProviderName = DB::table('services')->select('image')->where('id',$id)->first();
            
        return $serviceProviderName->image;
    }
    public static function ServicePrice($id)
    {
         $serviceProviderName = DB::table('services')->select('payment')->where('id',$id)->first();
            
        return $serviceProviderName->payment;
    }
}
