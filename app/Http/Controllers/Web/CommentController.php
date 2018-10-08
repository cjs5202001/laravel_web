<?php

namespace App\Http\Controllers\Web;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class CommentController extends Controller
{
    public function _meta($title,$actCss)
	{
		return [
				'web_title'=>config('global.web_title').'——'.$title,
				'description' =>config('global.description'),
				'keywords'=>config('global.keywords'),
				'actCss'=>$actCss
		];
	}
}
