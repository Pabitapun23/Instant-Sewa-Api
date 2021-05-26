<?php

namespace App\Http\Controllers;

use App\Http\Controllers\ServiceProviderController;
use App\Models\RateAndReview;
use App\Models\TempRating;
use Illuminate\Http\Request;

class TempRatingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

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
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\TempRating  $tempRating
     * @return \Illuminate\Http\Response
     */
    public function show(TempRating $tempRating)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\TempRating  $tempRating
     * @return \Illuminate\Http\Response
     */
    public function edit(TempRating $tempRating)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\TempRating  $tempRating
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, TempRating $tempRating)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\TempRating  $tempRating
     * @return \Illuminate\Http\Response
     */
    public function destroy(TempRating $tempRating)
    {
        //
    }
    public static function fillData()
    {
        TempRating::truncate();
        $service_providers_id = RateAndReview::select('service_provider_id')->distinct()->pluck('service_provider_id')->toArray();
        $count=count($service_providers_id);
        $i=0;
        while($count > $i)
        {
            $tempRating = new TempRating();
            $tempRating->service_provider_id = $service_providers_id[$i];
            $tempRating->average_rating = ServiceProviderController::rating($service_providers_id[$i]);
            $tempRating->save();
            $i++;
        }
        }
}
