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
    		return view('admin.public.login');
    	}else{

    	}
    }
}
