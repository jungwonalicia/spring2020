<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript">

/* b = document.getElementByTagNames("button"); */
 
 /* JQuery call-back함수가 기본 */
 /* body부분의 특정영역에서 이벤트가 발생하면 뒤로 가서 자동 호출. */
 /* document.ready(); */
$(function() { 
	/* tree구조로  ram에 body부분의 데이터를 
	* 읽어들였을 때
	*/
	$(".b1").click(function() {
		alert("b1 버튼이 눌러졌어요.!!!")
		//id에 입력값 가지고 와야함.
		id = $(".id").val()
		console.log("가지고 온 id: " + id)
		//가지고 온 id의 길이를 체크해야함.
		console.log("id의 길이는: " + id.length)
		
		//길이가 5글자 이상이 아니면 다시 입력하라고 함.
		if(id.length < 5){
			//alert("5글자 이상이 아닙니다. 다시 입력해주세요.")
			//$("#d1").text("5글자 이상이 아닙니다. 다시 입력해주세요.")
			$("#d1").html("<span style=color:red>5글자 이상이 아닙니다. 다시 입력해주세요.</span>")
		}else{
		//길이가 5글자 이상이면, 서버로 넘기면 됨.
			location.href = "js07.jsp"			
		}
	})
	
	$(".b2").click(function() {
		//두개의 pw1, pw2를 가지고 와서, 
		//다르면, 다르다고 프린트, 같으면, 같다고 프린트
		alert("b2 버튼이 눌러졌어요.!!!")
		pw1 = $(".pw1").val();
		pw2 = $(".pw2").val();
		
		if(pw1 == pw2){
			$("#d2").html("<span style=color:blue>패스워드가 일치!</span>")
		}else{
			$("#d2").html("<span style=color:green>패스워드가 불일치!</span>")
		}
	})
})

</script>
</head>
<body>
아이디: <input type="text" name="id" class="id">
<button type="button" class="b1">아이디 체크</button>
<br>
<div id="d1"></div>
<hr color="red">

패스워드1: <input type="password" name="pw1" class="pw1"><br>
패스워드2: <input type="password" name="pw2" class="pw2">
<button type="button" class="b2">패스워드 체크</button>
<br>
<div id="d2"></div>
</body>
</html>




