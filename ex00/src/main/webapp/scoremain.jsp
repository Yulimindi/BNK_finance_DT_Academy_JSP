<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="score.jsp" method = "post">
		<input type="text" placeholder="이름을 입력하세요" name="name">
		<input type="text" placeholder="번호를 입력하세요" name="num">
		<input type="text" placeholder="영어 점수를 입력하세요" name="eScore">
		<input type="text" placeholder="수학 점수를 입력하세요" name="mScore">
		<input type="submit" value="제출">
	</form>
</body>
</html>