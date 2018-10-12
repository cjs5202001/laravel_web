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
	Route::get('/','MainController@home')->name('admin.login'); ;
	Route::post('/auth/login', 'MainController@login')->name('admin.auth'); //登录验证
	Route::get('/auth/logout','MainController@logout'); //退出登录
});

//后台
Route::group(['namespace'=>'Admin','prefix'=>'admin'],function(){
	Route::get('/','AdminController@login')->name('admin.login');
	Route::post('/auth/login', 'AdminController@login')->name('admin.auth'); //登录验证
});

//后台认证后才可以访问
// auth:admin admin是我们的模型,laravel默认是user
Route::group(['namespace'=>'Admin','prefix'=>'admin','middleware'=>'auth:admin'],function(){
	Route::get('/main','MainController@home')->name('admin.home');
	Route::resource('goods','GoodsController'); //restful 方式
});
