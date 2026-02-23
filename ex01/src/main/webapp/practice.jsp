<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form id="form">
		<input type="text" id="name" name="name" placeholder="이름을 입력해주세요.">
		<input type="text" id="gender" name="gender" placeholder="성별을 입력해주세요.">
		<!-- <input type="radio" value="여자" name="gender" id="female" class="radio">여자
		<input type="radio" value="남자" name="gender" id="male" class="radio">남자 -->
		<button type = "button" onclick="sendJson()">눌러봐</button>
	</form>
	
	<div id="result"></div>
	
	<script>
	
		const name = document.querySelector("#name");
		const gender = document.querySelector("#gender");
		const result = document.querySelector("#result");
	
		/* function f() {
			return new Promise((resolve, reject) => {
				const sendData = "name="+name.value+"&gender="+gender.value;
				console.log(sendData);
				const xhr = new XMLHttpRequest();
				
				xhr.onload = () => {
					result.textContent = xhr.responseText;
					resolve = xhr.responseText;
				}
				xhr.open("post", "PracticeServlet");
				xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
				xhr.send(sendData);
			})
		}
		
		function get() {
			const get = f();
			get.then((data) => console.log(data));
		} */
		
		
		/* function sendForm() {
			const form = document.querySelector("#form");
			const formData = new FormData(form);
			
			fetch("PracticeServlet", {
				method : "POST",
				body : formData
			})
			.then(res => res.text())
			.then(data => {
				result.textContent = data;
			})
		} */
		
		function sendJson() {
			
			const obj = {
				name : "yl",
				num : "016"
			};
			
			const xhr = new XMLHttpRequest();
			xhr.onload = function() {
				const na = JSON.parse(xhr.responseText);
				result.innerHTML = na.name + " " + na.num;
			}
			
			xhr.open("POST", "PracticeServlet");
			xhr.setRequestHeader("Content-type", "application/json");
			xhr.send(JSON.stringify(obj));
			
		}
		
	
	</script>
</body>
</html>