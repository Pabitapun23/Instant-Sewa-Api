<?php

namespace App\Http\Controllers;

use App\Models\Notification;
use App\Models\User;
use Illuminate\Http\Request;
use Carbon\Carbon;

class NotificationController extends Controller
{
     public function Notify(Request $request)
    {
    	$user = User::find($request->user()->id);
      return $user->notifications;
    }
     public function deleteAllNotification(Request $request)
    {
        $notifications = Notification::where('notifiable_id',$request->user()->id)->delete();
    }
     public function deleteNotification(Request $request)
    {
        $rules = [
            'notification_id' => 'required',
        ];
        $this->validate($request, $rules);
        $notifications = Notification::where('id',$request['notification_id'])->delete();
    }
     public function readNotification(Request $request)
    {
        $rules = [
            'notification_id' => 'required',
        ];
        $this->validate($request, $rules);
        $notifications = Notification::where('id',$request['notification_id'])->update(['read_at' => Carbon::now()]);
    }
    public static function send($device_token,$title,$body)
    {
       $url = "https://fcm.googleapis.com/fcm/send";
    $token = $device_token;
    $serverKey = 'AAAAkmnCQwg:APA91bF190tv-jCbS9o-OtR19KL9XVMqyXNsRAXss_m0esPapEyEIQcWOIJEnqdDzx8xGLApyxZSvq0TSXq4nlGjxAc28fesb6ZQzk2E5Qcn0INh9Y-zTAxYF7mNyNdVwIDwL6b8NmYe';
    $title = $title;
    $body = $body;
    $notification = array('title' =>$title , 'body' => $body, 'click_action' => "FLUTTER_NOTIFICATION_CLICK",'sound' => 'default', 'badge' => '1');
    $arrayToSend = array('to' => $token, 'notification' => $notification,'priority'=>'high');
    $json = json_encode($arrayToSend);
    $headers = array();
    $headers[] = 'Content-Type: application/json';
    $headers[] = 'Authorization: key='. $serverKey;
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_CUSTOMREQUEST,"POST");
    curl_setopt($ch, CURLOPT_POSTFIELDS, $json);
    curl_setopt($ch, CURLOPT_HTTPHEADER,$headers);
    //Send the request
    $response = curl_exec($ch);
    //Close request
    if ($response === FALSE) {
    die('FCM Send Error: ' . curl_error($ch));
    }
    curl_close($ch);
    }
}
