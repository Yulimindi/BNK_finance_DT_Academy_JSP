<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%!
		int score = 0;
		
		String[] arr = {"미국", "한국", "중국", "일본", "스웨덴"};
		String[] answer = new String[5];
	%>
	
	<%
		String a = request.getParameter("미국");
		String k = request.getParameter("한국");
		String c = request.getParameter("중국");
		String j = request.getParameter("일본");
		String s = request.getParameter("스웨덴");
		
		answer[0] = a;
		answer[1] = k;
		answer[2] = c;
		answer[3] = j;
		answer[4] = s;
	%>
	
	
	<%
	for(int i = 0; i < s.length(); i++) {
		if(arr[i].equals(answer[i])) {
			score += 20;
	 	}
	} 
	%>
	
	<h1>당신의 점수는 <%=score %>점입니다!</h1>
	
	
	
</body>
</html>