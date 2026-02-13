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
		height : 400px;
		width : 300px;
		border: 1px solid black;
		gap : 50px;
		align-items:center;
		justify-content:center;
	}
	
	.form {
		text-align: center;
	}
	
	#login {
		font-size : 30px;
	}
	
	#join {
		font-size : 20px;
		color : gray;
	}
	
	button {
		border : 1px solid gray;
	}
	
</style>
</head>
<body>
	<div id = "container">
		<form action="logindao.jsp" class="form">
			<div id="login">로그인</div>
			ID 　<input type="text" placeholder ="아이디를 입력해주세요." name="id" required><br>
			PW　<input type="text" placeholder ="비밀번호를 입력해주세요." name="pw" required>
			<br><br>
			<input type="submit" value="로그인하기">
			<br>
		</form>
		
		<form action="join.jsp" class="form">
			<div id="join">회원이 아니신가요?</div>
			<button>회원가입</button>
		</form>
	
	</div>
	
	<script>
		const urlParams = new URLSearchParams(window.location.search);
		const result = urlParams.get('result');
		
		if(result == 'false') {
			alert("아이디 또는 패스워드가 틀렸습니다!");
		}
	
	</script>
</body>
</html>