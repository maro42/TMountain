<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�ȵ���̵� ���������</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");

String userId = request.getParameter("userId");

System.out.println("�ȵ���̵�� ����� �Ǵ°Ŵ�?");

if(userId.equals("maro")){
	out.print("��ſϷ�");
}else{
	out.print("�� �ƴϾ�");
}
%>
</body>
</html>