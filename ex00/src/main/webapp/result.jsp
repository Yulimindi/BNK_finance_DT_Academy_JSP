<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!
	ArrayList<String> namelist = new ArrayList<>();
%>

<%!
	void add(String name) {
		namelist.add(name);
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
		String name = request.getParameter("이름");
		add(name);
		
	%>
	
	<table>
		<tr>
			<th>번호</th>
			<th>이름</th>
		</tr>
		
		<%for(int i = 0; i < namelist.size(); i++) { %>
		<tr>
			<td><%=i+1%></td>
			<td><%=namelist.get(i)%></td>
		</tr>
		<%} %>
	
	</table>


</body>
</html>