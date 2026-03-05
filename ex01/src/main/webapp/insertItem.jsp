<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="InsertItemServlet" method="post" enctype="multipart/form-data">
		<input type="text" placeholder="상품명" name="name"><br>
		<input type="text" placeholder="상품가격" name="price"><br>
		<input type="file" name="imgg"><br>
		<input type="submit" value="등록하기">

	</form>
	
	<script>

		
	</script>
</body>
</html>