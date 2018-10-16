<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class CommentController extends Controller
{
    private function _loginJson($status)
    {
    	if($status==403){
    		$info = '用户名或者密码不正确';
    	}else{
    		$status = 200;
    		$info = '登录成功';
    	}
    	$data = [
        	'status' => $status,
            'info' => $info,
        ];
        return response()->json($data);
    }

    protected function version()
    {
    	$info = \Illuminate\Support\Facades\DB::selectOne("select version() as v;");
    	return $info->v;
    }
}
