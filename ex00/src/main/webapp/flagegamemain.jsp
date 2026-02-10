<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	img {
		height : 200px;
	}
	
	body {
		text-align : center;
	}
</style>

</head>

<body>
	<div>
		<h1>틀리면 부끄러운 국기 맞추기!</h1>
		<form action = "flaggame.jsp" method = "post">
	
			<img alt="미국" src="./images/미국.jpg"><br>
			<input type="text" name="미국"><br><br>
			
			<img alt="한국" src="./images/한국.jpg"><br>
			<input type="text" name="한국"><br><br>
			
			<img alt="중국" src="./images/중국.png"><br>
			<input type="text" name="중국"><br><br>
			
			<img alt="일본" src="./images/일본.jpg"><br>
			<input type="text" name="일본"><br><br>
			
			<img alt="스웨덴" src="./images/스웨덴.png"><br>
			<input type="text" name="스웨덴"><br><br>
		
			<br>
			<input type="submit" value="제출하기">
	
		</form>
	</div>
</body>
</html>