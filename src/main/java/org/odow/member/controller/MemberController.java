package org.odow.member.controller;


import org.odow.domain.Member;
import org.odow.member.service.MemberServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.extern.java.Log;

@Log
@Controller
@RequestMapping("/member/*")
public class MemberController {
	@Autowired
	MemberServiceImpl service;
	
	@GetMapping("/home")
	public void home() {
		
	}
	
	@GetMapping("/loginhome")
	public void loginhome() {
		
	}
	
	@GetMapping("/login")
	public void login1() {
		
	}
	
	@PostMapping("/login")
	public String login(Member member) {
		System.out.println(member);
		
		log.info(""+ member);
		service.login(member);

		return "redirect:/member/loginhome";

	}
	
	
	@PostMapping("/dup")
	@ResponseBody
	public Boolean dupCheck(String id) {

		// true면 중복됨
		Boolean result = null;
		result =service.idcheck(id);
		return result;
	}

}
