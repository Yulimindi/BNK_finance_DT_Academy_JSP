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

</style>
</head>
<body>

	<%
		String a = request.getParameter("일본"); 
		if(a.equals("일본")) {
			Score.score += 20;
		}
	
	%>
	
	<img src="../images/스웨덴.png" style = "height : 300px">
	<form action="score.jsp" method="get">
		<input type="text" name="스웨덴">
		<input type="submit" value="점수 확인하기" name="점수">
	</form>
</body>
</html>