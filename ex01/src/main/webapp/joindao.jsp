
<%@page import="pojo.DBaccess"%>
<%@page import="pojo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join</title>
</head>
<body>
	<% // 회원가입
		Member m = new Member(id, pw, name);
		DBaccess db = new DBaccess();
		
		if(db.idCheck(m)) {
			db.join(m);
			response.sendRedirect("joinsuccess.jsp");
		} else {
			response.sendRedirect("join.jsp?result=false");
		}
		
	%>

</body>
</html>