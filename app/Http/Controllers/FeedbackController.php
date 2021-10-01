<?php

namespace App\Http\Controllers;

use App\Http\Controllers\NotificationController;
use App\Models\Feedback;
use App\Notifications\FeedBackRegister;
use Illuminate\Http\Request;

class FeedbackController extends Controller
{
    public function index()
    {
        //
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
         $rules = [
            'feedback' => 'required',
        ];

        $this->validate($request, $rules);

       $feedback = new Feedback();
        $feedback->feedback = $request['feedback'];
        $feedback->user_id = $request->user()->id;
        $feedback->save();
        $title = 'Order Cancelled';
        $body = "Your FeedBack  is register.";
        NotificationController::send($request->user()->device_token,$title,$body);
        $request->user()->notify(new FeedBackRegister());
        return $feedback;
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Favourite  $favourite
     * @return \Illuminate\Http\Response
     */
    public function show(Favourite $favourite)
    {
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Favourite  $favourite
     * @return \Illuminate\Http\Response
     */
    public function edit(Favourite $favourite)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Favourite  $favourite
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Favourite $favourite)
    {
        //
    }
}
