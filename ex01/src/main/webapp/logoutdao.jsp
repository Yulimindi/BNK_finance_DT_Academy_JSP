<%@page import="pojo.SaveInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		SaveInfo.id = null;
		SaveInfo.pw = null;
		SaveInfo.name = null;
		response.sendRedirect("index.jsp");

	%>
</body>
</html>