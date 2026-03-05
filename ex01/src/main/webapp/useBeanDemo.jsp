<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="message" class="pojo.Message" />
<jsp:setProperty property="msg" name="message" value="안녕빤쓰" />
<jsp:setProperty property="sender" name="message" value="미애" />
<jsp:setProperty property="receiver" name="message" value="철이" />

<p>메시지 : <jsp:getProperty property="msg" name="message"/></p>
<p>보내는 사람 : <jsp:getProperty property="sender" name="message"/></p>
<p>받는 사람 : <jsp:getProperty property="receiver" name="message"/></p>
</body>
</html>