<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

	table {
		border : 1px, solid, black;
		border-collapse:collapse; /* 테이블 1줄로 예쁘게 나오게 하기 */
		
	}
	
	th {
		border : 1px, solid, black;
		text-align : center;
	}
	
	td {
		border : 1px, solid, black;
	}
	
	
</style>
</head>
<body>
	<%
	ArrayList<String> name = new ArrayList<>();
	name.add("김철수");
	name.add("박상철");
	name.add("윤철환");
	name.add("박진주");
	name.add("김호순");
	%>
	
	<table>
	
		<tr>
			<th>번호</th>
			<th>이름</th>
		</tr>
		
		<%for(String names : name) { %>
		<tr>
			<td><%=name.indexOf(names) %></td>
			<td><%=names %></td>
		</tr>
		<%} %>
		
	</table>
	
	<br>
	
	<table>
	
		<tr>
			<th>번호</th>
			<th>이름</th>
		</tr>
		
		<%for(int i = 0; i < name.size(); i++) { %>
		<tr>
			<td><%=i+1 %></td>
			<td><%=name.get(i) %></td>
		</tr>

		
		<%} %>
		
	</table>
	
</body>
</html>