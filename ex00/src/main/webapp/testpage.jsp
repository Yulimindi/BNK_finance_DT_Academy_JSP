<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String age = request.getParameter("age");
	String mood = request.getParameter("mood");
	String[] fruits = request.getParameterValues("fruits");
	String color = request.getParameter("color");
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body {
		text-align : center;
		color : green;
		background-color : beige;
	}
</style>

</head>
<body>
	<h3>이름 : <%=name %></h3>
	<h3>성별 : <%=gender %></h3>
	<h3>나이 : <%=age %></h3>
	<h3>기분 : <%=mood %></h3>
	
	<%for(String fruit : fruits) {%>
	<span><%=fruit %> </span>
	<%}%>
	
	<h3>좋아하는 색 : <%=color %></h3>
	
</body>
</html>