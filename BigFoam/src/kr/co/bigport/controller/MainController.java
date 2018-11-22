package kr.co.bigport.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
	
	@RequestMapping("/portfolio/main.do")
	public ModelAndView bfmain() {
		return new ModelAndView("bigport_views/mainPage","main","main");
	}
}
