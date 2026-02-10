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
	
	<hr>
	
	<form action="signin.jsp" method="get">
		<span>회원가입</span>
		<input type="text" placeholder= "아이디를 입력하세요" name = "id">
		<input type="text" placeholder= "비밀번호를 입력하세요" name = "pw">
		<input type="text" placeholder= "이름을 입력하세요" name = "name">
		
		<br><br>
		<input type="checkbox" name = "hobby" value="독서">독서
		<input type="checkbox" name = "hobby" value="운동">운동
		<input type="checkbox" name = "hobby" value="코딩">코딩
		
		<input type="radio" name="gender" value="남자">남
		<input type="radio" name="gender" value="여자">여
		
		자기소개 : <textarea name="introduce"></textarea>
		<select name = "color"><option value = "blue">파랑색</option><option value = "pink">분홍색</option><option value = "yellow">노랑색</option></select>
		
		<input type="submit" value="가입하기">
	</form>
		
		<br>
		
		<h1>Get 요청</h1>
		<form action="check.jsp" method="get">
			<input type="text" name="msg" placeholder="Input msg...">
			<input type="checkbox" name="fruits" value="apple">사과
			<input type="checkbox" name="fruits" value="banana">바나나
			<input type="checkbox" name="fruits" value="peach">복숭아
			<input type="submit" value="send">
		</form>
		
		
		<h1>Post 요청</h1>
		<form action="test" method="post">
			<input type="text" name="msg" placeholder="Input msg...">
			<input type="submit" value="send">
		</form>
		
		<hr>
		
		<h1>요청 연습</h1>
		<form action = "testpage.jsp" method="post">
			이름 : <input type="text" name="name" placeholder="이름 입력"><br>
			성별 : <input type="radio" name="gender" value="남자">남자
			<input type="radio" name="gender" value="여자">여자<br>
			연령대 : <input type="checkbox" name="age" value="10대">10대
			<input type="checkbox" name="age" value="20대">20대
			<input type="checkbox" name="age" value="30대">30대<br>
			기분 : <textarea name="mood"></textarea><br>
			좋아하는 과일 : <input type="checkbox" name="fruits" value="수박">수박<input type="checkbox" name="fruits" value="바나나">바나나<input type="checkbox" name="fruits" value="복숭아">복숭아
			좋아하는 색 : <select name="color"><option value="blue">파란색</option><option value="yellow">노란색</option></select>
			<input type="submit" value="제출해용">
		</form>
		
		
		
</body>
</html>