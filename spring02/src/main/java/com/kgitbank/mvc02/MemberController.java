package com.kgitbank.mvc02;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	//�̱��� ������� ��ü�� �ּҰ��� ã�Ƽ�
	//dao������ �־��ַ�.
	@Autowired
	MemberDAO dao;
	
	@RequestMapping("insert")
	public void insert(MemberDTO memberDTO) {
		System.out.println("��Ʈ�ѷο��� �Է��� �� ����..");
		//dbó��...
		dao.insert(memberDTO);
		//views�Ʒ��� insert.jspȣ��
	}
}





