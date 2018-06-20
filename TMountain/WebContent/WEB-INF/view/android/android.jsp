<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>안드로이드 통신페이지</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");

String userId = request.getParameter("userId");

System.out.println("안드로이드랑 통신은 되는거니?");

if(userId.equals("maro")){
	out.print("통신완료");
}else{
	out.print("응 아니야");
}
%>
</body>
</html>