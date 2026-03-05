<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="MsgServlet">TestServlet</a>
	<hr>
		<form action="MsgServlet" method="POST" enctype="multipart/form-data">
			<input type="text" name="msg" placeholder="메시지를 작성해주세요"><br>
			<input type="text" name="sender" placeholder="sender를 작성해주세요"><br>
			<input type="text" name="receiver" placeholder="receiver를 작성해주세요"><br>
			<hr>
			<input type="file" name="msgfile">
			<hr>
			<input type="submit" value="Send">
		</form>
	<hr>
	
	<c:forTokens var="item" items="Argetina, Brazil, Chile" delims=",">
		<c:out value="${item  }" /> <br>
	</c:forTokens>
	<hr>
	<fmt:formatNumber value="12" type="number" /><br>
	<fmt:formatNumber value="12" type="number" minIntegerDigits="3" /><br>
	<fmt:formatNumber value="12.45" type="number" minFractionDigits="3" /><br>
	<fmt:formatNumber value="1234567.89" pattern = ".000" /><br>
	<fmt:formatNumber value="1234567.89" pattern="#,#00.0#" /><br>
	<fmt:formatNumber value="212" type="currency" /><br>
	<fmt:formatNumber value="12" type="currency" currencyCode="GBP" /><br>
	<fmt:formatNumber value="0.34" type="percent" /><br>
	<fmt:formatNumber value="0.125" type="percent" minFractionDigits="2" /><br>
	<hr>
	<c:set var="msg" value="Hello!" />
	${fn:contains(msg, "Hello")}<br>
	${fn:containsIgnoreCase(msg, "hello!")}<br>
	${fn:endsWith("Hello World", "World") }<br>
	${fn:startsWith("Stella Cadente", "Sto")}<br>
	${fn:indexOf("abcdefg", "cd") }<br>
	${fn:length("abcdefg") }<br>
	${fn:replace("Stella Cadente", "e", "E") }<br>
	<c:set var="split" value='${fn:split("my,world", ",") }'/>
	<table border="1">
		<c:forEach var="sub" items="${split }">
			<tr><td>${sub }</td></tr>
		</c:forEach>
	</table>
	${fn:substring("Stella Cadente", 0, 4) }<br>
	${fn:substringAfter("Stella Cadente", "e") }<br>
	${fn:substringBefore("Stella Candente", "e") }<br>
	${fn:toLowerCase("Stella Cadente") }<br>
	${fn:toUpperCase("Stella Cadente") }<br>
	
</body>
</html>