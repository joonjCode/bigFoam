<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <div style="text-align: -webkit-center;">
      <h2>업로드 완료</h2>
      <input type="button" value="업로드 완료" onclick="refresh()" /> 
      <%-- <a href="download.do?fileName=${fileName }">${fileName }</a>  --%>
     <%--  <img src="${filePath }" alt="${fileName }" /> --%>
   </div>

   <script type="text/javascript">
      function refresh() {
         window.opener.location.reload();
         self.close();
      }
   </script>
</body>
</html>