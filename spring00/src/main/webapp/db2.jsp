<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
/* ��ũ��Ʈ��  */

/* control�ϴ� �κ� : Control*/
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String name = request.getParameter("name");
String tel = request.getParameter("tel");


/* dbó���ϴ� Ư���� �κ�: ����� ������ ����. (4�ܰ�): Model */
//dbó�� 4�ܰ�
//1. connector����
Class.forName("com.mysql.jdbc.Driver");
out.print("1. connector���� ok..<br>");

//2. db����
String url = "jdbc:mysql://localhost:3308/spring";
String user = "root";
String password = "1234";

Connection con = DriverManager.getConnection(url, user, password);
out.print("2. db���� ok..<br>");	
 
//3. sql�� ��üȭ
String sql = "insert into member values (?,?,?,?)";
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1, id);
ps.setString(2, pw);
ps.setString(3, name);
ps.setString(4, tel);

out.print("3. sql�� ��üȭ ok..<br>");	

//4. sql�� db�� ����
ps.executeUpdate();

/* ó�� ����� �����ִ� �κ�: View */
out.print("4. sql�� db�� ���� ok..<br>");	








%>
</body>
</html>