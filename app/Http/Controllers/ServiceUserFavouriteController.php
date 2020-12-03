<?php

namespace App\Http\Controllers;

use App\Http\Resources\ServiceProviderCollection;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ServiceUserFavouriteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($id)
    {
        $favourite = DB::table('favourites')->where('service_user_id',$id)->get()->pluck('service_provider_id');         
        $serviceproviders = DB::table('users')
            ->whereIn('id', $favourite)
            ->get();
              return new ServiceProviderCollection($serviceproviders);   
    }
    
}
