<%@page import="pojo.NewMember"%>
<%@page import="java.util.ArrayList"%>
<%@page import="pojo.DBCon"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	section {
		display : flex;
		margin-left : 20%;
		margin-right : 20%;
		gap : 10%;
	}
	
	#div1 {
		display : flex;
		flex-direction : column;
		justify-content : center;
		align-items : center;
		border : 1px, solid, black;
		height: 500px;
		width : 400px;
	}
	
	#div2 {
		display : flex;
		flex-direction : column;
		justify-content : center;
		border : 1px, solid, black;
		height: 800px;
		width : 400px;
	}
	
	h2 {
		text-align : center;
	}
	
	#form {
		display : flex;
		flex-direction : column;
		justify-self : center;
		gap : 10px;
	}
	
	#form2 {
		display : flex;
		justify-self : center;
		gap : 5px;
	}
</style>
</head>
<body>
	<section>
		<div id="div1">
			<h2>사용자 등록</h2>
			<form id="form">
				<input type="text" name="id" id="id" placeholder="아이디를 입력해주세요.">
				<div id="result"></div>
				<button type="button" id="button3">중복확인</button>
				<input type="text" name="pw" id="pw" placeholder="비밀번호를 입력해주세요.">
				<input type="text" name="name" id="name" placeholder="닉네임을 입력해주세요."><br>
				<button type="button" id="button">등록하기</button>
			</form>
		</div>
		
		<div id="div2">
			<h2>조회</h2>
			<form id="form2">
				<input type="text" name="text" id="text" placeholder="검색어를 입력해주세요.">
				<button type="button" id="button2">검색하기</button>
			</form>
			
			<table id="table">
				<thead>
					<tr>
						<th>아이디</th>
						<th>비밀번호</th>
						<th>이름</th>
					</tr>
				</thead>
					
				<tbody id="tbody">
				<%
					DBCon db = new DBCon();
					ArrayList<NewMember> arr = db.getInfo();
					for(int i = 0; i < arr.size(); i++) {
				%>
					<tr>
						<td><%=arr.get(i).getId() %></td>
						<td><%=arr.get(i).getPw() %></td>
						<td><%=arr.get(i).getName() %></td>
					</tr>
				<%
					}
				%>
				</tbody>
			
			</table>
				
		</div>
	</section>
	
	<script>
		const id = document.querySelector("#id");
		const pw = document.querySelector("#pw");
		const name = document.querySelector("#name");
		const btn = document.querySelector("#button");
		const btn2 = document.querySelector("#button2");
		const btn3 = document.querySelector("#button3");
		const form = document.querySelector("#form");
		const form2 = document.querySelector("#form2");
		const table = document.querySelector("#table");
		const tbody = document.querySelector("#tbody");
		const result = document.querySelector("#result");
		
		btn3.addEventListener("click", () => {
			check();
		})
		
		btn2.addEventListener("click", () => {
			find();
		})
		
		btn.addEventListener("click", () => {
			post();
		})
		
		function check() {
			
			const sendData = "id="+id.value;
			const xhr = new XMLHttpRequest();
			xhr.onload = () => {
				if(xhr.responseText == "true") {
					result.textContent = "사용 가능한 아이디입니다.";
				} else {
					result.textContent = "중복된 아이디입니다.";
				}
			}
			xhr.open("post", "jstest1Servlet3");
			xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
			xhr.send(sendData);
		}
		
		function find() {
			const formData = new FormData(form2);
			
			fetch("jstest1Servlet2", {
				method : "post",
				body : formData
			})
			.then(data => data.json())
			.then(result => {
				tbody.innerHTML = "";
				
				for(i = 0; i < result.length; i++) {
					const tr = document.createElement("tr");
					const td1 = document.createElement("td");
					const td2 = document.createElement("td");
					const td3 = document.createElement("td");
					tbody.appendChild(tr);
					td1.textContent = result[i].id;
					td2.textContent = result[i].pw;
					td3.textContent = result[i].name;
					
					tr.appendChild(td1);
					tr.appendChild(td2);
					tr.appendChild(td3);
				}
				
			})
		}
		
		function post() {
			
			const formData = new FormData(form);
			
			fetch("jstest1Servlet", {
				method : "post",
				body : formData
			})
			.then(data => data.text())
			.then(result => {
				if(result == 'false') {
					alert("중복된 아이디입니다.");
					id.value = "";
				} else if(result == 'true') {
					alert("등록 성공");
					id.value = "";
					pw.value = "";
					name.value = "";
					location.reload();
					
				}
			})
			
		}
		
	</script>
</body>
</html>