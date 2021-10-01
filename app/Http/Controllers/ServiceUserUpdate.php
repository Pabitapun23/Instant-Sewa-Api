<?php

namespace App\Http\Controllers;

use App\Models\Address;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
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

    public function employeeVerify(Request $request)
    {
        $rules = [
            'id' => 'required',
            'email' => 'required|string|max:255',
             'category' => 'required',
        ];
        $this->validate($request, $rules);
        if (DB::table('users')->where('id','=',$request['id'])->where('email','=',$request['email'])->where('user_type','=','ServiceProvider')->exists()) 
         {
          $subcategories = DB::table('sub_category_service_providers')->where('service_provider_id',$request['id'])->get()->pluck('subcategories_id');
          $category = DB::table('sub_categories')->whereIn('id',$subcategories)->get()->unique('category_id')->pluck('category_id');
          $category_name =  DB::table('categories')->whereIn('id',$category)->get()->unique('name')->pluck('name');
          $count=count($category_name);
          $found = 0 ;
          for($i=0;$i<$count;$i++)
         {
            if($request['category'] == $category_name[$i])
            {
                $found++;
            }
         }
         if($found == 1){
         return response(
             ['data' => $request['id']],200);
         }
         else {
            return response(
             ['data' => 'false'],200);
         }
          
        }
         else {
            return response(
             ['data' => 'false'],200);
         }
    }
}
