package org.odow.web;

import org.odow.content.service.ContentService;
import org.odow.domain.Content;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import lombok.extern.java.Log;

@Log
@Controller
@RequestMapping("/oneday/*")
public class OneDayController {
	
	@Autowired
	private ContentService service;
	
	@GetMapping("/insert")
	public void insert() {
		
	}
	
	@PostMapping("/insert")
	public void insertData(Content content) {
		log.info("title : " + content.getTitle());
		log.info("writer : " + content.getWriter());
		log.info("content : " + content.getContent());
	}
	
	@GetMapping("/detail")
	public void detail() {
		
	}
	
	@GetMapping("/test")
	public void test() {
		
	}
}
