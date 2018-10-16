<?php

namespace App\Models;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Database\Eloquent\Model;

class Admin extends Authenticatable
{
    
    use Notifiable;

    protected $table = 'admin';
     
    protected $primaryKey = 'id';

    public $timestamps = false;

    protected $fillable = [
        'username', 'password',
    ];

   
    protected $hidden = [
        'password', //长度至少有60位
    ];

    public function getRememberTokenName()
    {
        return 'remember_token'; //字段长度为100，用于在登录时存储应用维护的“记住我” Session 令牌。
    }
}
