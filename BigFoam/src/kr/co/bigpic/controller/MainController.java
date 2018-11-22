package kr.co.bigpic.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.bigpic.users.dao.ImgDao;
import kr.co.bigpic.users.dto.ImgDto;

@Controller
public class MainController {
	
	@Autowired
	private ImgDao imgDao;
	
	/* @RequestMapping("/main.do")
	   public ModelAndView hello() {
	      return new ModelAndView("mainPage","msg","�븞�눦");      
	   }*/
	
	 @RequestMapping("/BigPic/detail.do")
	 public ModelAndView detail(@RequestParam("no")int no) {
		 
		 List<ImgDto> list =imgDao.selectAllImg();
		 ImgDto dto = imgDao.selectOneImg(no);
		 
		 ModelAndView mav = new ModelAndView();
		 mav.addObject("dto", dto);
		 mav.addObject("img",list);
		 mav.setViewName("bigpic_views/imageDetail");
		 
		 
		 return mav;
		 
		 		
	 }
	 @RequestMapping("/BigPic/down.do")
	 public ModelAndView down(@RequestParam("no") int no) {
		 List<ImgDto> list =imgDao.selectAllImg();
		 
		 ImgDto dto = imgDao.selectOneImg(no);
		 ModelAndView mav = new ModelAndView();
		 
		 mav.addObject("dto", dto);
		 mav.addObject("img",list);
		 mav.setViewName("bigpic_views/down");
		 return mav;
	 }
	 
	 @RequestMapping("/BigPic/policy.do")
	 public ModelAndView policy() {
		 return new ModelAndView("bigpic_views/policy","ok","ok");
	 }
	
	 @RequestMapping("/BigPic/business.do")
	 public ModelAndView business() {
		 return new ModelAndView("bigpic_views/BusinessLogin","ok","ok");
	 }
	 @RequestMapping(value = "/BigPic/search.do", method = RequestMethod.GET)
	   public ModelAndView search(@RequestParam("searchValue") String searchValue) {
	      System.out.println("searchValue : " + searchValue);
	      ModelAndView mv = new ModelAndView();
	      List<ImgDto> list = imgDao.searchList(searchValue);
	      System.out.println("list : " + list);
	      mv.addObject("searchList", list);
	      mv.addObject("search","search");
	      mv.setViewName("bigpic_views/mainPage");
	      return mv;
	   }
	 
}
