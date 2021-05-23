<?php

namespace App\Notifications;

use App\Http\Controllers\TrackerController;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;

class OrderBooked extends Notification
{
    use Queueable;

    /**
     * Create a new notification instance.
     *
     * @return void
     */
    public function __construct($operation)
    {
        $this->operation = $operation;
    }

    /**
     * Get the notification's delivery channels.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function via($notifiable)
    {
        return ['fcm'];
    }


    /**
     * Get the array representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function toFcm($notifiable) 
{
    $message = new FcmMessage();
    $message->content([
        'title'        => 'Foo', 
        'body'         => 'Bar'
    ])->data([
        'param1' => 'baz' // Optional
    ])->priority(FcmMessage::PRIORITY_HIGH); // Optional - Default is 'normal'.
    
    return $message;
}
}
