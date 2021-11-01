<?php

namespace App\Http\Controllers;

use App\Mail\VerifyMail;
use App\Models\RateAndReview;
use App\Models\Transaction;
use App\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;
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
        $user->verification_token = rand(10000,99999);
    	$user->save();
        if($user->user_type == "ServiceProvider"){
            $transaction = new  Transaction();
            $transaction->service_provider_id = $user->id;
            $transaction->save();
            $rateAndReview = new RateAndReview();
            $rateAndReview->rating  = 3.5;
            $rateAndReview->service_provider_id  = $user->id;
            $rateAndReview->reviews  = 'Good Luck';
            $rateAndReview->service_user_id  = 1;
            $rateAndReview->save();
        }
        if($user != null){
            Mail::to($user->email)->send(new VerifyMail($user));
    	}
         return $this->getResponse($user);
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
     $rules = [
            'verification_token' =>'required',
        ];
    $user = User::where(['verification_token' => $request['verification_token']])->firstorFail();
        $user->verified = true;
        $user->verification_token = null;

        $user -> save();

        return  response(['message'=>'The account '.$user->username.' has been verified sucessfully'],200);
}

public function resend(Request $request)
{
    $user = $request->user();
    if($user->verified = true)
    {
        return  response(['error'=>'User is already verified'],409);
    }
    $user->verification_token = Str::random(8);
    
     MailController::sendSignupEmail($user->username,$user->email,$user->verification_token);
 return  response(['message'=>'The account '.$user->username.' has been sent verification code in mail'],200);    
}
}
