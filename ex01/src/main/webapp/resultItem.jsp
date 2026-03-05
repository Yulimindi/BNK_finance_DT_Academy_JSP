<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table, tr, td, th {
		border : 1px solid black;
		border-collapse : collapse;
	}
</style>
</head>
<body>
	
	<table>
		<tr>
			<th>이름</th>
			<th>가격</th>
			<th>이미지</th>
		</tr>
		
		<c:forEach var="item" items = "${item }">
		<tr>
			<td>${item.name }</td>
			<td>${item.price }</td>
			<td><img src="images/${item.savePath }"></td>
		</tr>
		</c:forEach>
		
	</table>
	
</body>
</html>