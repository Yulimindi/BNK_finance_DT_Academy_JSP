<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String[] hobby = request.getParameterValues("hobby");
	
	String introduce = request.getParameter("introduce");
	String color = request.getParameter("color");
	
	String gender = request.getParameter("gender");
	
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>아이디 : <%=id %></h1>
	<h1>비밀번호 : <%=pw %></h1>
	<h1>이름 : <%=name %></h1>
	
	<% for(String hoby : hobby) { %>
	<h1>취미 : <%=hoby %> </h1>
	<% } %>
	 
	
	
	<h1>자기소개 : <%=introduce %></h1>
	<h1>좋아하는 색 : <%=color %></h1>
	
	<h1>성별 : <%=gender %></h1>
	
</body>
</html>