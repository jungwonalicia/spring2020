package com.kgitbank.mvc02;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BbsController {

	@Autowired
	BbsDAO dao;
	
	@RequestMapping("insert2")
	public void insert2(BbsDTO bbsDTO) {
		//dbó��
		dao.insert(bbsDTO);
		//viewȣ���� �� ����.
	}
}


