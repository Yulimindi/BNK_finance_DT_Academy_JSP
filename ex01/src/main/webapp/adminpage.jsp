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
		<h2>관리자용 페이지입니다.</h2>
		<form action="adminmypage.jsp">
			<input type="submit" value="마이페이지">
		</form>
		<form action="users.jsp">
			<input type="submit" value="회원관리">
		</form>
		<form action="resign.jsp">
			<input type="submit" value="탈퇴관리">
		</form>
		<form action="logoutdao.jsp">
			<input type="submit" value="로그아웃">
		</form>
	</div>
</body>
</html>