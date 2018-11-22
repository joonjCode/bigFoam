package kr.co.bigfoam.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
	@RequestMapping("/main/main.do")
	public ModelAndView bfmain() {
		return new ModelAndView("bigfoam_views/MainPage","bfmain","bfmain");
	}
}
