<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<button onclick="f()">눌러</button>
	
	<script>
	
	function f() {
			fetch('${pageContext.request.contextPath}/Pra')
			.then(response => response.text())
			.then(data => console.log(data))
		}
	
		
	</script>
</body>
</html>