package com.kgitbank.mvc05;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {
	
	@Autowired
	SqlSessionTemplate my;
	
	public void delete(MemberDTO memberDTO) {
		my.delete("member.delete", memberDTO);
	}
	
	public void insert(MemberDTO memberDTO) {
		my.insert("member.insert", memberDTO);
	}
}
