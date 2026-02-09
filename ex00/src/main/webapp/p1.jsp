<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%
	String x = request.getParameter("x"); // index에서 보내는걸 request 참조 변수 이용해서 받음
	String y = request.getParameter("y");
%>        
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>P1 Page</title>
<style>
	body {
	text-align : center;
	background-color : beige;
	}
</style>
</head>
<body>
	<h1>P1 Page입니댕</h1>
	<hr>
	<%
		int n1 = 10;
		int n2 = 20;
		int sum = n1 + n2;
		String s = "Hello";
	%>
	<h2><%= n1 + n2 %></h2>
	<h2><%=x %></h2>
	<h2><%=y %></h2>

</body>
</html>