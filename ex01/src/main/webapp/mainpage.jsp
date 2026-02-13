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
		<h1>메인 페이지</h1>
		
		<form action = "mypage.jsp">
			<button id="goMypage">마이페이지 가기</button>
		</form>
		<form action = "logoutdao.jsp">
			<button id="goMypage">로그아웃</button>
		</form>
	</div>
	
</body>
</html>