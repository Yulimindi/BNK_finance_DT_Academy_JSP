<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Test Page</h1>
	<hr>
	<a href = "getJson">Json 데이터 요청하기</a>
	<form action="getJson" method="get">
		<input type="text" placeholder="id" name="id">
		<input type="text" placeholder="num" name="num">
		<input type="text" placeholder="name" name="name">
		<input type="submit" value="제출">
	</form>
	
	
	<button onclick="getJson()">JSON 데이터 요청하기(Ajax)</button>
	
	
	<div id="result"></div>
	
	<script>
		const result = document.querySelector('#result');
		let json;
		let li;
		
		function getJson() {
			const xhr = new XMLHttpRequest();
			xhr.onload = function() {
				document.getElementById("result").innerHTML = xhr.responseText;
				json = JSON.parse(xhr.responseText);
		
		        let ul = document.createElement('ul');
		        
		        li = document.createElement('li');
		        li.appendChild(document.createTextNode(json.num));
		        ul.appendChild(li);
		        
		        li = document.createElement('li');
		        li.appendChild(document.createTextNode(json.id));
		        ul.appendChild(li);
		        
		        li = document.createElement('li');
		        li.appendChild(document.createTextNode(json.name));
		        ul.appendChild(li);
		        
		        result.appendChild(ul);
			}
			
			xhr.open("GET", "getJson?name=David");
			xhr.send();
		}
		
		console.log(json);
	</script>
</body>
</html>