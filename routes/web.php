<?php

use App\Http\Controllers\PushNotificationController;
use App\Mail\NewUserNotification;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/



Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('/khalti/{cartName}/{total}', function ($cartName,$payment) {
    return view('khaltipayment',['payment'=>$payment,'cartName'=>$cartName]);
});
Route::get('/', function () {
    return view('welcome');
});
// Notification Controllers
Route::post('send', [PushNotificationController::class, 'bulksend'])->name('bulksend');
Route::get('all-notifications', [PushNotificationController::class, 'index']);
Route::get('get-notification-form', [PushNotificationController::class, 'create']);
Route::get('payment/{cartName}/{total}', 'PayPalController@payment')->name('payment');
Route::get('cancel', 'PayPalController@cancel')->name('payment.cancel');
Route::get('payment/success', 'PayPalController@success')->name('payment.success');
Route::get('recharge/{userId}/{total}', 'RechargeController@payment')->name('recharge');
Route::get('cancel', 'RechargeController@cancel')->name('recharge.cancel');
Route::get('recharge/success', 'RechargeController@success')->name('recharge.success');
Route::post('/verification', [App\Http\Controllers\KhaltiPaymentController::class, 'verification'])->name('verification');

