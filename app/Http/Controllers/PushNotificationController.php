<?php

namespace App\Http\Controllers;

use App\Models\PushNotification;
use App\Models\User;
use Illuminate\Http\Request;

class PushNotificationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $push_notifications = PushNotification::orderBy('created_at', 'desc')->get();
        return view('notification.index', compact('push_notifications'));
    }
    public function bulksend(Request $req)
    {
        $comment = new PushNotification();
        $comment->title = $req->input('title');
        $comment->body = $req->input('body');
        $comment->img = $req->input('img');
        $comment->save();
        $url = 'https://fcm.googleapis.com/fcm/send';
        $dataArr = array('click_action' => 'FLUTTER_NOTIFICATION_CLICK', 'id' => $req->id, 'status' => "done");
        $notification = array('title' => $req->title, 'text' => $req->body, 'image' => $req->img, 'sound' => 'default', 'badge' => '1',);
        $arrayToSend = array('to' => "/topics/all", 'notification' => $notification, 'data' => $dataArr, 'priority' => 'high');
        $fields = json_encode($arrayToSend);
        $headers = array(
            'Authorization: key=' . "AAAAkmnCQwg:APA91bF190tv-jCbS9o-OtR19KL9XVMqyXNsRAXss_m0esPapEyEIQcWOIJEnqdDzx8xGLApyxZSvq0TSXq4nlGjxAc28fesb6ZQzk2E5Qcn0INh9Y-zTAxYF7mNyNdVwIDwL6b8NmYe",
            'Content-Type: application/json'
        );
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $fields);
        $result = curl_exec($ch);
        //var_dump($result);
        curl_close($ch);
        return redirect()->back()->with('success', 'Notification Send successfully');
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('notification.create');
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\PushNotification  $pushNotification
     * @return \Illuminate\Http\Response
     */
    public function destroy(PushNotification $pushNotification)
    {
        //
    }
     public static function sendNotification(User $user,$title,$body)
    {
        $firebaseToken = $user->device_token;
          
         $SERVER_API_KEY = 'AAAA6lphLNU:APA91bGEKIAsHdwUCpZrupnS8h-TSa06La1muEYeaVHHuNKcpMC8MF-1UOqc5U9neD2mBo_jKycDLLDpKyMcBKUWirrPcFBedwTOxDNXQnEANHzLbXTaKd9zIig9oQXd_9DHTPc5us6W';
  
         $data = [
            "id" => '1',
        //"click_action" => 'FLUTTER_NOTIFICATION_CLICK',
            "notification" => [
              "title" => $title,
            "body" => $body,  
             ]
         ];
        $dataString = json_encode($data);
    
     $headers = [
            'Authorization: key=' . $SERVER_API_KEY,
            'Content-Type: application/json',
         ];
    
        $ch = curl_init();
      
         curl_setopt($ch, CURLOPT_URL, 'https://fcm.googleapis.com/fcm/send');
         curl_setopt($ch, CURLOPT_POST, true);
         curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
         curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
         curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $dataString);
               
         $response = curl_exec($ch);
         return $response;
    }
}
