<%@page import="pojo.SaveInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
</head>
<body>
	<div id="container">
		<h2>개인정보 수정 페이지</h2>
		
		<form action="setinfodao.jsp">
		<div>이름 변경하기</div>
		<input type="text" name="name" value="<%=SaveInfo.name%>">
		
		<div>비밀번호 변경하기</div>
		<input type="text" name="pw" value="<%=SaveInfo.pw%>">
		<br><br>
		<input type="submit" value="변경하기">
		
		</form>
	</div>
</body>
</html>