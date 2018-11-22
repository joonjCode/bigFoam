<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Upload</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
</head>
<body>

   <form:form method="post" action="upload.do" modelAttribute="uploadFile" enctype="multipart/form-data">
      <div class="form-group">
         <label for="exampleInputFileName">파일명</label> 
         <input type="text" class="form-control" id="fname" name="fname" placeholder="File Name">
      </div>
      <div class="form-group">
         <label for="exampleInputCategory">카테고리명</label> 
         <input type="text" class="form-control" id="cname" name="cname" placeholder="Category Name">
      </div>
      <div class="form-group" style="text-align:-webkit-center;">
      <input type="file" name="file" class="file" />
      <form:errors path="file" />
      <input type="hidden" name="usernum_pk" value="${sessionScope.sessionNum}" />
      
         <button type="submit" class="btn btn-default">전송</button>
      </div>
   </form:form>

</body>
</html>