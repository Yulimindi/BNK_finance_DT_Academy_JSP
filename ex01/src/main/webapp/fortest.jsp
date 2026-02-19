<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<input type="text" placeholder="id" name="id" id="id">
	<input type="text" placeholder="pw" name="pw" id="pw">
	<button onclick="login()">제출</button>
	<div id="result"></div>
	
	<script>
	
		const result = document.querySelector('#result');
		const id = document.querySelector('#id')
		
		function login() {
			const xhr = new XMLHttpRequest();
			xhr.onload = () => {
				console.log(xhr.responseText);
				let text1 = "로그인 되셨습니다!";
				let text2 = "아이디 또는 비밀번호가 일치하지 않습니다.";
				if(xhr.responseText == 'true') {
					document.getElementById("result").innerHTML = text1;
				} else {
					document.getElementById("result").innerHTML = text2;
				}
			}
			
			xhr.open("POST", "LoginServlet?id=" + id.value + "&pw=" + pw.value);
			xhr.send();
		}
	</script>
</body>
</html>