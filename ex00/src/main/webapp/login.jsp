<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body {
		text-align : center;
	}
</style>
</head>
<body>
	<%
		String realid = "admin";
		String realpw = "1234";
		String result;
	
		if(realid.equals(id) && realpw.equals(pw)) {
			result = "로그인 성공";
		} else {
			result = "로그인 실패";
		}
	
	%>
	
	<h1><%= result%></h1>
</body>
</html>