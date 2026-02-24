<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table {
		border:1px solid black;
		border-collapse:collapse;
		text-align:center;
	}
	
	tr {
		border:1px solid black;
		border-collapse:collapse;
		text-align:center;
	}
	
	td {
		border:1px solid black;
		border-collapse:collapse;
		text-align:center;
	}
	
	th {
		border:1px solid black;
		border-collapse:collapse;
		text-align:center;
	}
	
</style>
</head>
<body>
	<h1>JSTL 목록 출력</h1>
	<hr>
	<%
		String[] movieList = {"타이타닉", "시네마천국", "혹성탈출", "킹콩"};
		pageContext.setAttribute("movieList", movieList);
	%>
	<table>
		<tr>
			<th>인덱스</th>
			<th>카운트</th>
			<th>영화 제목</th>
		</tr>

	<c:forEach var="movie" items="${movieList }" varStatus="status">
		<tr>
			<td>${status.index }</td>
			<td>${status.count }</td>
			<td>${movie }</td>
		</tr>
	</c:forEach>
		
	</table>
	
	<ul>
		<c:forEach var="movie" items="${movieList }" varStatus="status">
			<c:choose>
				<c:when test="${status.first }">
					<li style="font-weight:bold; color:red;">${movie }</li>
				</c:when>
				<c:otherwise>
					<li>${movie }</li>
				</c:otherwise>
			</c:choose>
		</c:forEach>
	</ul>	
	<hr>
	
	<c:forEach var="movie" items="${movieList }" varStatus="status">
		${movie }<c:if test="${not status.last }">, </c:if>
	</c:forEach>
	
	<hr>
		
</body>
</html>