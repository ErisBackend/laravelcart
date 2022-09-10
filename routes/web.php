<?php

// Toko Controller

use App\Http\Controllers\CartController;

Route::get('/','TokoController@index');
Route::get('thanks','TokoController@thanks');
Route::get('toko','TokoController@product');
Route::get('beli/{id}','TokoController@show');
// Route::get('home','TokoController@show');

// Route::resource('/cart',[CartController::class,'store']);



Route::resource('cart','CartController');
Route::resource('/checkout','CheckoutController');
Route::resource('/myaccount','AccountController');


Route::auth();