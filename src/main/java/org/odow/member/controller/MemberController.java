package org.odow.member.controller;


import javax.servlet.http.HttpSession;

import org.odow.domain.Member;
import org.odow.member.service.MemberServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.extern.java.Log;

@Log
@Controller
@RequestMapping("/member/*")
public class MemberController {
	@Autowired
	MemberServiceImpl service;
	
	@GetMapping("/testlogin")
	public void testlog(Model model , HttpSession session) {
	System.out.println("체크체크");
		if(session.getAttribute("login") != null) {
			System.out.println("들어옴");
			System.out.println(session.getAttribute("login"));
		}
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
	
	@PostMapping("/logincheck")
	@ResponseBody
	public Boolean logincheck(String id , String pw ,Boolean remember) {
		System.out.println("logincheck id :" +id );
		System.out.println("logincheck pw :" + pw );
		System.out.println("logincheck remember :" +remember);
		
		return service.logincheck(id, pw, remember);
		
		
	}
	
	@PostMapping("/dup")
	@ResponseBody
	public Boolean dupCheck(String id) {

		// true면 중복됨
		Boolean result = null;
		result =service.idcheck(id);
		return result;
	}
	
	
	
	@PostMapping("/loginProcess")
	public String process(String id , String pw , Boolean remember, Model model) {
		System.out.println("loginProcess remember :" + remember);
		System.out.println("loginProcess id : " +id );
		System.out.println("loginProcess pw :" + pw );
		
		model.addAttribute("remember" ,remember);
		model.addAttribute("id" ,id);
		
		return "redirect:/member/testlogin";
	}

	
}
