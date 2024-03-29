<?php

namespace App\Http\Controllers;

use App\Http\Controllers\ServiceProviderController;
use App\Http\Controllers\TempRatingController;
use App\Http\Resources\ServiceProviderCollection;
use App\Http\Resources\ServiceProviderSelectionCollection;
use App\Http\Resources\ServiceResourceCollection;
use App\Http\Resources\ServiceSelectionCollection;
use App\Models\RateAndReview;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ServiceProviderSelectionController extends Controller
{
    public function serviceProviderselectionListByDistance(Request $request)
    {
    	$rules = [
            'subcategories_name' =>'required',
            'serviceusers_latitude' =>'required',
            'serviceusers_longitude' =>'required',
            'startDate' =>'required',
            'endDate' =>'required',
        ];
         $this->validate($request, $rules);
    TempRatingController::fillData();
         $start = Carbon::parse($request->startDate);
         $end = Carbon::parse($request->endDate);
         $subcategory_id = DB::table('sub_categories')->where('name', $request['subcategories_name'])->get()->pluck('id');
         $service_providers_id = DB::table('sub_category_service_providers')->where('subcategories_id',$subcategory_id)->get()->pluck('service_provider_id');
          $free_service_providers = DB::table('operations')->whereBetween('start_time', [$start, $end])->whereBetween('end_time', [$start, $end])->get()->pluck('service_provider_id');
         $list_count=count($service_providers_id);
         $list_count2=count($free_service_providers);
         for($i=0;$i<$list_count;$i++)
         {
         for($j=0;$j<$list_count2;$j++)
         {
            if($service_providers_id[$i]==$free_service_providers[$j]){
                unset($service_providers_id[$i]);;
            }
        }
        }

        $list_count=count($service_providers_id);
         for($j=0;$j<$list_count;$j++)
         {
             if(ServiceProviderSelectionController::BlockStatus($service_providers_id[$j])){
                unset($service_providers_id[$j]);
             }
         }
    $provider = DB::table('users')->whereIn('id',$service_providers_id)->get()->pluck('id');
    $service_providers_id = $provider;
     $list_count=count($service_providers_id);
          for($k=0;$k<$list_count;$k++)
          {
              if(ServiceProviderSelectionController::TransactionAmount($service_providers_id[$k]))
            {
                unset($service_providers_id[$k]);
              }
          }


        $location = DB::table('users')->join('temp_ratings', 'temp_ratings.service_provider_id', '=', 'users.id')
          ->select('users.id','username', 'address_latitude', 'address_longitude','avatar','address_address','temp_ratings.average_rating AS rating',
           DB::raw(sprintf(
             '(6371 * acos(cos(radians(%1$.7f)) * cos(radians(address_latitude)) * cos(radians(address_longitude) - radians(%2$.7f)) + sin(radians(%1$.7f)) * sin(radians(address_latitude)))) AS distance',
            $request->input('serviceusers_latitude'),
            $request->input('serviceusers_longitude')
        )))->whereIn('users.id',$service_providers_id)
        ->having('distance', '<', 5)
        ->orderBy('distance', 'asc')
        ->get();
        // return $service_providers_id;
         return new ServiceProviderSelectionCollection($location);
    }
        public function serviceProviderselectionListByRate(Request $request)
    {
        $rules = [
            'subcategories_name' =>'required',
            'serviceusers_latitude' =>'required',
            'serviceusers_longitude' =>'required',
            'startDate' =>'required',
            'endDate' =>'required',
        ];
        
        $this->validate($request, $rules);
        $start = Carbon::parse($request->startDate);
        $end = Carbon::parse($request->endDate);
        TempRatingController::fillData();
        $subcategory_id = DB::table('sub_categories')->where('name', $request['subcategories_name'])->get()->pluck('id');
        $service_providers_id = DB::table('sub_category_service_providers')->where('subcategories_id',$subcategory_id)->get()->pluck('service_provider_id');
         $free_service_providers = DB::table('operations')->whereBetween('start_time', [$start, $end])->whereBetween('end_time', [$start, $end])->get()->pluck('service_provider_id');
         $list_count=count($service_providers_id);
         $list_count2=count($free_service_providers);
         for($i=0;$i<$list_count;$i++)
         {
         for($j=0;$j<$list_count2;$j++)
         {
            if($service_providers_id[$i]==$free_service_providers[$j]){
                unset($service_providers_id[$i]);
            }
        }
        }
        $list_count=count($service_providers_id);
         for($j=0;$j<$list_count;$j++)
         {
             if(ServiceProviderSelectionController::BlockStatus($service_providers_id[$j])){
                unset($service_providers_id[$j]);
             }
         }
     $provider = DB::table('users')->whereIn('id',$service_providers_id)->get()->pluck('id');
     $service_providers_id = $provider;
         $list_count=count($service_providers_id);
         for($j=0;$j<$list_count;$j++)
         {
             if(ServiceProviderSelectionController::BlockStatus($service_providers_id[$j])){
                unset($service_providers_id[$j]);
             }
         }
    $provider = DB::table('users')->whereIn('id',$service_providers_id)->get()->pluck('id');
    $service_providers_id = $provider;
     $list_count=count($service_providers_id);
          for($k=0;$k<$list_count;$k++)
          {
              if(ServiceProviderSelectionController::TransactionAmount($service_providers_id[$k]))
            {
                unset($service_providers_id[$k]);
              }
          }
          $location = DB::table('users')->join('temp_ratings', 'temp_ratings.service_provider_id', '=', 'users.id')
          ->select('users.id','username', 'address_latitude','avatar', 'address_longitude','address_address','temp_ratings.average_rating AS rating'
          , DB::raw(sprintf(
              '(6371 * acos(cos(radians(%1$.7f)) * cos(radians(address_latitude)) * cos(radians(address_longitude) - radians(%2$.7f)) + sin(radians(%1$.7f)) * sin(radians(address_latitude)))) AS distance',
             $request->input('serviceusers_latitude'),
             $request->input('serviceusers_longitude')
         ))
      )
          ->whereIn('users.id',$service_providers_id)
          ->having('distance', '<', 5)
          ->having('rating', '>', 3)
          ->orderBy('rating', 'desc')
         ->get();
         return new ServiceProviderSelectionCollection($location);

    }

public function favouriteServiceProviderselectionListByDistance(Request $request)
    {
        $rules = [
            'subcategories_name' =>'required',
            'serviceusers_latitude' =>'required',
            'serviceusers_longitude' =>'required',
            'startDate' =>'required',
            'endDate' =>'required',
        ];
        
        $this->validate($request, $rules);
        $start = Carbon::parse($request->startDate);
        $end = Carbon::parse($request->endDate);
        $subcategory_id = DB::table('sub_categories')->where('name', $request['subcategories_name'])->get()->pluck('id');
         $service_providers_id = DB::table('sub_category_service_providers')->where('subcategories_id',$subcategory_id)->get()->pluck('service_provider_id');
         $fav_service_providers_id = DB::table('favourites')->where('service_user_id',$request->user()->id)->get()->pluck('service_provider_id');
         $list_count=count($service_providers_id);
          $list_count2=count($fav_service_providers_id);
          $k=0;
          for($i=0;$i<$list_count;$i++)
          {
          for($j=0;$j<$list_count2;$j++)
          {
             if($service_providers_id[$i]==$fav_service_providers_id[$j]){
                 $serviceman[$k] = $fav_service_providers_id[$j];
                 $k++;
             }
         }
         }
          $service_providers_id = $serviceman;
     $free_service_providers = DB::table('operations')->whereBetween('start_time', [$start, $end])->whereBetween('end_time', [$start, $end])->get()->pluck('service_provider_id');

         $list_count=count($service_providers_id);
         $list_count2=count($free_service_providers);
         for($i=0;$i<$list_count;$i++)
         {
         for($j=0;$j<$list_count2;$j++)
         {
            if($service_providers_id[$i]==$free_service_providers[$j]){
                unset($service_providers_id[$i]);
            }
        }
        }
        $provider = DB::table('users')->whereIn('id',$service_providers_id)->get()->pluck('id');
     $service_providers_id = $provider;
         $list_count=count($service_providers_id);
         for($j=0;$j<$list_count;$j++)
         {
             if(ServiceProviderSelectionController::BlockStatus($service_providers_id[$j])){
                unset($service_providers_id[$j]);
             }
         }
     $provider = DB::table('users')->whereIn('id',$service_providers_id)->get()->pluck('id');
     $service_providers_id = $provider;
     $list_count=count($service_providers_id);
          for($k=0;$k<$list_count;$k++)
          {
              if(ServiceProviderSelectionController::TransactionAmount($service_providers_id[$k]))
            {
                unset($service_providers_id[$k]);
              }
          }
          $provider = DB::table('users')->whereIn('id',$service_providers_id)->get()->pluck('id');
          $location = DB::table('users')->join('temp_ratings', 'temp_ratings.service_provider_id', '=', 'users.id')
          ->select('users.id','username', 'address_latitude','avatar', 'address_longitude','address_address','temp_ratings.average_rating AS rating'
          , DB::raw(sprintf(
              '(6371 * acos(cos(radians(%1$.7f)) * cos(radians(address_latitude)) * cos(radians(address_longitude) - radians(%2$.7f)) + sin(radians(%1$.7f)) * sin(radians(address_latitude)))) AS distance',
             $request->input('serviceusers_latitude'),
             $request->input('serviceusers_longitude')
         ))
      )
          ->whereIn('users.id',$service_providers_id)
          ->orderBy('rating', 'desc')
         ->get();
          return new ServiceProviderSelectionCollection($location);
    }

     public function serviceSelectionList(Request $request)
    {
        $rules = [
            'service_provider_id'=>'required',
        ];
        
        $this->validate($request, $rules);
        $subcategories_id = DB::table('sub_category_services')->where('service_provider_id',$request['service_provider_id'])->get()->pluck('subcategories_id');
        $serviceList = DB::table('sub_categories')->select('id','name')->whereIn('id',$subcategories_id)->get();
        return new ServiceSelectionCollection($serviceList);

}

    public static function ServiceList($id)
    {
        
        $serviceList = DB::table('services')->where('sub_categories_id',$id)->get();
        return new ServiceResourceCollection($serviceList);  
    }
    
    public static  function  BlockStatus($id)
    {
      $block_status = DB::table('users')->where('id', $id)->get()->pluck('block_status');
        return $block_status[0];
    }

    public static  function  TransactionAmount($id)
    {
      $payment = DB::table('transactions')->where('service_provider_id', $id)->get()->pluck('payment');
      if($payment[0]<0){
        return true;
      }
      else{
        return false;
      }

    }

}