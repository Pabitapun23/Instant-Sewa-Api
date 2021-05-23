<?php

namespace App\Http\Controllers;

use App\Models\Address;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
class ServiceUserUpdate extends Controller
{
     public function updateDeviceToken(Request $request)
    {
        $rules = [
            'deviceToken' => 'required|string|max:255',
        ];
        $this->validate($request, $rules);
        DB::table('users')->where('id',$request->user()->id)->update(['device_token'=>$request['deviceToken']]);
    }
    public function updateFullName(Request $request)
    {
    	$rules = [
            'fullname' => 'required|string|max:255',
            'gender' => 'required|string|max:10',
        ];
        $this->validate($request, $rules);
        DB::table('users')->where('id',$request->user()->id)->update(['fullname'=>$request['fullname'],'gender'=>$request['gender'],]);
    }

    public function updateAddress(Request $request)
    {
        $validator = Validator::make($request->all(),[
            'address_address' => 'required|string|max:255',
            'address_latitude' => 'required',
            'address_longitude' => 'required',
        ]);
        if ($validator->fails()) {
            return response(['errors'=>$validator->errors()],422);
        }
        DB::table('users')->where('id',$request->user()->id)->update(['address_address'=>$request['address_address'],'address_latitude'=>$request['address_latitude'],'address_longitude'=>$request['address_longitude'],]);
    }

        public function updatePhoneNo(Request $request)
    {
    	$rules = [
            'phoneno' => 'required|string|max:255',
        ];
        $this->validate($request, $rules);
        DB::table('users')->where('id',$request->user()->id)->update(['phoneno'=>$request['phoneno']]);
    }
       public function updateProfilePicture(Request $request)
    {
        $rules = [
            'image' => 'required|image',
        ];
        $this->validate($request, $rules);
        DB::table('users')->where('id',$request->user()->id)->update(['avatar'=>$request->image->store('','images')]);
    }
}
