<?php

namespace App\Http\Controllers;

use App\Models\CartGroup;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class CartGroupController extends Controller
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
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(),[
            'service_user' => 'required|string|max:255',
        ]);
        if ($validator->fails()) {
            return response(['errors'=>$validator->errors()],422);
        }
        $cart_group = new CartGroup();
        $cart_group->save();
         DB::table('cart_groups')->where('id',$cart_group->id)->update(['collection_name'=>$request['service_user'].$cart_group->id]);
         return $cart_group->id;
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\CartGroup  $cartGroup
     * @return \Illuminate\Http\Response
     */
    public function show(CartGroup $cartGroup)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\CartGroup  $cartGroup
     * @return \Illuminate\Http\Response
     */
    public function edit(CartGroup $cartGroup)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\CartGroup  $cartGroup
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, CartGroup $cartGroup)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\CartGroup  $cartGroup
     * @return \Illuminate\Http\Response
     */
    public function destroy(CartGroup $cartGroup)
    {
        //
    }
}
