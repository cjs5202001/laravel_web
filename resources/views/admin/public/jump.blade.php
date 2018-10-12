@extends('admin.public.top')
@section('body')
    <!-- Sidebar menu-->
 	@extends('admin.public.left')
  <main class="app-content">
      <div class="app-sidebar__overlay" data-toggle="sidebar"></div>
      <div class="app-title">
        <div>
          <h1><i class="fa fa-edit"></i> 系统信息</h1>
          <p>提示</p>
        </div>
        <ul class="app-breadcrumb breadcrumb">
          <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
          <li class="breadcrumb-item">系统信息</li>
          <li class="breadcrumb-item"><a href="#">提示</a></li>
        </ul>
      </div>
      <div class="row">
        <div class="col-md-12">
          <div class="tile">
        
            <div class="tile-body">
             <table width="100%" style="color:#666">
	<tr align="center" ><td class="">系统信息</td></tr>
	<tr align="center"><td <? if($start==1):?>style="color:#0000FF;"  <? else:?> style="color:#FF0000;" <? endif;?>><b><?=$data?></b></td></tr>
	<tr align="center"><td>如果您不做出选择，将在 3 秒后跳转到第一个链接地址。 <script type='text/javascript'>setTimeout("location.href='<?=$url?>'",1800);</script></td></tr>
	<tr align="center"><td><a href="<?=$url?>" style="text-decoration:underline;">返回</a></td></tr>
</table>
          </div>
        </div>
      
       
    </main>
   @include('admin.public.foot')
  </body>
</html>
@endsection