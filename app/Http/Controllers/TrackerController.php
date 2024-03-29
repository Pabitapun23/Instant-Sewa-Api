<?php

namespace App\Http\Controllers;

use App\Http\Resources\OngoingTrackerCollection;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class TrackerController extends Controller
{
	 public function CompletedTracker(Request $request)
    {
      $services = DB::table('operations')->select('cart_collection_id','id','start_time','address_latitude','address_longitude')->where('service_user_id',$request->user()->id)->where('completed_flag','1')->orderBy('start_time', 'asc')->get();
       return new OngoingTrackerCollection($services);
    }
     public function OngoingTracker(Request $request)
    {
      $services = DB::table('operations')->select('cart_collection_id','id','start_time','address_latitude','address_longitude')->where('service_user_id',$request->user()->id)->where('completed_flag','0')->where('cancel_flag','0')->orderBy('start_time', 'asc')->get();
       return new OngoingTrackerCollection($services);
    }

     public function CancelledTracker(Request $request)
    {
     $services = DB::table('operations')->select('cart_collection_id','id','start_time','address_latitude','address_longitude')->where('service_user_id',$request->user()->id)->where('cancel_flag','1')->orderBy('start_time', 'asc')->get();
       return new OngoingTrackerCollection($services);
    }

     public function ProviderCancelledTracker(Request $request)
    {
      $services = DB::table('operations')->select('cart_collection_id','id','start_time','address_latitude','address_longitude')->where('service_provider_id',$request->user()->id)->where('cancel_flag','1')->orderBy('start_time', 'asc')->get();
       return new OngoingTrackerCollection($services);
    }
    public function ProviderCompletedTracker(Request $request)
    {
      $services = DB::table('operations')->select('cart_collection_id','id','start_time','address_latitude','address_longitude')->where('service_provider_id',$request->user()->id)->where('completed_flag','1')->orderBy('start_time', 'asc')->get();
       return new OngoingTrackerCollection($services);
    }
     public function ProviderOngoingTracker(Request $request)
    {
      $services = DB::table('operations')->select('cart_collection_id','id','start_time','address_latitude','address_longitude')->where('service_provider_id',$request->user()->id)->where('completed_flag','0')->where('cancel_flag','0')->orderBy('start_time', 'asc')->get();
       return new OngoingTrackerCollection($services);
    }
      public static function CartCollectionName($id)
    {
        $cart_name=DB::table('cart_groups')->select('collection_name')->where('id', $id)->first();      
        return $cart_name->collection_name;
    }
          public static function Status($id)
    {
        $operation=DB::table('operations')->select('booked_flag','start_flag','completed_flag','payment_flag','cancel_flag')->where('id', $id)->first();
        if($operation->booked_flag == 0 && $operation->cancel_flag == 0){
        	return 'Pending';
        }
       elseif ($operation->payment_flag == 1) {
       	return 'Completed';
       }
       elseif ($operation->booked_flag ==1 && $operation->start_flag ==0) {
       	return 'Booked';
       }

       elseif ($operation->completed_flag == 0 && $operation->start_flag == 1) {
       	return 'Ongoing';
       }

       elseif ($operation->completed_flag == 1 && $operation->payment_flag == 0) {
       	return 'Due Payment';
       }
       elseif ($operation->cancel_flag == 1) {
       	return 'Cancelled';
       }
       else{
       	return'Error';
       }

    }
}