package kr.co.bigpic.users.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.bigpic.users.dao.ImgDao;
import kr.co.bigpic.users.dto.ImgDto;
import kr.co.bigpic.users.dto.UsersDto;
import kr.co.bigpic.users.service.UsersService;

@Controller
public class UsersController {

   @Autowired
   private UsersService service;
   
   @Autowired
   private ImgDao imgDao;

   @RequestMapping("/BigPic/login.do")
   public ModelAndView aa() {
      return new ModelAndView("bigpic_views/login", "msg", "msg");
   }

   @RequestMapping(value = "/BigPic/register.do", method = RequestMethod.POST)
   public String register(@ModelAttribute UsersDto dto) {
      service.insertUser(dto);
      return "redirect:/BigPic/login.do";
   }
   
   @RequestMapping(value="/BigPic/home.do")
   public ModelAndView home(HttpServletRequest req) {
      HttpSession session = req.getSession(true);
      ModelAndView mv=new ModelAndView();
      List<ImgDto> list = imgDao.selectAllImg();
      
      mv.addObject("img", list);
      
      session.setAttribute("sessionNum2", "sessionNum");
      session.setAttribute("sessionId2", "sessionId");
      session.setMaxInactiveInterval(60 * 30);
      mv.addObject("img",list);
      mv.addObject("main","main");
      mv.setViewName("bigpic_views/mainPage2");
      return mv;
      
      
   }
   @RequestMapping(value = "/BigPic/main.do", method = RequestMethod.POST)
   public ModelAndView signin(@ModelAttribute("dto") UsersDto dto,         
         HttpServletRequest req) {

      HttpSession session = req.getSession(true);
      UsersDto usersdto = service.signin(dto);
      
      List<ImgDto> list=imgDao.selectAllImg();
      
      ModelAndView mView = new ModelAndView();

      if (usersdto == null) {
         mView.addObject("msg", "占쎈툡占쎌뵠占쎈탵 占쎌깏占쏙옙 �뜮袁⑨옙甕곕뜇�깈�몴占� 占쎌넇占쎌뵥占쎈릭占쎄쉭占쎌뒄");
         mView.setViewName("bigpic_views/loginOk");
      } else {
         mView.addObject("msg", usersdto.getId());
         mView.addObject("img",list);
         /*Map<String, Object> se=new HashMap<String,Object>();
         se.put("userID", usersdto.getId());
         se.put("userNum", usersdto.getUsernum_pk());*/
         /*session.setAttribute("sessionUser", se);*/
         session.setAttribute("sessionNum",usersdto.getUsernum_pk());
         session.setAttribute("sessionId",usersdto.getId());
         session.setMaxInactiveInterval(60 * 30);
         mView.addObject("main","main");
         mView.setViewName("bigpic_views/mainPage");
         
      }
      
      
      return mView;
   }

   @ResponseBody
   @RequestMapping("/BigPic/checkId.do")
   public Map<String, Object> checkId(@RequestParam String id) {
      int count = 0;
      Map<String, Object> map = new HashMap<String, Object>();
      count = service.isExistId(id);
      System.out.println(count);
      map.put("count", count);

      return map;

   }
   
   @RequestMapping("/BigPic/logout.do")
   public String logout(HttpServletRequest req) {
      HttpSession session=req.getSession(false);
      if(session!=null) {
         session.invalidate();
      }
      
      return "redirect:/BigPic/login.do";
   }
   @RequestMapping("/BigPic/memberInfo.do")
   public ModelAndView memberInfo() {
      return new ModelAndView("bigpic_views/memberinfo", "msg", "msg");
   }
   @RequestMapping("/BigPic/notice.do")
   public ModelAndView notice() {
      return new ModelAndView("bigpic_views/noticeMessage","msg","msg");
   }
   @RequestMapping("/BigPic/myPage.do")
   public ModelAndView myPage() {
      ModelAndView mav = new ModelAndView("bigpic_views/mainPage2","msg","msg");
      mav.addObject("mpage","mpage");
      
	  return mav;
      
   }
}