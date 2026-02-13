<%@page import="pojo.SaveInfo"%>
<%@page import="pojo.Member"%>
<%@page import="pojo.DBaccess"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	DBaccess db = new DBaccess();
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>
	<% // 로그인
		Member m = new Member(id, pw);
		
		if(db.login(m)) {
			if(SaveInfo.id.equals("admin")) {
				response.sendRedirect("adminpage.jsp");
			} else {
				response.sendRedirect("mainpage.jsp");	
			}
			
		} else {
			response.sendRedirect("index.jsp?result=false");
		}
		
	%>
</body>
</html>