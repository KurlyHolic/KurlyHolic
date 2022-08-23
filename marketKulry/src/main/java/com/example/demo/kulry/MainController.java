package com.example.demo.kulry;

import java.io.IOException;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@Autowired
	MainService service; 
	
	@RequestMapping(value = "/")
	public String main(Model model) throws IOException {
		Map<String, Object> main1 = service.getSearch("name", "친환경");
		model.addAttribute("ecoList", main1);
		
		Map<String, Object> main2 = service.getSearch("category", "쌀");
		model.addAttribute("riceList", main2);
		
		return "direngine";
	}

	@RequestMapping(value = "/category")
	public String category(MainDto param, Model model) throws IOException {
		Map<String, Object> main1 = service.getSearch(param.getCate(), param.getKeyword());
		model.addAttribute("list", main1);
		
		return "category";
	}

	@RequestMapping(value = "/detail")
	public String detail(MainDto param, Model model) throws IOException {
		Map<String, Object> main1 = service.getSearch(param.getCate(), param.getKeyword());
		model.addAttribute("info", main1);
		
		return "detail";
	}
	
	@RequestMapping(value = "/mypage")
	public String mypage(MainDto param, Model model) throws IOException {
//		Map<String, Object> main1 = service.getSearch(param.getCate(), param.getKeyword());
//		model.addAttribute("info", main1);
		
		return "mypage";
	}

	@RequestMapping(value = "/login")
	public String login() {
		return "login";
	}

	@RequestMapping(value = "/test")
	public String direngine() {
		return "main";
	}
	
}
