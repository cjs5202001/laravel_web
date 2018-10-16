<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;

class AdminController extends CommentController
{
    public function login(request $re)
    {
    	if($re->isMethod('get')){
    		if(Auth::guard('admin')->check()){ //已登录跳转
				return redirect('/admin/main');
			}else{ 
				return view('admin.public.login'); //未登录显示登录界面
			}
    	}else{// POST操作，登录验证
    		//$credentials = $re->only('username', 'password');
    		//echo \Hash::make($re->password);
    		if(Auth::guard('admin')->attempt(['username' => $re->username, 'password' => $re->password])){ //验证成功
    			$this->_loginJson(200);
    			//$user = Auth::guard('admin')->user(); //获取当前认证用户
    			//Auth::login($user); //登录
    			// 获取当前认证用户的ID...
				//$id = Auth::guard('admin')->id();
    		}else{ //验证未通过
    			$this->_loginJson(403);
    		}
			
    		print_r($user);	print_r($id);
    	}
    }
}
