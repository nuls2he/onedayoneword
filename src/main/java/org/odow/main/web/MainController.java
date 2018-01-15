package org.odow.main.web;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.odow.domain.ChartCount;
import org.odow.domain.Original;
import org.odow.main.service.MainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/main/*")
public class MainController {

	@Autowired
	MainService service;
	
	@GetMapping("/index")
	public void index(Model model , HttpSession session, 
			@RequestParam(value="type", defaultValue="") String type) {
		model.addAttribute("aList", service.getAll());
		model.addAttribute("bList", service.getBoy());
		model.addAttribute("gList", service.getGirl());
		model.addAttribute("nList", service.getNaver());
		model.addAttribute("type", type);
	}
	
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
		List<String> list = doCurrentDate();
		model.addAttribute("dayList", list);
	}
	
	@PostMapping("/popup")
	@ResponseBody
	public List<Original> postPopup(String keyword){
		return service.getOriginalData(keyword);
	}
	
	@GetMapping("/admin")
	public void admin(Model model) {
		
		model.addAttribute("todayKeyword", service.todayKeyword());
		model.addAttribute("allKeyword", service.allKeyword());
		model.addAttribute("newDic", service.newDic());
		model.addAttribute("excDic", service.excDic());
		
	}
	
	@PostMapping("/admin")
	@ResponseBody
	public List<String> postAdmin(Model model, String type) {
		List<String> list = new ArrayList();
		
		switch(type) {
		case "1":
			list = service.todayKeyword();
			break;
		case "2":
			list = service.allKeyword();
			break;
		case "3":
			list = service.newDic();
			break;
		case "4":
			list = service.excDic();
			break;
		}
		
		return list;
	}
	
	@PostMapping("/loginProcess")
	public String login(String id, Boolean remember, Model model) {
		model.addAttribute("remember", remember);
		model.addAttribute("id", id);
		
		return "redirect:/main/index";
	}
	
	@PostMapping("/chartCount")
	@ResponseBody
	public List<Integer> chartCount(ChartCount chartCount) {
		List<Integer> list = new ArrayList();
		list.add(service.getChartCountGirl(chartCount));
		list.add(service.getChartCountBoy(chartCount));
		
		return list;
	}
	
	@PostMapping("/excDicDelete")
	@ResponseBody
	public void excDicDelete(String word) {
		service.excDicDelete(word);
	}
	
	@PostMapping("/newDicDelete")
	@ResponseBody
	public void newDicDelete(String word) {
		service.newDicDelete(word);
	}
	
	@PostMapping("/excDicInsert")
	@ResponseBody
	public void excDicInsert(String word) {
		service.excDicInsert(word);
	}
	
	@PostMapping("/newDicInsert")
	@ResponseBody
	public void newDicInsert(String word) {
		service.newDicInsert(word);
	}
	
	public List<String> doCurrentDate() {
		
		List<String> list = new ArrayList();;
		SimpleDateFormat fm1 = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		
		list.add(fm1.format(date));
		for(int i = 1; i <= 6; i++) {
			date = new Date(date.getTime() - (1000 * 60 * 60 * 24 + i));
			list.add(fm1.format(date));
		}
		
		return list;
	}
}
