<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class StatusChangedController extends Controller
{
    public function BookFlagChanged(Request $request)
    {
    	$rules = [
            'operation_id' =>'required',
            'status'=>'required',
        ];
        $this->validate($request, $rules);
        if($request['operation_id']=='1')
        {
        DB::table('operations')->where('id',$request['operation_id'])->update(['booked_flag'=>'1']);	
        }
        else{
        DB::table('operations')->where('id',$request['operation_id'])->update(['cancel_flag'=>'1']);
    }
}
    public function StartFlagChanged(Request $request)
    {
    	$rules = [
            'operation_id' =>'required',
        ];
        $this->validate($request, $rules);
        DB::table('operations')->where('id',$request['operation_id'])->update(['start_flag'=>'1']);	
        }
        public function CompletedFlagChanged(Request $request)
    {
    	$rules = [
            'operation_id' =>'required',
        ];
        $this->validate($request, $rules);
        DB::table('operations')->where('id',$request['operation_id'])->update(['completed_flag'=>'1']);	
        }public function PaymentFlagChanged(Request $request)
    {
    	$rules = [
            'operation_id' =>'required',
        ];
        $this->validate($request, $rules);
        DB::table('operations')->where('id',$request['operation_id'])->update(['payment_flag'=>'1']);	
        }
    

}
