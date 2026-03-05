<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
	
		String userID = null;
	
		Cookie[] cookies = request.getCookies();
		
		if(cookies != null) {
			for(Cookie cookie : cookies) {
				if(cookie.getName().equals("userID")) {
					userID = cookie.getValue();
					break;
				}
				
			}
		}
		
		if(userID != null) {
	%>


	<form action="logout" method="post">
		<%=userID %>님 로그인
		<input type="submit" value="로그아웃">
	</form>
	
	<%
		} else {
	%>
	
	<form action="login" method="post">
		아이디 : <input type="text" name="id"><br>
		비밀번호 : <input type="text" name="pw"><br>
		<input type="submit" value="로그인">
	</form>
	
	<%
		}
	%>
	
	<script>
		<% String result = request.getParameter("login"); %>
		if("<%=result%>" == "no") {
			alert("아이디 또는 비밀번호가 틀렸습니다.");
		}
	</script>
</body>
</html>