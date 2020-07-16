<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	
	String userid = request.getParameter("id");
	String password = request.getParameter("passwd");

	if(userid.equals("관리자") && password.equals("1234")){
		response.sendRedirect("Manager.jsp");
	}
	else if(userid.equals("engineer") && password.equals("1q2w3e4r")){
		response.sendRedirect("Engineer.jsp");
	}
	else{
		response.sendRedirect("monitoring.jsp");
	}
	%>
</body>
</html>