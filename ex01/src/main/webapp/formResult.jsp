<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Result</title>
</head>
<body>
<jsp:useBean id="message" class="pojo.Message" />
<jsp:setProperty property="*" name="message" />

<ul>
	<li>내용 : <jsp:getProperty property="msg" name="message" /></li>
	<li>보낸 사람 : <jsp:getProperty property="sender" name="message" /></li>
	<li>받는 사람 : <jsp:getProperty property="receiver" name="message" /></li>
</ul>
<hr>
msg : ${param.msg }<br>
sender : ${param.sender }<br>
receiver : ${param.receiver }<br>

<a href="forward_test.jsp">forwarding</a><br>


받은 값 : ${message.msg}<br>



</body>
</html>