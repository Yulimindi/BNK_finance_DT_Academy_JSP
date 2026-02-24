<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="pojo.BasketBall"%>
<%@page import="java.util.ArrayList"%>
<%@page import="pojo.MemberDB"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="jakarta.tags.core" %>
<!DOCTYPE html>

	<% MemberDB db = new MemberDB(); %>
	<% pageContext.setAttribute("lst", db.getMember());%>

<html>
<head>
<meta charset="UTF-8">
<title>BookSan Member List Page</title>
</head>
<body>
	<h1>북산 고등학교 학생 정보 관리 시스템</h1>

	<input type="text" id="find"placeholder="조회하기...">
	<Button type="button" id="finder" onclick="toFind()">조회</Button>

	
	<table>
		<thead>
			<tr>
				<th>이름</th>
				<th>전화번호</th>
			</tr>
		</thead>	
		<tbody>
			<c:forEach var="list" items="${lst }" varStatus="status">
				<tr>
					<td id="${status.index } td" class="name">${list.getName() }</td>
					<td>${list.getNum() }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div id="info"></div>
	<script>
	
		const finder = document.querySelector("#finder");
		const find = document.querySelector("#find");
		
		function toFind() {
			tbody.innerHTML = "";
			info.innerHTML = "";

			const sendData = "find="+find.value;
			const xhr = new XMLHttpRequest();
			xhr.onload = function() {
				const responseData = JSON.parse(xhr.responseText);
				const cnt = responseData.length;
				for(i = 0; i < cnt; i++) {
					tr = document.createElement('tr');
					tbody.appendChild(tr);
					td = document.createElement('td');
					td2 = document.createElement('td');
					td.textContent = responseData[i].name;
					tr.appendChild(td);
					td2 = document.createElement('td');
					td2.textContent = responseData[i].num;
					tr.appendChild(td2);	
				}
				
			}
			xhr.open("POST", "FindMemberServlet");
			xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
			xhr.send(sendData);
		}
		
	
	
		const name = document.querySelectorAll(".name");
		const tbody = document.querySelector("tbody");
		
		tbody.addEventListener("click", infos);
		
		function infos(e) {
			const tr = e.target.closest("tr");
			const num = tr.children[0].textContent;
			console.log(num);
			const sendData = "name=" + num;
			const xhr = new XMLHttpRequest();
			xhr.onload = function() {
				const detail = JSON.parse(xhr.responseText);
				info.textContent = "이름 : " + detail.name + " 번호 : " + detail.num + " 나이 : " + detail.age + " 키 : " + detail.height + " 성별 : " + detail.gender; 
			}
			xhr.open("POST", "GetMemberServlet");
			xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
			xhr.send(sendData);	
		}
		
		
		
	</script>
</body>
</html>