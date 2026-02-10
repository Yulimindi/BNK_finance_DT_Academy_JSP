<%@page import="java.util.ArrayList"%>
<%@page import="domain.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%!
	ArrayList<Student> studentlist = new ArrayList<>();
%>

<%!
	int average;

	void averScore(Student s) {
		average = (s.getMscore() + s.getEscore()) / 2;		
	}
	
	void addArray(Student s) {
		studentlist.add(s);
	}
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성적 처리 화면</title>
<style>
	div {
		border : 1px solid black
	}
	
	body {
		background-color : beige;
	}

</style>
</head>
<body>
	<%
		String name = request.getParameter("name");
		String fakenum = request.getParameter("num");
		int num = Integer.parseInt(fakenum);
		String fakeeScore = request.getParameter("eScore");
		int eScore = Integer.parseInt(fakeeScore);
		String fakemScore = request.getParameter("mScore");
		int mScore = Integer.parseInt(fakemScore);
		Student s = new Student(name, num, eScore, mScore);
		
		addArray(s);
	%>
	
	
	<% for(Student students : studentlist) {%>
		<div>
			<h1>이름 : <%=students.getName()%> </h1>
			<h1>번호 : <%=students.getNum()%> </h1>
			<h1>영어 점수 : <%=students.getEscore()%> </h1>
			<h1>수학 점수 : <%=students.getMscore()%> </h1>
			<%averScore(s); %>
			<h1>평균 점수 : <%=average %></h1>
		</div>
		<br>
	<%} %>
	
	
</body>
</html>