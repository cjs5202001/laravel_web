<?php

namespace App\Http\Controllers\Web;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class MainController extends CommentController
{
    public function home()
    { 
    	$img = \App\Models\Img::all()->toArray();
    	$view = ['data'=>$img,'meta'=>$this->_meta('首页',1)];
    	return view('web.home', $view);
    }

    //解决方案
	public function plan()
	{
		$view = ['data'=>$data,'meta'=>$this->_meta('解决方案',2)];
		//$this->display('plan');
	}

	//关于我们
	public function about()
	{
		$view = ['data'=>$data,'meta'=>$this->_meta('关于我们',4)];
		//$this->display('about');
	}
}
