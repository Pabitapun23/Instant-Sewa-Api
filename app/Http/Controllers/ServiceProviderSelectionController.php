<?php

namespace App\Http\Controllers;

use App\Http\Resources\ServiceProviderCollection;
use App\Http\Resources\ServiceProviderSelectionCollection;
use App\Http\Resources\ServiceResourceCollection;
use App\Http\Resources\ServiceSelectionCollection;
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
         $location = DB::table('users')
         ->select('id','username', 'address_latitude', 'address_longitude','address_address', DB::raw(sprintf(
             '(6371 * acos(cos(radians(%1$.7f)) * cos(radians(address_latitude)) * cos(radians(address_longitude) - radians(%2$.7f)) + sin(radians(%1$.7f)) * sin(radians(address_latitude)))) AS distance',
            $request->input('serviceusers_latitude'),
            $request->input('serviceusers_longitude')
        )))->whereIn('id',$service_providers_id)
        ->having('distance', '<', 5)
        ->orderBy('distance', 'asc')
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
}