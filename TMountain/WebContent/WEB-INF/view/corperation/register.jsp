<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
<title>관리자 기본틀</title>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
 <!-- Bootstrap core CSS-->
  <link href="/TMountain/resource/corperation/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="/TMountain/resource/corperation/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">
</head>

<body class="bg-dark">
	<div class="container">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header">정산신청</div>
      <div class="card-body">
        <form action="register-go-registerResult.tm" method="post">
          <div class="form-group">
          	<label for="exampleInputEmail1">${year }</label><label for="exampleInputEmail1">년</label>
            <label for="exampleInputEmail1">${month }</label><label for="exampleInputEmail1">월 적립 포인트</label>
            <input type="hidden" name="year" value="${year}">
            <input type="hidden" name="month" value="${month}">
            <input class="form-control" id="exampleInputEmail1" type="text" aria-describedby="emailHelp" name="calPoint" value="${calData.sumPoint }" readOnly >
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">신청업체</label>
            <input class="form-control" id="exampleInputPassword1" name="corpName" type="text" value="${calData.corpName }" readOnly>
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">기타 문의</label>
            <input class="form-control" id="exampleInputPassword1" type="text" name="calAsk">
          </div>
          <input type="submit" class="btn btn-primary btn-block" value="신청">
          <a class="btn btn-primary btn-block" href="go-monthHistory.tm">취소</a>
        </form>
      </div>
    </div>
  </div>

	<!-- Bootstrap core JavaScript-->
  <script src="/TMountain/resource/corperation/vendor/jquery/jquery.min.js"></script>
  <script src="/TMountain/resource/corperation/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Core plugin JavaScript-->
  <script src="/TMountain/resource/corperation/vendor/jquery-easing/jquery.easing.min.js"></script>


</body>
</html>