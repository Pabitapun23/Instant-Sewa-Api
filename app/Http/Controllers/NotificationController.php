<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class NotificationController extends Controller
{
     public function Notify(Request $request)
    {
    	$user = User::find($request->user()->id);
    	foreach ($user->notifications as $notification) {
		return $notification;
	}
    }
}
