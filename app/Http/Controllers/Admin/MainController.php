<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class MainController extends CommentController
{
    public function home()
    {
    	return view('admin.public.home',['version'=>$this->version()]);
    }
}
