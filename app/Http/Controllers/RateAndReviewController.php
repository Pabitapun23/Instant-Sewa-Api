<?php

namespace App\Http\Controllers;

use App\Models\RateAndReview;
use Illuminate\Http\Request;

class RateAndReviewController extends Controller
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
        $rules = [
            'rating' =>'required',
            'service_provider_id' => 'required',
            'service_user_id' => 'required',
        ];

       $this->validate($request, $rules);
         $rateAndReview = new RateAndReview();
       $rateAndReview->rating  = $request->rating;
       $rateAndReview->service_provider_id  = $request->service_provider_id;
       $rateAndReview->service_user_id  = $request->service_user_id;
      $rateAndReview->save();
        return $rateAndReview;
        
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\RateAndReview  $rateAndReview
     * @return \Illuminate\Http\Response
     */
    public function show(RateAndReview $rateAndReview)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\RateAndReview  $rateAndReview
     * @return \Illuminate\Http\Response
     */
    public function edit(RateAndReview $rateAndReview)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\RateAndReview  $rateAndReview
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, RateAndReview $rateAndReview)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\RateAndReview  $rateAndReview
     * @return \Illuminate\Http\Response
     */
    public function destroy(RateAndReview $rateAndReview)
    {
        //
    }
}
