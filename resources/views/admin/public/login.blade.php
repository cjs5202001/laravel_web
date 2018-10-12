<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="{{ URL::asset('admins/css/main.css') }}">
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css" href="{{ URL::asset('admins/css/font-awesome.min.css') }}">
	<style type="text/css">
	.onError{ color:#FF0000;}
	.onSuccess{ color:#009688;}
	</style>
	<script src="{{ URL::asset('admins/js/jquery-3.2.1.min.js') }}"></script>
    <title>后台管理系统</title>
	<script type="text/javascript">
	$(document).ready(function(){
		$('form :input').blur(function(){
			var $parent = $(this).parent();
			$parent.find(".formtips").remove();
			
			//开始验证
            if( $(this).is('#username') ){
				if($.trim(this.value)==''){
					var errorMsg ='请填写用户名';
					$parent.append('<span class="formtips onError">'+errorMsg+'</span>');
				} else {
					var okMsg = '输入正确';
					$parent.append('<span class="formtips onSuccess">'+okMsg+'</span>');
				}
				
			}
			 if( $(this).is('#password') ){
				if($.trim(this.value)==''){
					var errorMsg ='请填写密码';
					$parent.append('<span class="formtips onError">'+errorMsg+'</span>');
				} else {
					var okMsg = '输入正确';
					$parent.append('<span class="formtips onSuccess">'+okMsg+'</span>');
				}
				
			}

		})
		
			//提交，最终验证。
		 $('#send').click(function(){
				$("form :input.required").trigger('blur');
				var numError = $('form .onError').length;
				if(numError){
					return false;
				} 
				init()
				
		 });
	})
	
	function init()
	{
		var username = document.getElementById('username').value;
		var password = document.getElementById('password').value; 
		var _token = document.getElementById('_token').value;
		$.ajax({
			type:"POST",
			dateType:"json",
			url:"{{ route('admin.auth') }}",
			data:{"username":username,"password":password,"_token":_token},
			async:false,
			success:function(data)
			{
				if(data.status==200){
					location.href="{{ route('admin.home') }}";
				}else{
					$(".onSuccess").remove();
					$("#password").after('<span class="formtips onError">用户名或密码不正确</span>');
				}
			}
		})
	}
	</script>
  </head>
  <body>
    <section class="material-half-bg">
      <div class="cover"></div>
    </section>
    <section class="login-content">
     <!-- <div class="logo">
        <h1>Vali</h1>
      </div>-->
      <div class="login-box">
        <form class="login-form" method="post">
		
		<input type="hidden" name="_token" id="_token" value="{{ csrf_token() }}"
          <h3 class="login-head"><i class="fa-lg fa-fw"></i>后台管理系统</h3>
          <div class="form-group">
           <!-- <label class="control-label">USERNAME</label>-->
            <input class="form-control required" type="text" name="username" id="username" placeholder="用户名" autofocus>
          </div>
          <div class="form-group">
           <!--  <label class="control-label">PASSWORD</label>-->
            <input class="form-control required" type="password" name="password" id="password" placeholder="密码">
          </div>
		  
		  
		  
          <div class="form-group">
          <div class="form-group btn-container">
            <b class="btn btn-primary btn-block" id="send"><i class="fa-lg fa-fw"></i>登录</b>
          </div>
        </form>
      </div>
    </section>
  </body>
  <!-- Essential javascripts for application to work-->
  
  <script src="{{ URL::asset('admins/js/popper.min.js') }}"></script>
  <script src="{{ URL::asset('admins/js/bootstrap.min.js') }}"></script>
  <script src="{{ URL::asset('admins/js/main.js') }}"></script>
  <!-- The javascript plugin to display page loading on top-->
  <!-- <script src="{{ URL::asset('admins/js/pace.min.js') }}"></script>-->
</html>
