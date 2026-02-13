<%@page import="pojo.Member"%>
<%@page import="java.util.ArrayList"%>
<%@page import="pojo.DBaccess"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#container {
		display:flex;
		flex-direction:column;
		align-items:center;
		justify-content:center;
		border:1px solid black;
		height:400px;
		width:300px;
	}
</style>
</head>
<body>
	<div id="container">
		<h2>회원 관리 페이지입니다.</h2>
		<table>
			<tr>
				<th>아이디</th>
				<th>비밀번호</th>
				<th>이름</th>
			</tr>
			
			<%
			DBaccess db = new DBaccess();
			ArrayList<Member> arr = db.memberCheck();
			for(Member m : arr) { %>
			<tr>
				
			
				<th><%=m.getId()%></th>
				<th><%=m.getPw()%></th>
				<th><%=m.getName()%></th>
				
			</tr>
			<%} %>
			
		</table>
		
	</div>
</body>
</html>