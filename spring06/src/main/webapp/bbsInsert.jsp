<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3></h3>
<hr color="red">
<form action="insert2">
<table border="1">
<tr align="center">
	<td width="100" bgcolor="yellow">제목</td>
	<td width="200">
	<input type="text" name="title"></td>
</tr>
<tr align="center">
	<td width="100" bgcolor="yellow">내용</td>
	<td width="200">
	<input type="text" name="content"></td>
</tr>
<tr align="center">
	<td width="100" bgcolor="yellow">작성자</td>
	<td width="200">
	<input type="text" name="writer" value="${id}" readonly="readonly"></td>
</tr>

</table>
<button type="submit">입력한 내용 서버로 전송</button>
</form>







</body>
</html>