<?php

namespace App\Notifications;

use App\Http\Controllers\TrackerController;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;

class CashPaymentCancelled extends Notification
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
        return ['database'];
    }


    /**
     * Get the array representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function toDatabase($notifiable)
    {
        $cart_name =TrackerController::CartCollectionName($this->operation->cart_collection_id);
        return[
            "title" => 'Cash Request Cancelled',
            "body" =>"Order ".$cart_name."'s cash request Cancelled by user",
            
        ];
    }
}
