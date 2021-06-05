<?php

namespace App\Http\Controllers;

use App\Models\Address;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;
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
        public function updateProfile(Request $request)
    {
        $rules = [
            'fullName' => 'required|string|max:255',
            'phoneno' => 'required|string|max:255',
            'email' => 'required|string|max:255',
            'userName' => 'required|string|max:255',
        ];
        $this->validate($request, $rules);
        DB::table('users')->where('id',$request->user()->id)->update(['fullname'=>$request['fullName'],'phoneno'=>$request['phoneno'],'email'=>$request['email'],'userName'=>$request['userName']]);
        $user=DB::table('users')->where('id',$request->user()->id)->get();
         return response(
         ['user' => $user[0]],200);
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
        if($request->hasFile('image')) {
            $name = time()."_".$request->file('image')->getClientOriginalName();
            $request->file('image')->move(public_path('img'), $name);
        }
        DB::table('users')->where('id',$request->user()->id)->update(['avatar'=>$name]);
        return response()->json([
            asset("images/$name"),
            201,
            'message' => asset("images/$name") ? 'Image saved' : 'Image failed to save'
        ]);
    }
}
