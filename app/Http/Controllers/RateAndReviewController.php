<?php

namespace App\Http\Controllers;

use App\Models\RateAndReview;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
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
            'service_provider_id' => 'required'
        ];
        $this->validate($request, $rules);
        if (DB::table('rate_and_reviews')->where('service_user_id','=',$request->user()->id)->where('service_provider_id','=',$request['service_provider_id'])->exists())
        {
            $id = DB::table('rate_and_reviews')->where('service_user_id','=',$request->user()->id)->where('service_provider_id','=',$request['service_provider_id'])->get()->pluck('id');;
            DB::table('rate_and_reviews')->where('id', $id)->update(['rating' => $request['rating']]);
        }
        else{
       $rateAndReview = new RateAndReview();
       $rateAndReview->rating  = $request->rating;
       $rateAndReview->service_provider_id  = $request->service_provider_id;
       $rateAndReview->service_user_id  = $request->user()->id;
       $rateAndReview->save();
       return $rateAndReview;
    }
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
        public function reviewStore(Request $request)
    {
        $rules = [
            'review' =>'required',
            'service_provider_id' => 'required'
        ];
        $this->validate($request, $rules);
        if (DB::table('rate_and_reviews')->where('service_user_id','=',$request->user()->id)->where('service_provider_id','=',$request['service_provider_id'])->exists())
        {
            $id = DB::table('rate_and_reviews')->where('service_user_id','=',$request->user()->id)->where('service_provider_id','=',$request['service_provider_id'])->get()->pluck('id');;
            DB::table('rate_and_reviews')->where('id', $id)->update(['reviews' => $request['review']]);
        }
        else{
       $rateAndReview = new RateAndReview();
       $rateAndReview->reviews  = $request->review;
       $rateAndReview->service_provider_id  = $request->service_provider_id;
       $rateAndReview->service_user_id  = $request->user()->id;
       $rateAndReview->save();
       return $rateAndReview;
    }
    }
}
