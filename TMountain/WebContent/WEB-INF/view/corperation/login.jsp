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
			<!--logo start-->
			<a href="adminMember.tm" class="logo">티끌모아 태산</a>
			<!--logo end-->
		</header>
		<!--header end-->

		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
				<div class="row">
					<div class="col-lg-12">
						<h3 class="page-header">
							<i class="fa fa-laptop"></i> 로그인
						</h3>
						<ol class="breadcrumb">
							<li><i class="fa fa-desktop"></i>로그인</li>
						</ol>
					</div>
				</div>
			</section>
		</section>
		<!--main content end-->
		
		<!-- login content -->
		<div class="container">
    <div class="card card-login mx-auto mt-5">
      <div class="card-body">
        <form role="form" action="go-mypage.tm" method="post">
          <div class="form-group">
            <label for="exampleInputEmail1">아이디</label>
            <input class="form-control" id="corpId" name="corpId" aria-describedby="emailHelp" placeholder="아이디를 입력하세요">
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">비밀번호</label>
            <input class="form-control" id="corpPass" name="corpPass" type="password" placeholder="비밀번호를 입력하세요">
          </div>
          <input type="submit" value="login" class="btn btn-primary btn-block"/>
        </form>
        <div class="text-center">
          <a class="d-block small mt-3" href="register.html">Register an Account</a>
          <a class="d-block small" href="forgot-password.html">Forgot Password?</a>
        </div>
      </div>
    </div>
  </div>
  <input type="hidden" id="login_fail" name="login_fail" value="${login_fail }"/>
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
	
	<script type="text/javascript">
		$(function(){
			if($('#login_fail').val() == 'fail'){
				alert("아이디와 비밀번호를 다시 확인해주세요");
			}
		});
	</script>

</body>
</html>