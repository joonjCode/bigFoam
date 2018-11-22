<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/bigpic_css/cDetail.css">
</head>
<body>
	 <div class="container">
      <div class="row">
         <div class="col-xs-12" style="text-align: center; align-self: center;">
            <h2>카테고리</h2>
            <ul class="homes-list">
               <c:forEach items="${cname}" var="c">
                  <li class="single-storey" id="author">
                     <a href="cdetailshow.do?cno=${c.cname}" onclick="refresh()" id="atag">${c.cname}</a> 
                     <input type="hidden" name="cdno" value="${c.imgno}" />
                  </li>
               </c:forEach>
            </ul>
         </div>
      </div>
   </div>
  <!--  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->
   <script  src="../resources/js/bigpic_js/cDetail.js"></script>        
</body>
</html>