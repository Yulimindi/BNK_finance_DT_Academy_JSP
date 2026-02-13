<%@page import="pojo.DBaccess"%>
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
		String name = request.getParameter("name");
		String pw = request.getParameter("pw");
		
		SaveInfo.name = name;
		SaveInfo.pw = pw;
		
		DBaccess db = new DBaccess();
		if(db.set(SaveInfo.id, pw, name)) {
			response.sendRedirect("mypage.jsp");
		}
		
		
	%>
</body>
</html>