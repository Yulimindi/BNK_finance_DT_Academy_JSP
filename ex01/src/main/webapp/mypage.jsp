<%@page import="pojo.SaveInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	#container {
		display:flex;
		flex-direction:column;
		align-items:center;
		justify-content:center;
		border:1px solid black;
		height:400px;
		width:300px;
	}
</style>
<title>Insert title here</title>
</head>
<body>
	<div id="container">
		<h2>내 아이디 : <%=SaveInfo.id%></h2>
		<h2>내 비밀번호 : <%=SaveInfo.pw%></h2>
		<h2>내 이름 : <%=SaveInfo.name%></h2>
		
		<form action="mainpage.jsp">
			<input type="submit" value="메인 페이지로 돌아가기">
		</form>
		<form action="setmyinfo.jsp">
			<input type="submit" value="개인정보 변경하기">
		</form>
	</div>
</body>
</html>