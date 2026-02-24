<%@page import="pojo.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EX_JSTL</title>
</head>
<body>
<c:set var="users" value="<%=new pojo.Users() %>" />
<c:set target="${users }" property = "no" value="1" />
<c:set target="${users }" property = "id" value="abcd" />
<c:set target="${users }" property = "name" value="James" />
user : ${users }<br>

<hr>
<c:set var="add" value="${10+5 }"></c:set>
\${add } = ${add } <br>
<c:set var="msg" value="Hello"></c:set>
\${msg } = ${msg } <br>
<c:set var="age">30</c:set>
\${age } = ${age } <br>
<c:set var="flag" value="${10 > 5 }" />
\${flag } = ${flag }
<hr>

<c:remove var="age"/>
\${age } = ${age }<br>
<hr>

<c:if test="${add>10 }">
	<p>add는 10보다 큽니다.</p>
</c:if>

<c:if test="${add <= 10 }">
	<p>add는 10보다 작거나 같습니다.</p>
</c:if>

<a href="ex_jstl2.jsp?title=jstl_test">ex_jstl2 페이지로 가기</a>

<form action="ex_jstl2.jsp">
	<select name="color"><option value = "red">빨강색</option><option value = "yellow">노랑색</option><option value = "orange">주황색</option></select>
	<br>
	<label for="fruit">과일을 선택하세요</label>
	<select id="fruit" name="fruit">
		<option value="1">사과</option>
		<option value="2">메론</option>
		<option value="3">바나나</option>
	</select>
	
	<br>
	
	<input type="checkbox" name="item" value="신발">신발
	<input type="checkbox" name="item" value="가방">가방
	<input type="checkbox" name="item" value="벨트">벨트<br>
	<input type="checkbox" name="item" value="모자">모자
	<input type="checkbox" name="item" value="모자">시계
	<input type="checkbox" name="item" value="주얼리">주얼리<br>
	
	<input type="submit" value="제출하기!">
</form>

<hr>

</body>
</html>