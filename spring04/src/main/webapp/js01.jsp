<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript">
	$(function() {
		$("#b1").click(function() {
			alert("1번 호출됨.")
		})
		$("#b2").click(function() {
			alert("2번 호출됨.")
		})
	})
</script>
</head>
<body>
<button id="b1">버튼1</button>
<button id="b2">버튼2</button>
</body>
</html>