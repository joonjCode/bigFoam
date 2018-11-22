package kr.co.bigpic.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.co.bigpic.users.dao.ImgDao;
import kr.co.bigpic.users.dto.ImgDto;

@Controller
public class FileUploadController {
   
   FileValidator fileValidator;
   
   @Autowired
   ImgDao imgdao;
  
 
   public void setFileValidator(FileValidator fileValidator) {
      this.fileValidator = fileValidator;
   }

   @RequestMapping(value = "/upload.do", method = RequestMethod.GET)
   public String uploadForm() {
      return "uploadPage";
   }

   @RequestMapping(value = "/upload.do", method = RequestMethod.POST)
   public ModelAndView upliad(@ModelAttribute("uploadFile")UploadFile file, HttpServletRequest req, BindingResult result
         , @ModelAttribute ImgDto imgdto,
         @RequestParam int usernum_pk, @RequestParam String fname, @RequestParam String cname) {
      //업로드한 파일 객체 가져오기
      //내부적으로 임의의 경로에 파일 보관한다.
      MultipartFile mfile=file.getFile();
      System.out.println("file : " + file);
      
      
      // 파일 유효성 검사 후 성공하면 계속 아니면 stop
      fileValidator.validate(file, result);
      if(result.hasErrors()) {
         return new ModelAndView("uploadPage");
      }
      
      
      HttpSession hs=req.getSession();
      ServletContext application=hs.getServletContext();
      String filePath=application.getRealPath("/data");
      
      System.out.println("filePath : " + filePath);
      
      String fileName=mfile.getOriginalFilename();
      //파일 객체
       File f= new File(filePath+"/"+fileName);
      
      System.out.println(f);
      try {
         mfile.transferTo(f);
      } catch (IllegalStateException e) {

         e.printStackTrace();
      } catch (IOException e) {

         e.printStackTrace();
      }
      
      imgdto.setFiledir("/bigPic/data/"+fileName);
      imgdto.setCname(cname);
      imgdto.setFilename(fileName);
      imgdto.setUsernum(usernum_pk);
      imgdto.setImgname(fname);
      imgdao.insertOne(imgdto);
      
      
      ModelAndView mav=new ModelAndView();
      mav.addObject("fileName", f.getName());
      mav.addObject("filePath", "data/"+f.getName());
      mav.setViewName("uploadFile");
      System.out.println();
      
      return mav;
   }
   
   //@responsbody 
   // 웹애플리케이션의 모델층에서 리턴한 경로가
   // 보통 jsp (뷰)로 포워딩 하여 출력 
   // 이때 뷰페이지를 통하지 않고 바로 출력스트림으로 보내는 것
   // 파일 다운로드, ajax
   
   @RequestMapping("/download.do")
   @ResponseBody
   public byte[] download(HttpServletRequest req, @RequestParam("imgno")int fileNo, HttpServletResponse resp) throws IOException {
      // download.do?filename = ${fileName}
      // 파일의 절대경로 
      String filePath = req.getSession().getServletContext().getRealPath("/data");
      
      System.out.println("파일 디렉토리 경로 " + filePath);
      ImgDto dto = imgdao.selectOneImg(fileNo);
      
      
      // 파일의 절대 경로
      String absFilePath = filePath + "/" +dto.getFilename();
      System.out.println("파일 절대 경로 : "+ absFilePath );
      
      File f = new File(absFilePath);
      
      // 전송할 파일을 byte[]로 형변화 시켜야 함
      byte[] b = FileCopyUtils.copyToByteArray(f);
      
      
      // 브라우저가 지금 보내는 내용을 이해 할수 있도록 헤더 추가
      String fn = new String(f.getName().getBytes(),"iso_8859_1");
      
      // 파일 이름
      resp.setHeader("Content-Disposition", "attachment;filename= \""+fn+"\"");
      //파일  길이
      resp.setContentLength(b.length);
      resp.setContentType("image/jpeg");
      
      return b;
      
   }
}