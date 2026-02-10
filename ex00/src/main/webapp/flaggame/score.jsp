<%@page import="domain.Score"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

	body {
		text-align : center;
		margin-top : 300px;
	}
	div {
		border : 1px solid black;
		padding-left : 100px;
		padding-right : 100px;
	}
</style>
</head>
<body>
	<%
		String a = request.getParameter("스웨덴"); 
		if(a.equals("스웨덴")) {
			Score.score += 20;
		}
	
	%>


	<div>
		<h1>당신의 최종 점수는!</h1>
		
		<%if(Score.score == 100) {%>
		<h1><%=Score.score%>점 입니다!</h1>
		<h1>축하합니다~</h1>
		<%} else {%>
		<h1><%=Score.score%>점 입니다...</h1> 
		<h1>공부 좀 하세요~</h1>
		<%} %>
	</div>
</body>
</html>