<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
   <div class="container">
      <div class="row">
         <div class="col-xs-6 col-sm-6" style="text-align: center; align-self: center;">
            <div class="imore">
               <h3>ID값 갖고오기</h3>
               <div class="dropdown">
                  <div class="dropdownt" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                     <i class="fas fa-ellipsis-h"></i>
                  </div>
                  <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenu">
                     <a class="dropdown-item" href="#" data-toggle="modal" data-target="#send"> 보내기</a>
                  </div>
               </div>
            </div>
         </div>
         
         <div class="clearfix visible-xs-block"></div>
         <div class="col-xs-6 col-sm-6" style="text-align: center;">
            <img src="../resources/images/bigpic_images/human.png" id="img" alt="user" style="width: 160px; height: 160px;" />
         </div>
      </div>
   </div>

   <div class="modal fade" id="send" tabindex="-1" role="dialog" aria-labelledby="sendTitle" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
         <div class="modal-content">
            <div class="modal-header">
               <h5 class="modal-title" id="exampleModalLongTitle">이 핀 공유</h5>

               <button type="button" class="close" data-dismiss="modal"
                  aria-label="Close">
                  <span aria-hidden="true">&times;</span>
               </button>
            </div>
            <div class="modal-body" style="text-align: center;">
               <!-- AddToAny BEGIN -->
               <div style="margin-left: 27%;">
                  <div class="a2a_kit a2a_kit_size_32 a2a_default_style" style="">
                     <a class="a2a_button_facebook"></a> 
                     <a class="a2a_button_twitter"></a>
                     <a class="a2a_button_google_plus"></a> 
                     <a class="a2a_button_linkedin"></a> 
                     <a class="a2a_button_tumblr"></a>
                     <a class="a2a_dd" href="https://www.addtoany.com/share"></a>
                  </div>
               </div>
               <script>
                  var a2a_config = a2a_config || {};
                  a2a_config.onclick = 1;
               </script>
               <script async src="https://static.addtoany.com/menu/page.js"></script>
               <!-- AddToAny END -->
               또는 다음으로 전송<br>
               <div class="container">
                  <form action="" class="search">
                     <div class="field">
                        <input type="text" class="input-search" id="input-search" name="input-search" required> 
                        <label for="input-search">Email</label>
                     </div>
                  </form>
               </div>
            </div>
            <div class="modal-footer"></div>
         </div>
      </div>
   </div>

   <!-- Main -->
   <div class="masonry" style="margin: 0 0.1em; margin-top: 30px;">
      <c:forEach var="c" items="${img}">
         <div class="item">
            <a href="/bigPic/detail.do?no=${c.imgno }"> 
               <img src="${c.filedir }" name="img">
               <input type="hidden" name="imgno" value="${c.filedir }" />
            </a>
            <div class="pin">
               <div class="more" style="width: 85%;">
                  <span style="text-align: left;">추천 핀</span>
               </div>
               <div class="more" style="width: 15%;">
                  <input type="submit" value="Save" id="exampleInputSave" style="" onclick="window.open('address','window_name','width=430,height=500,location=no,status=no,scrollbars=yes');" />
               </div>
               <div class="imore">
                  <div class="dropdown">
                     <div class="dropdownt" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-ellipsis-h"></i>
                     </div>
                     <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenu">
                        <a class="dropdown-item" href="#" data-toggle="modal" data-target="#report"> 신고하기</a> 
                        <a class="dropdown-item" href="#" data-toggle="modal" data-target="#send"> 보내기</a> 
                        <a class="dropdown-item" href="#">숨기기</a>
                        <div class="dropdown-divider"></div>
                        <div class="dropdown-item p-2 text-muted" style="max-width: 200px;">
                           <p>
                              회원님의 최근 활동을 <br>바탕으로 추천된 <br>핀입니다.
                           </p>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </c:forEach>
   </div>

</body>
</html>