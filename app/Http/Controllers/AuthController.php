<?php

namespace App\Http\Controllers;

use App\Http\Controllers\MailController;
use App\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;

class AuthController extends Controller
{
    public function authFailed()
    {
        return response('aunthenticated, make sure the authorization is correct',401);
    }
    public function register(Request $request)
    {
    	$validator = Validator::make($request->all(),[
    		'username' => 'required|string|max:255',
    		'email' => 'required|string|unique:users|max:255',
    		'password' => 'required|string|max:255|min:6',
    		'user_type' => 'required|string|max:255',
    	]);
    	if ($validator->fails()) {
    		return response(['errors'=>$validator->errors()],422);
    	}
    	$user = new User();
    	$user->username = $request->username;
        $user->email = $request->email;
        $user->password =  bcrypt($request->password);
    	$user->user_type = $request->user_type;
        $user->verification_token = Str::random(8);
    	$user->save();
        if($user == null){
            MailController::sendSignupEmail($user->username,$user->email,$user->verification_token);
         return $this->getResponse($user);
    	}
    }
  public function login(Request $request)
    {
    	$validator = Validator::make($request->all(),[
    		'email' => 'required|string|email|max:255',
    		'password' => 'required|string|max:255',
    	]);
    	if ($validator->fails()) {
    		return response(['errors'=>$validator->errors()],422);
    	}

    	$credentials = \request(['email','password']);
    	if (Auth::attempt(['email' =>$request['email'],'password' => $request['password']])) {
    		$user =$request->user();
    		return $this->getResponse($user);
    	}
        else{
            return response("Invalid Credentials",401);
        }

    	}
    	public function logout(Request $request)
    	{
    	 $request->user()->token()->revoke();
    		return response('Sucessfully Logged Out',200);
    	}
    	public function user(Request $request)
    	{
        return response(['data'=>$request->user()],200);
    		 
    	}
private function getResponse(User $user)
{
    	$tokenResult = $user->createToken('Personal Access Token');
    	$token=$tokenResult->token;
    	$token->expires_at = Carbon::now()->addWeeks(1);
    	$token->save();
    	return response(
            ['user' => $user,
            'accessToken'=>$tokenResult->accessToken,
    		'tokenType'=>"Bearer",
    		'expiresAt'=>Carbon::parse($token->expires_at)->toDateTimeString()],200);

}
public function verifyUser(Request $request)
{
    $verification_token = $request->code;
    $user = User::where(['verification_token' => $verification_token])->first();
    if ($user != null) {
        $user->verified = 1;
        $user -> save();
    }
}
}
