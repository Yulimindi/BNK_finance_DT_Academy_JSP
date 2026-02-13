<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!
String url = "jdbc:oracle:thin:@//localhost:1521/testdb";
String uid = "newgreen";
String upw = "1234";
Connection con;
Statement stmt;
ResultSet rs;
%>

<%
Class.forName("oracle.jdbc.driver.OracleDriver");

con = DriverManager.getConnection(url, uid, upw);
stmt = con.createStatement();
rs = stmt.executeQuery("select * from myprogram");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	table {
		border : 1px solid black;
	}
	
	tr {
		border : 1px solid black;
	}
	
	th {
		border : 1px solid black;
	}
	
	td {
		border : 1px solid black;
	}
</style>
</head>
<body>
	<h1>Test DB List</h1>
	<hr>
	<table>
		
			<th>id</th>
			<th>pw</th>
			<th>name</th>
		
		
			<% while(rs.next()) { %>
			<tr>
				<td>
					<%
						out.println(rs.getString("id") + "<br>");
					%>
				</td>
				<td>
					<%
						out.println(rs.getString("pw") + "<br>");
					%>
				</td>
				<td>
					<%
						out.println(rs.getString("name") + "<br>");
					%>
				</td>
				

			</tr>
		<%} %>
		
		
		
	</table>
	
</body>
</html>