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
	#form {
		display:flex;
		flex-direction:column;
		justify-content:center;
		align-items:center;
	}
	

	
</style>
</head>
<body>
	<div id="container">
		<h1>회원가입</h1>
		<form action="joindao.jsp" id="form">
			<div>
				ID <input type = "text" placeholder= "아이디를 입력해주세요" name="id" required>
			</div>
			
			<div>
				PW<input type = "text" placeholder= "비밀번호 입력해주세요" name="pw" required>
			</div>
			
			<div>
				이름<input type = "text" placeholder= "이름을 입력해주세요" name="name" required>
			</div>
			<br>
			<input type="submit" value="회원가입 완료" class="button"><br>
		</form>
		
		<form action="index.jsp">
			<input type="submit" value="첫 화면으로 돌아가기" class="button">
		</form>
	
	</div>
	
	<script type="text/javascript">
		const urlParams = new URLSearchParams(window.location.search);
		const result = urlParams.get('result');
		
		if(result == 'false') {
			alert("중복된 아이디입니다!");
		}

	
	</script>
</body>
</html>