<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/css/bootstrap-select.min.css">
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
						<a href="logout.tm">
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
						<a href="javascript:;" class="">
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
							<i class="fa fa-laptop"></i> 월별 내역
						</h3>
						<ol class="breadcrumb">
							<li><i class="fa fa-desktop"></i>월별 내역</li>
						</ol>
					</div>
				</div>
			</section>
		</section>
		<!--main content end-->
	</section>
	<!-- container section start -->
	
	<div class="col-lg-6" align="center" style="margin-left: 25%">
	
	<div class="container" style="margin-top:15px">
    
    <div class="row">
        <form>
            <div class="col-xs-2 form-group">
                <label for="email">
                    <select id="yearSelection" class="selectpicker">
            		    <option data-expense="2018">2018</option>
            		    <option data-expense="2017">2017</option>
            		    <option data-expense="2016">2016</option>
            		</select>
        		</label>
            </div>
        </form>
		
	</div>
</div>
	
	<div class="container">
	<div class="row">  
        <ul role="tablist" class="nav nav-pills month" id="signup-in-form">
            <li role="tab" value="1"><a href="#1" id="client">1월</a></li>
            <li role="tab" value="2"><a href="#2" id="1">2월</a></li>
            <li role="tab"><a href="#3" id="3">3월</a></li>
            <li role="tab"><a href="#4" id="4">4월</a></li>
            <li role="tab"><a href="#5" id="5">5월</a></li>
            <li role="tab"><a href="#6" id="6">6월</a></li>
            <li role="tab"><a href="#7" id="7">7월</a></li>
            <li role="tab"><a href="#8" id="8">8월</a></li>
            <li role="tab"><a href="#9" id="9">9월</a></li>
            <li role="tab"><a href="#10" id="10">10월</a></li>
            <li role="tab"><a href="#11" id="11">11월</a></li>
            <li role="tab"><a href="#12" id="12">12월</a></li>
        </ul>
        
	</div>
	</div>
	
            <h2>월별 포인트 현황</h2>
            <div class="table-responsive">
              <table id="tbtb" class="table table-hover tablesorter">
                <thead>
                  <tr>
                    <td>포인트 사용일</td>
                    <td>아이디</td>
                    <td>사용포인트</td>
                  </tr>
                </thead>
                <tbody>
                <c:choose>
                	<c:when test="${month_list == null }">
                	<tr>
                	<td>
                	포인트 사용내역이 없습니다.
                	</td>
                	</tr>
                	</c:when>
                	<c:otherwise>
                		<c:forEach items="${month_list }" var="fl">
                			<tr>
                			<td>${fl.pointDate }</td>
                			<td>${fl.userId }</td>
                			<td>${fl.pointPoint }</td>
                			</tr>
                		</c:forEach>
                	</c:otherwise>
                </c:choose>
                </tbody>
                <tfoot>
                <tr>
                  <td></td>
                  <td></td>
                  <td>포인트합계</td>
                  <td id="sum">${sum }</td>
                </tr>
              </tfoot>
              </table>
            </div>
            
            
            <div class="dataTables_paginate paging_simple_numbers" id="dataTable_paginate" style="margin-left: 25%">
            	<ul class="pagination">
            		<li class="paginate_button page-item previous disabled" id="dataTable_previous">
            			<a href="#" aria-controls="dataTable" data-dt-idx="0" tableindex="0" class="page-link">Previous</a>
            		</li>
            		<li class="paginate_button page-item previous active" id="dataTable_previous">
            			<a href="#" aria-controls="dataTable" data-dt-idx="1" tableindex="0" class="page-link">1</a>
            		</li>
            		<li class="paginate_button page-item previous disabled" id="dataTable_previous">
            			<a href="#" aria-controls="dataTable" data-dt-idx="2" tableindex="0" class="page-link">Next</a>
            		</li>
            	</ul>
            </div>
          </div>
          
          <!-- 정산 신청할 때 해당 월의 정보를 넘겨주기 -->
          <form action="go-register.tm" method='post' id="goCal" name="goCal">
          	<input type="hidden" name="hiddenMonth" id="hiddenMonth" value=""/>
          	<input type="hidden" name="hiddenYear" id="hiddenYear" value=""/>
          	<input type="button" class="btn btn-primary" value="정산신청하기" id="submit_btn"/>
          </form>

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
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/bootstrap-select.min.js"></script>

