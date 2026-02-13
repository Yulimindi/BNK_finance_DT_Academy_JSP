<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="joindao.jsp">
		아이디<input type = "text" placeholder= "아이디를 입력해주세요" name="id" required>
		비밀번호<input type = "text" placeholder= "비밀번호 입력해주세요" name="pw" required>
		이름<input type = "text" placeholder= "이름을 입력해주세요" name="name" required>
		<input type="submit" value="회원가입 완료">
	</form>
	
	<% out.print("<script>alert('아이디가 중복됩니다!')</script>");  %>
</body>
</html>