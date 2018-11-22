package kr.co.bigpic.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.bigpic.users.dao.ImgDao;
import kr.co.bigpic.users.dto.ImgDto;

@Controller
public class CatDetailController {
	@Autowired
	ImgDao imgdao;
	
	@RequestMapping("/cdetail.do")
	public ModelAndView cdetail() {
		
		List<ImgDto> list =imgdao.selectAllImg();
		
		
		ModelAndView mav = new ModelAndView("mainPage","cname",list);
		mav.addObject("cdetail","cdetail");
		
		return mav;
		
	}
	
	@RequestMapping("/cdetailshow.do")
	public ModelAndView cdetailshow(@RequestParam("cno") String cname, @ModelAttribute ImgDto imgdto
			, HttpSession session) {
		
		List<ImgDto> list = imgdao.selectSomeimg(cname);
		
		ModelAndView mav  = new ModelAndView("mainPage","cname",list);
		mav.addObject("cbody","cbody");
		
		return mav;
	}
}
