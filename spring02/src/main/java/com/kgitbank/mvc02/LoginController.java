package com.kgitbank.mvc02;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

	
	@RequestMapping("loginCheck")
	public String login(String id, String pw) {
		String dbId = "root";
		String dbPw = "1234";

		if (dbId.equals(id) && dbPw.equals(pw)) {
			System.out.println("�α��� ok.");
			return "loginOK";
		} else {
			System.out.println("�α��� not.");
			return "loginNOT";
		}
		
	}
	
	
	
	
	
	
}
