package kr.co.bigpic.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.bigpic.admin.service.AdminService;
import kr.co.bigpic.users.dto.ImgDto;
import kr.co.bigpic.users.dto.UsersDto;

@Controller
public class AdminController {
   
      @Autowired
      private AdminService as;

   //admin 占쎈읂占쎌뵠筌욑옙嚥∽옙
   @RequestMapping("/BigPic/adminPage.do")
   public ModelAndView admin() {
         List<UsersDto> list = as.readUserAll();
      return new ModelAndView("bigpic_views/adminUser","list",list);
   }
   
   //占쎌읈筌ｏ옙 占쎌돳占쎌뜚 鈺곌퀬�돳
   @RequestMapping("/BigPic/adminUser")
   public ModelAndView userData() {
         List<UsersDto> list = as.readUserAll();
      return new ModelAndView("bigpic_views/adminUser","list",list);
   }      

   //占쎌돳占쎌뜚 占쎄텣占쎌젫
   @RequestMapping(value="/BigPic/delete", method=RequestMethod.POST)
   public String delete(
         @RequestParam("chk[]")List<Integer> usernum_pks) {
         for(Integer usernum_pk : usernum_pks)
            as.deleteUserOne(usernum_pk);
      return "redirect:/BigPic/adminUser";
   }   

   //野껊슣�뻻�눧占� 鈺곌퀬�돳
   @RequestMapping("/BigPic/adminPic")
   public ModelAndView userPic() {
         List<ImgDto> list = as.readImgAll();
      return new ModelAndView("bigpic_views/adminPic","list",list);
   }
   
   //野껊슣�뻻�눧占� 占쎄텣占쎌젫
   @RequestMapping(value="/BigPic/deleteImg", method=RequestMethod.POST)
   public String deleteImg(
         @RequestParam("chk[]")List<Integer> imgnos) {
         for(Integer imgno : imgnos)
            as.deleteImgOne(imgno);
      return "redirect:/BigPic/adminPic";
   }
      
}