<?php

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


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/profile', 'FarmerController@create')->name('profile');

//Route for farmers
Route::resource('farmers','FarmerController');

//route for poc
Route::resource('poc','PocController');

//route for pocgroups
Route::resource('pocgroups','PocgroupController');

//route for stock
Route::resource('stocks','StockController');

//route for Empoyees
Route::resource('employees','EmployeeController');

//other routes
Route::post ('addvege','OtherController@addvege')->name('addvege');
Route::get ('vegeindex','OtherController@vegeindex')->name('vegeindex');