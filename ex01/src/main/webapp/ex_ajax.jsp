<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

	.table {
		border : 1px, solid, black;
		border-collapse : collapse;
	}
	
	
</style>

</head>
<body>
	<form id="frm">
		<input type="text" placeholder="이름을 입력해주세요" name="name" id="name">
		<input type="text" placeholder="번호를 입력해주세요" name="num" id="num">
		<button type="button" onclick="sendJson()">등록</button>
	</form>
	
	<div id="result"></div>
	<script>
		const result = document.getElementById("result");
		const name = document.querySelector("input[name='name']");
		const num = document.querySelector("input[name='num']");
		
		
		/* function get() {
			alert("onclick");
			return new Promise((resolve, reject) => {
				const sendData = "name=" + name.value + "&num=" + num.value;
				const xhr = new XMLHttpRequest();
				
				xhr.onload = function() {
					resolve = xhr.responseText;
				}
				
				xhr.open("POST", "ForPost"); // 전송 준비 (주소 지정)
				xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
				xhr.send(sendData); // 전송 시작, 괄호 안에 폼 데이터가 들어감 즉 input 태그의 값들
			});
		}
	
		function registUser() {
			const result = get();
			result.then(data => console.log(data));
		}
		
		// fetch 방식
		function sendForm() {
			const form = document.getElementById("frm");
			const formData = new FormData(form);
			
			fetch("ForPost2", {
				method : "POST", 
				body : formData	
			})
			.then(res => res.text()) // JSON이면 .json() / res.text()가 return문
			.then(data => { // data가 res.text()임
				result.textContent = data;
			});
		} */
		
	
		
		function sendJson() {
			
			const obj = { // 자바 스크립트 객체를 문자로 바꿔서 json.stringfy 해줘서 보내줘야함
				name1 : "James",
				num1 : "1234"
			};
			
			const xhr = new XMLHttpRequest();
			
			xhr.onload = function() {
				const na = JSON.parse(xhr.responseText); // 객체로 접근하기
				console.log(na);
				result.innerHTML = na.num1 + " " + na.name1; 
				
				const table = document.createElement('table');
				const thead = document.createElement('thead');
				const tbody = document.createElement('tbody');
				
				const tr1 = document.createElement('tr');
				const tr2 = document.createElement('tr');
				
				const td1 = document.createElement('th');
				const td2 = document.createElement('th');
				const td3 = document.createElement('td');
				const td4 = document.createElement('td');
				
				const text1 = na.num1;
				const text2 = na.name1;
				
				result.appendChild(table);
				table.appendChild(thead);
				table.appendChild(tbody);
				
				thead.appendChild(tr1);
				tbody.appendChild(tr2);
				
				tr1.appendChild(td1);
				tr1.appendChild(td2);
				
				tr2.appendChild(td3);
				tr2.appendChild(td4);
				
				td1.textContent = "번호";
				td2.textContent = "이름";
				td3.textContent = text1;
				td4.textContent = text2;
				
				table.setAttribute('class', 'table');
				tr1.setAttribute('class', 'table');
				tr2.setAttribute('class', 'table');
				td1.setAttribute('class', 'table');
				td2.setAttribute('class', 'table');
				td3.setAttribute('class', 'table');
				td4.setAttribute('class', 'table');
			}
			
			xhr.open("POST", "ForPost3");
			xhr.setRequestHeader("Content-type", "application/json");
			xhr.send(JSON.stringify(obj));
		}
		
	</script>
</body>
</html>