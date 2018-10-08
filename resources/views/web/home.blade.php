@extends('web.common.top')
@section('body')
<div class="content">
	<div class="index_pic">
		<div class="poster-main B_Demo">
			<div class="poster-btn poster-prev-btn"></div>
			<ul class="poster-list">
			@foreach($data as $key=>$val)
			<li class="poster-item"><a href="#"><img src="temp/{{ URL('/storage/'.$val['name']) }}" width="100%" ></a></li>
			@endforeach
			</ul>
			<div class="poster-btn poster-next-btn"></div>
		</div>
	</div>

		<div class="home_news">
		<div class="index_div">
			<div class="Business_Introduction">
				<div class="title">重点业务</div>
				<p><strong>（一）支撑深圳市政府、南山区政府开展军民融合工作</strong><br /><br /><span class="xi">目前主要是配合国防科工局经济技术发展中心、南山区政府、市科工办开展国家<br />国防科技工业军民融合创新示范基地建设方案论证和筹备工作。</span></p>
				<p><strong>（二）开展国家军民融合重点领域国防科技、装备建设项目技术、产品、产业引入孵化</strong><br /><br /><span class="xi">前期已经引进落地建设的重大军工项目包括：高精度惯导系统、微波制导与对抗、<br />SiPESC数值仿真软件平台、制导一体化芯片、新一代单兵综合信息作战终端、卫星物联网等。</span></p>
				<p><strong>（三）开展军民融合创新载体建设</strong><br /><br /><span class="xi">在深圳布局国家级国防重点实验室、工程技术（研究）中心国家级北斗及物联网测试<br />认证中心等军民融合研究机构及行业公共服务平台。</span></p>
			</div>
		</div>
	</div>
	</div>
	<script type="text/javascript">
$(function(){
	$(window).resize(function(){
    var demo_width = $(window).width()-250;
	$(".B_Demo").PicCarousel({
	"width":demo_width,		//幻灯片的宽度
	"height":560,		//幻灯片的高度
	"posterWidth":1100,	//幻灯片第一帧的宽度
	"posterHeight":560, //幻灯片第一张的高度
	"scale":0.6,		//记录显示比例关系
	"speed":3000,		//记录幻灯片滚动速度
	"autoPlay":true,	//是否开启自动播放
	"delay":1000,		//自动播放间隔
	});
});
$(window).resize();
$('.index_nav_list li').on('click',function(){
	$('.index_nav_list').find('li').removeClass('active');
	$(this).addClass("active");
});
});
</script>
@include('web.common.foot')
@endsection
