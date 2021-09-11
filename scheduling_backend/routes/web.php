<?php

use App\Http\Controllers\BookingController;
use Illuminate\Support\Facades\Route;
use App\Models\Booking;
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

Route::get('/', function () {
    return view('welcome');
});
Route::get('/bok', function(){
    $bookingData = Booking::all();
    $bookingData->user->id;
    return response()->json($bookingData);  
});
Route::get('bookings', 'BookingController@index');