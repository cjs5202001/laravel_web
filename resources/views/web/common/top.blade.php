<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>{{ $meta['web_title'] }} </title>
	<meta name="description" content="{{ $meta['description'] }}" />
	<meta name="keywords" content="{{ $meta['keywords'] }}" />
	<link rel="stylesheet" href="{{ URL::asset('/css/reset.css') }}">
	<link rel="stylesheet" href="{{ URL::asset('/css/style.css') }}">
	<script type="text/javascript" src="{{ URL::asset('/js/jquery.js')  }}"></script>
	<script type="text/javascript" src="{{ URL::asset('/js/PicCarousel.js')  }}"></script>
</head>
<body>
	<div class="header">
		<div class="index_header">
			<div class="index_div">
				<img class="index_logo" src="{{ URL::asset('/images/logo.png') }}" alt="">
			
			</div>
		</div>
		<div class="index_nav">
			<div class="index_div">
				<ul class="index_nav_list">
					<li @if($meta['actCss']==1) class="active" @endif ><a href="/">首页</a></li>
				<li @if($meta['actCss']==2) class="active" @endif ><a href="/plan">解决方案</a></li>
				<li @if($meta['actCss']==3) class="active" @endif ><a href="/news">新闻中心</a></li>
				<li @if($meta['actCss']==4) class="active" @endif ><a href="/about">关于我们</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="hr_140"></div>
	@yield('body')