<script type="text/javascript">
	$(function(){
		
		var month=6, year2 = $('#yearSelection').find(':selected').data('expense');
		
		var date = {"year":year2,"month":month};
		
		$("#submit_btn").click(function(){
			
			var frm = $("#goCal");
			$("#hiddenMonth").val(month);
			$("#hiddenYear").val(year2);
			frm.submit();
		});
		
		
		
		$('#signup-in-form a').click(function (e) {
			  e.preventDefault()	//탭 눌렀을 때 상단으로 페이지가 이동하는 것을 방지
			  $(this).tab('show');
			  
			  month = $('#signup-in-form a').index(this)+1;
			  
			  $.ajax({
		      		url : "select-date.tm",
		      		type:"post",
		    	  	contentType: "application/json",
		    	   data : JSON.stringify(date),
		    	   success : function(data){
		    		   
		    		   var list = data.list;
		    		   
		    		   var pointDate = [];
		    		   var pointPoint = [];
		    		   var userId = [];
		    		   for(var i=0; i<list.length; i++){
		    			   pointDate[i] = list[i].pointDate;
		    			   pointPoint[i] = list[i].pointPoint;
		    			   userId[i] = list[i].userId;
		    		   }
		    		   var sum = data.sum;
		    		   
		    		   //테이블 요소들 생성
		    		   
		    		   $('#tbtb').remove();
		    		   
		    		   var tb = $("#tbtb");
		    		   var tr = $("tr");
		    		   var td1 = $("td");
		    		   var td2 = $("td");
		    		   var td3 = $("td");
		    		   
		    		 //  for(var i=0; i<pointDate.length;i++){
		    		   
		    		 	//th요소에 다음 요소들을 붙인다
		    			 td1.append(pointDate[0]);
		    			 td2.append(userId[0]);
		    			 td3.append(pointPoint[0]);
		    			 
		    			 //tr에 tb를 붙인다
		    			 td1.appendTo(tr);
		    			 td2.appendTo(tr);
		    			 td3.appendTo(tr);

		    			 tr.appendTo(tb);
		    		//   }
		    		   
		    		   var th4 = $("td");
		    		   th4.append(sum);
		    		   th4.appendTo(tr);
		    		   tr.appendTo(tb)
		    	   },
		    	   error : function(xhr, status, error){
		    		   alert("code:"+status+"\n"+"\n"+"error:"+error);
		    	   }
		       });
			});
		
		 $('#yearSelection').change(function(){
		        
		       var selected = $(this).find(':selected');
		       var year = selected.data('expense');
				
  		      	 $.ajax({
  		      		url : "select-date.tm",
  		      		type:"post",
 		    	  	contentType: "application/json",
		    	   data : JSON.stringify(date),
		    	   success : function(data){
		    		   
		    		   var list = data.list;
		    		   
		    		   var pointDate = [];
		    		   var pointPoint = [];
		    		   var userId = [];
		    		   for(var i=0; i<list.length; i++){
		    			   pointDate[i] = list[i].pointDate;
		    			   pointPoint[i] = list[i].pointPoint;
		    			   userId[i] = list[i].userId;
		    		   }
		    		   var sum = data.sum;
		    		   
		    		   //테이블 요소들 생성
		    		   
		    		   $('#tbtb').remove();
		    		   
		    		   var tb = $("#tbtb");
		    		   var tr = $("tr");
		    		   var td1 = $("td");
		    		   var td2 = $("td");
		    		   var td3 = $("td");
		    		   
		    		 //  for(var i=0; i<pointDate.length;i++){
		    		   
		    		 	//th요소에 다음 요소들을 붙인다
		    			 td1.append(pointDate[0]);
		    			 td2.append(userId[0]);
		    			 td3.append(pointPoint[0]);
		    			 
		    			 //tr에 tb를 붙인다
		    			 td1.appendTo(tr);
		    			 td2.appendTo(tr);
		    			 td3.appendTo(tr);

		    			 tr.appendTo(tb);
		    		//   }
		    		   
		    		   var th4 = $("td");
		    		   th4.append(sum);
		    		   th4.appendTo(tr);
		    		   tr.appendTo(tb)
		    	   },
		    	   error : function(xhr, status, error){
		    		   alert("code:"+status+"\n"+"\n"+"error:"+error);
		    	   }
		       });
 		       
		    });
	});
</script>

</body>
</html>