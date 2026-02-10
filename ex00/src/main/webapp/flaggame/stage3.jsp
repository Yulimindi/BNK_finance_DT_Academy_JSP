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
		String a = request.getParameter("한국"); 
		if(a.equals("한국")) {
			Score.score += 20;
		}
	
	%>
	<img src="../images/중국.png" style = "height : 300px">
	<form action="stage4.jsp" method="get">
		<input type="text" name="중국">
		<input type="submit" value="다음으로" name="다음">
	</form>
</body>
</html>