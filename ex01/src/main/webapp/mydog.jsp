<%@page import="pojo.Dog"%>
<%@page import="java.util.ArrayList"%>
<%@page import="pojo.DogDB"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	h1, h3 {
		text-align : center;
	}
	
	form {
		text-align : center;
	}
	
	table, tr, td {
		text-align : center;
		border : 1px solid black;
		border-collapse : collapse;	
	}
	
	a {
		text-decoration : none;
		color : black;
	}
	
	#container {
		display : flex;
		flex-direction : column;
		align-items : center;
		justify-content : center;
	}
	
	img {
		height : 400px;
		width : 500px;
	}
	
	input {
		text-align : center;
	}
	
	#url {
		text-align : center;
		width : 177px;
	}
	
	hr {
		width : 100%;
	}
</style>
</head>
<body>
	<div id="container">
		<h1>🐶 우리 강아지를 소개합니다! 🐾</h1>
	
		<div id="smallContainer">
			<form action="InsertDogServlet" method="post" enctype="multipart/form-data">
			
				<h3>내 강아지 자랑하기</h3>
				<input type="text" name="name" placeholder="댕댕이의 이름을 알려주세요"><br>
				<input type="text" name="age" placeholder="댕댕이의 나이를 알려주세요"><br>
				<input type="file" name="url" id="url"><br>
				<input type="submit" value="등록하기">
			</form>
		</div>
		<br>
		<hr>
		<br>
		<%
			DogDB db = new DogDB();
			ArrayList<Dog> list = db.getDog();
			pageContext.setAttribute("list", list);
		%>
		<c:forEach var="list" items="${list }">
			<table>
				<tr><td><img src="images/${list.url }"></td></tr>
				<tr><td>이름 : ${list.name }</td></tr>
				<tr><td>나이 : ${list.age }살</td></tr>
				<tr><td><a href="dogDownServlet?fileName=${list.url }">사진 다운받기</a></td></tr>
			</table>
			<br>
		</c:forEach>
	</div>

</body>
</html>