package org.odow.main.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.odow.domain.Original;
import org.odow.main.service.MainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/main/*")
public class MainController {

	@Autowired
	MainService service;
	
	@GetMapping("/index")
	public void index(Model model , HttpSession session) {
		model.addAttribute("aList", service.getAll());
		model.addAttribute("bList", service.getBoy());
		model.addAttribute("gList", service.getGirl());
		model.addAttribute("nList", service.getNaver());
	}
	
/*	@PostMapping("/index")
	@ResponseBody
	public List<Original> postIndex(String keyword) {
		return service.getOriginalData(keyword);
	}*/
	
	@GetMapping("/boardlist")
	public void boardList(@RequestParam(value="page", defaultValue="1") int page, 
			Model model, @RequestParam(value="pageNum", defaultValue="1") int pageNum,
			@RequestParam(value="searchType", defaultValue="") String searchType,
			@RequestParam(value="searchWord", defaultValue="") String searchWord) {
		model.addAttribute("page", page);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("searchType", searchType);
		model.addAttribute("searchWord", searchWord);
	}
	
	@GetMapping("/popup")
	public void popup(String keyword, Model model) {
		model.addAttribute("keyword", keyword);
	}
	
	@PostMapping("/popup")
	@ResponseBody
	public List<Original> postPopup(String keyword){
		return service.getOriginalData(keyword);
	}
	
	@GetMapping("/admin")
	public void admin() {
		
	}
	
	@PostMapping("/loginProcess")
	public String login(String id, Boolean remember, Model model) {
		model.addAttribute("remember", remember);
		model.addAttribute("id", id);
		
		return "redirect:/main/index";
	}
	
	@GetMapping("/chart")
	public void chart() {
		
	}
}
