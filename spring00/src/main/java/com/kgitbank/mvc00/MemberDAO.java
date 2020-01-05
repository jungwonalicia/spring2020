package com.kgitbank.mvc00;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class MemberDAO {

	public void insert(MemberDTO dto) {
		/* dbó���ϴ� Ư���� �κ�: ����� ������ ����. (4�ܰ�): Model */
		// dbó�� 4�ܰ�
		// 1. connector����
		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.print("1. connector���� ok..<br>");

			// 2. db����
			String url = "jdbc:mysql://localhost:3308/spring";
			String user = "root";
			String password = "1234";

			Connection con = DriverManager.getConnection(url, user, password);
			System.out.print("2. db���� ok..<br>");

			// 3. sql�� ��üȭ
			String sql = "insert into member values (?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, dto.getId());
			ps.setString(2, dto.getPw());
			ps.setString(3, dto.getName());
			ps.setString(4, dto.getTel());

			System.out.print("3. sql�� ��üȭ ok..<br>");

			// 4. sql�� db�� ����
			ps.executeUpdate();

			/* ó�� ����� �����ִ� �κ�: View */
			System.out.print("4. sql�� db�� ���� ok..<br>");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
