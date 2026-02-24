<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.red {
		color:red;
	}
	
	.orange {
		color:orange;
	}
	
	.yellow {
		color:yellow;
	}
</style>
</head>
<body>

	
	<c:if test="${param.color == 'red'}" >
		<h2 class="red">빨강색입니다.</h2>
	</c:if>
	
	<c:if test="${param.color == 'yellow'}" >
		<h2 class="yellow">노란색입니다.</h2>
	</c:if>
	
	<c:if test="${param.color == 'orange'}" >
		<h2 class="orange">주황색입니다.</h2>
	</c:if>
	
	<hr>
	
	<c:choose>
		<c:when test="${param.fruit == '1'}">
			<p>사과에용</p>
		</c:when>
		<c:when test="${param.fruit == '2'}">
			<p>메론이에용</p>
		</c:when>
		<c:otherwise>
			<p>바나나에용</p>
		</c:otherwise>
	</c:choose>
	
	<c:choose>
		<c:when test="${param.fruit =='1' && param.color == 'red'}">
			<p>꺅!</p>
		</c:when>
	</c:choose>
	
	<hr>
	
	<%
		String[] list = request.getParameterValues("item");
	%>

	<p>당신이 선택한 항목입니다.</p>
	<p>
		<c:forEach var="list" items="${list }" varStatus="status">
			${list }
		</c:forEach>
	</p>
	
	
	
</body>
</html>