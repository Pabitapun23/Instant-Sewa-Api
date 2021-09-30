<?php
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
Route::get('search','SearchController@Search');
Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

    Route::prefix('auth')->group(function(){
	Route::post('/register','AuthController@register');
	Route::post('/login','AuthController@login');
	Route::get('/logout','AuthController@logout')->middleware('auth:api');
	Route::get('/user','AuthController@user')->middleware('auth:api');
	Route::post('/verify','AuthController@verifyUser');
	Route::get('/resend','AuthController@resend')->middleware('auth:api');
	Route::get('authentication-failed','AuthController@authFailed')->name('auth-failed');
});
Route::group(['middleware'=>'auth:api'],function(){
Route::get('/notification','NotificationController@Notify');
Route::get('/deleteMyNotification','NotificationController@deleteAllNotification');
Route::post('/deleteNotification','NotificationController@deleteNotification');
Route::post('/readNotification','NotificationController@readNotification');
Route::resource('category','CategoryController');
Route::get('categoryName','CategoryController@categoryName');
Route::resource('subcategory','SubCategoryController');
Route::post('subcategoryfinder','SubCategoryController@subCategoryFinder');
Route::resource('category.subcategory','CategorySubCategoryController');
Route::resource('subcategory.service','SubCategoryServiceController');
Route::resource('service','ServiceController');
Route::resource('serviceprovider','ServiceProviderController');
Route::resource('favourite','FavouriteController');
Route::post('ongoingtracker','TrackerController@OngoingTracker');
Route::post('completedtracker','TrackerController@CompletedTracker');
Route::post('canceledtracker','TrackerController@CancelledTracker');
Route::resource('book','OperationController');
Route::resource('rateandreview','RateAndReviewController');
Route::resource('cartgroup','CartGroupController');
Route::resource('cart','CartController');
Route::resource('serviceuser.favourite','ServiceUserFavouriteController',['only'=>['index']]);
Route::post('checker','FavouriteCheckerController@isAvailable');
Route::post('deleteFavourite','FavouriteCheckerController@deleteFavourite');
Route::post('fullnameUpdate','ServiceUserUpdate@updateFullName');
Route::post('deviceTokenUpdate','ServiceUserUpdate@updateDeviceToken');
Route::post('addressUpdate','ServiceUserUpdate@updateAddress');
Route::post('phoneNoUpdate','ServiceUserUpdate@updatePhoneNo');
Route::post('profileimageupdate','ServiceUserUpdate@updateProfilePicture');
Route::post('employeeVerify','ServiceUserUpdate@employeeVerify');
Route::post('profileupdate','ServiceUserUpdate@updateProfile');
Route::post('serviceproviderselectionbydistance','ServiceProviderSelectionController@serviceProviderselectionListByDistance');
Route::post('serviceproviderselectionbyrating','ServiceProviderSelectionController@serviceProviderselectionListByRate');
Route::post('favserviceproviderselection','ServiceProviderSelectionController@favouriteServiceProviderselectionListByDistance');
Route::post('serviceselection','ServiceProviderSelectionController@serviceSelectionList');
Route::post('subcategoryImageFinder', 'SubCategoryController@subCategoryImageFinder');
});
Route::group(['middleware'=>['auth:api','serviceprovider']],function(){
Route::post('providerongoingtracker','TrackerController@ProviderOngoingTracker');
Route::post('providercompletedtracker','TrackerController@ProviderCompletedTracker');
Route::post('providercancelledtracker','TrackerController@ProviderCancelledTracker');
Route::post('bookstatuschanged','StatusChangedController@BookFlagChanged');
Route::post('ongoingstatuschanged','StatusChangedController@StartFlagChanged');
Route::post('completedstatuschanged','StatusChangedController@CompletedFlagChanged');
Route::post('paymentstatuschanged','StatusChangedController@PaymentFlagChanged');
Route::resource('serviceChooser','SubCategoryServiceProviderController');
Route::post('serviceChecker','SubCategoryServiceProviderController@ServiceCount');
});
