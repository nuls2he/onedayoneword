package org.odow.main.web;

import org.odow.main.service.MainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/main/*")
public class MainController {

	@Autowired
	MainService service;
	
	@GetMapping("/main")
	public void main(Model model) {
		model.addAttribute("aList", service.getAll());
		model.addAttribute("bList", service.getBoy());
		model.addAttribute("gList", service.getGirl());
	}
	
	@GetMapping("/index")
	public void index(Model model) {
		model.addAttribute("aList", service.getAll());
		model.addAttribute("bList", service.getBoy());
		model.addAttribute("gList", service.getGirl());
		model.addAttribute("nList", service.getNaver());
	}
	
	@GetMapping("/boardlist")
	public void list(@RequestParam(value="page", defaultValue="1") int page, Model model, @RequestParam(value="pageNum", defaultValue="1") int pageNum) {
		model.addAttribute("page", page);
		model.addAttribute("pageNum", pageNum);
	}
}
