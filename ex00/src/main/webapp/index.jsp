<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>안녕빤쓰 ❤💨</title>

<style>
	a {
		text-decoration : none;
		color : black;
	}
	
	body {
		padding-left : 15%;
		padding-right : 15%;
		text-align : center;
		background-color : beige;
	}

</style>

</head>
<body>
	<h1>Index Page</h1>
	<p>보지마세용</p>
	<hr>
	<a href = "p1.jsp?x=1&y=1">▷ p1 페이지로 이동합니댕 ◁</a>
	<hr>
	<form action= "p2.jsp" method = "get">
		<input type= "text" placeholder = "Input data..." name = "data">
		<input type= "submit" value = "전송" ><br>
	</form>
	
	<br>
	
	<form action="login.jsp" method="get">
		<span>로그인</span>
		<input type = "text" placeholder = "아이디를 입력하세요" name = "id">
		<input type = "text" placeholder = "비밀번호를 입력하세요" name = "pw">
		<input type = "submit" value = "전송해용">
	</form>
	
</body>
</html>