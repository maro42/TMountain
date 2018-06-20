<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head profile="http://www.w3.org/2005/10/profile">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Creative - Bootstrap 3 Responsive Admin Template">
<meta name="author" content="GeeksLabs">
<meta name="keyword"
	content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
<link rel="icon" type="image/png" href="http://example.com/myicon.png">
<title>관리자 기본틀</title>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<!-- Bootstrap CSS -->
<link href="/TMountain/resource/corperation/css/bootstrap.min.css" rel="stylesheet">
<!-- bootstrap theme -->
<link href="/TMountain/resource/corperation/css/bootstrap-theme.css" rel="stylesheet">
<!--external css-->
<!-- font icon -->
<link href="/TMountain/resource/corperation/css/elegant-icons-style.css" rel="stylesheet" />
<link href="/TMountain/resource/corperation/css/font-awesome.min.css" rel="stylesheet" />
<!-- Custom styles -->
<link href="/TMountain/resource/corperation/css/style.css" rel='stylesheet'>
<link href="/TMountain/resource/corperation/css/widgets.css" rel='stylesheet'>
<link href="/TMountain/resource/corperation/css/style-responsive.css" rel="stylesheet" />
<link href="/TMountain/resource/corperation/css/jquery-ui-1.10.4.min.css" rel="stylesheet">
</head>

<body>
	<!-- container section start -->
	<section id="container" class="">

		<!-- 로고 -->
		<header class="header dark-bg">
			<div class="toggle-nav">
				<div class="icon-reorder tooltips"
					data-original-title="Toggle Navigation" data-placement="bottom">
					<i class="icon_menu"></i>
				</div>
			</div>
			<!--logo start-->
			<a href="go-mypage.tm" class="logo">티끌모아 태산</a>
			<!--logo end-->
			<div class="top-nav notification-row">
				<ul class="nav pull-right top-menu">
					<li>
						<a href="corp_main.tm">
							<i class="icon_close_alt2"></i>  Logout
	                    </a>
					</li>
				</ul>
			</div>
		</header>
		<!--header end-->

		<!--sidebar start-->
		<aside>
			<div id="sidebar" class="nav-collapse ">
				<!-- sidebar menu start-->
				<ul class="sidebar-menu">
					<li>
						<a class="" href="go-mypage.tm">
							<i class="icon_house_alt"></i> <span>내 정보</span>
						</a>
					</li>
					<li class="active">
						<a class="" href="go-monthHistory.tm">
							<i class="icon_desktop"></i> <span>월별 내역</span>
						</a>
					</li>
					<li class="sub-menu">
						<a href="javascript:;" class="" href="go-calHistory.tm">
							<i class="icon_genius"></i> <span>정산</span>
							<span class="menu-arrow arrow_carrot-right"></span>
						</a>
						<ul class="sub">
						<li><a class="" href="go-registerResult.tm">정산 내역</a></li>
						</ul>
					</li>
				</ul>
				<!-- sidebar menu end-->
			</div>
		</aside>
		<!--sidebar end-->

		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
				<div class="row">
					<div class="col-lg-12">
						<h3 class="page-header">
							<i class="fa fa-laptop"></i> Qna
						</h3>
						<ol class="breadcrumb">
							<li><i class="fa fa-home"></i><a href="go-mypage.tm">Home</a></li>
							<li><i class="fa fa-desktop"></i>Qna</li>
						</ol>
					</div>
				</div>
			</section>
		</section>
		<!--main content end-->
	</section>
	<!-- container section start -->

	<!-- javascripts -->
	<script src="/TMountain/resource/corperation/js/jquery.js"></script>
	<script src="/TMountain/resource/corperation/js/jquery-ui-1.10.4.min.js"></script>
	<script src="/TMountain/resource/corperation/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="/TMountain/resource/corperation/js/jquery-ui-1.9.2.custom.min.js"></script>

	<!-- bootstrap -->
	<script src="/TMountain/resource/corperation/js/bootstrap.min.js"></script>

	<!-- nice scroll -->
	<script src="/TMountain/resource/corperation/js/jquery.scrollTo.min.js"></script>
	<script src="/TMountain/resource/corperation/js/jquery.nicescroll.js" type="text/javascript"></script>

	<!-- charts scripts -->
	<script src="/TMountain/resource/corperation/js/jquery.sparkline.js"
		type="text/javascript"></script>
	<script src="/TMountain/resource/corperation/js/owl.carousel.js"></script>

	<!-- custom select -->
	<script src="/TMountain/resource/corperation/js/jquery.customSelect.min.js"></script>

	<!--custome script for all page-->
	<script src="/TMountain/resource/corperation/js/scripts.js"></script>


</body>
</html>