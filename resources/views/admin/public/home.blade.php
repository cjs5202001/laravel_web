@extends('admin.public.top')
@section('body')
    <!-- Sidebar menu-->
 	@extends('admin.public.left')
    <main class="app-content">
      <div class="app-sidebar__overlay" data-toggle="sidebar"></div>
      <div class="app-title">
        <div>
          <h1><i class="fa fa-th-list"></i> 首页</h1>
          <p>系统信息</p>
        </div>
        <ul class="app-breadcrumb breadcrumb">
          <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
          <li class="breadcrumb-item">首页</li>
          <li class="breadcrumb-item active"><a href="#">系统信息</a></li>
        </ul>
      </div>
      <div class="row">
        <div class="col-md-12">
          <div class="tile">
            <h3 class="tile-title">系统信息</h3>
          <table class="table table-bordered table-hover" width="100%" style="color:#666" class="bor">
	
		<tr height="35">
		<td>&nbsp;<strong>服务器操作系统:</strong></td>
		<td>&nbsp;WINNT(<?=$_SERVER['SERVER_ADDR']?>)</td>
		<td>&nbsp;<strong>Web 服务器:</strong></td>
		<td>&nbsp;<?=$_SERVER['SERVER_SOFTWARE']?></td>
	</tr>
	<tr height="35">
		<td>&nbsp;<strong>PHP版本:</strong></td>
		<td>&nbsp;<?=PHP_VERSION?></td>
		<td>&nbsp;<strong>数据库:</strong></td>
		<td>&nbsp;{{ $version }}</td>
	</tr>
	<tr height="35">
		<td>&nbsp;<strong>程序编码:</strong></td>
		<td>&nbsp;UTF-8</td>
		<td>&nbsp;<strong>数据库编码:</strong></td>
		<td>&nbsp;UTF-8</td>
	</tr>
	<tr height="35">
		<td>&nbsp;<strong>文件上传最大:</strong></td>
		<td>&nbsp;<?=ini_get('upload_max_filesize')?></td>
		<td>&nbsp;<strong>当前时间:</strong></td>
		<td>&nbsp;<?=date('Y-m-d H:i:s',time());?></td>
	</tr>
</table>
          </div>
        </div>
      </div>
    </main>
   @include('admin.public.foot')
  </body>
</html>
@endsection