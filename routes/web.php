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

/*Route::get('/', function () {
    return view('welcome');
});*/
/*
prefix：路由分组
*/
//前台
Route::group(['namespace'=>'web'],function(){
	Route::get('/','MainController@home');
});

//后台
Route::group(['namespace'=>'Admin','prefix'=>'admin'],function(){
	Route::get('/','AdminController@login')->name('login');
});
