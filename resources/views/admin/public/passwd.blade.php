@extends('admin.public.top')
@section('body')
    <!-- Sidebar menu-->
 	@extends('admin.public.left')
  <main class="app-content">
      <div class="app-sidebar__overlay" data-toggle="sidebar"></div>
      <div class="app-title">
        <div>
          <h1><i class="fa fa-edit"></i> 基本设置</h1>
          <p>修改密码</p>
        </div>
        <ul class="app-breadcrumb breadcrumb">
          <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
          <li class="breadcrumb-item">基本设置</li>
          <li class="breadcrumb-item"><a href="#">修改密码</a></li>
        </ul>
      </div>
      <div class="row">
        <div class="col-md-12">
          <div class="tile">
            <h3 class="tile-title">请慎重填写以下信息</h3>
            <div class="tile-body">
              <form name="my" id="my" method="post" action="{{ route('setpassword') }}">
			  {!! csrf_field() !!}
                <div class="form-group">
                  <label class="control-label">原密码</label>
                  <input class="form-control"  type="password" name="passwordOld" style="width:200px;">
                </div>
                <div class="form-group">
                  <label class="control-label">新密码</label>
                  <input class="form-control" type="password" name="passwordNew" style="width:200px;">
                </div>
                <div class="form-group">
                  <label class="control-label">确认密码</label>
                  <input class="form-control" type="password" name="passwordNew_confirmation" style="width:200px;">
                </div>
            
             @if ($errors->any())
			 <p style="color:#FF0000;">{{ $errors->first() }}</p>
			 @endif
  
            </div>
            <div class="tile-footer">
              <button class="btn btn-primary" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>提交</button>&nbsp;&nbsp;&nbsp;
			  <button class="btn btn-secondary" type="reset"><i class="fa fa-fw fa-lg fa-times-circle"></i>重置
			 
            </div> 
			</form>
          </div>
        </div>
      
       
    </main>
   @include('admin.public.foot')
  </body>
</html>
@endsection