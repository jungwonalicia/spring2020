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
		target = "12345"
		$("#num").keyup(function() {
			//입력한 값을 가지고 옴
			//->input태그인 경우 val()
			num = $("#num").val()
			//target과 입력한 값이 동일한지 체크
			if(num == target){
				//alert("정답!!!!!!")
				//$("#d1").html("<font color=red>정답!!</font><br>")
				$("#d1").append("<font color=red>정답!!</font><br>")
			}else{
				//alert("오답!!!!!!")
				//$("#d1").html("<font color=blue>오답!!</font><br>")
				$("#d1").append("<font color=blue>오답!!</font><br>")
			}
		})
	})
</script>
</head>
<body>
생각하고 있는 정답입력:<input type="text" id="num"><br>
<div id="d1"></div>

</body>
</html>