<?php

namespace App\Http\Controllers;

use App\Models\Favourite;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class FavouriteCheckerController extends Controller
{
public function isAvailable(Request $request)
    {
         $rules = [
            'service_provider_id' => 'required',
        ];

        $this->validate($request, $rules);
          if (DB::table('favourites')->where('service_user_id','=',$request->user()->id)->where('service_provider_id','=',$request['service_provider_id'])->exists()) {
         	return response(
         ['data' => 'true'],200);
        }
         else {
         	return response(
             ['data' => 'false'],200);;
         }
    }

public function deleteFavourite(Request $request)
{

         $rules = [
            'service_user_id' => 'required',
            'service_provider_id' => 'required',
        ];

        $this->validate($request, $rules);
       DB::table('favourites')->where('service_user_id','=',$request->user()->id)->where('service_provider_id','=',$request['service_provider_id'])->delete();
}    
}

