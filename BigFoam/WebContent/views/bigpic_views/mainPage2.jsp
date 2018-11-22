<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BigPic</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet" href="../resources/css/bigpic_css/main.css" />
<link rel="stylesheet" href="../resources/css/bigpic_css/myPage.css" />
<link rel="stylesheet" href="../resources/css/bigpic_css/plusQuestion.css">
<link rel="stylesheet" href="../resources/css/bigpic_css/exportSearch.css">
<link rel="stylesheet" href="../resources/css/bigpic_css/headerSearch.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>

	<c:choose>
		<c:when test="${main eq 'main' }">

			<jsp:include page="body.jsp">
				<jsp:param value="" name="" />
			</jsp:include>
		</c:when>
		<c:when test="${cdetail eq 'cdetail' }">
			<jsp:include page="cDetail.jsp">
				<jsp:param value="" name="" />
			</jsp:include>
		</c:when>
		<c:when test="${cbody eq 'cbody' }">
			<jsp:include page="cBody.jsp">
				<jsp:param value="" name="" />
			</jsp:include>
		</c:when>
		<c:when test="${search eq 'search' }">
			<jsp:include page="searchBody.jsp">
				<jsp:param value="" name="" />
			</jsp:include>
		</c:when>
		<c:when test="${mpage eq 'mpage' }">
			<jsp:include page="myPage.jsp">
				<jsp:param value="" name="" />
			</jsp:include>
		</c:when>

	</c:choose>
	<jsp:include page="plusQuestion.jsp"></jsp:include>


	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
	<script src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/masonry/4.2.1/masonry.pkgd.min.js"></script>
	<script src="https://unpkg.com/imagesloaded@4/imagesloaded.pkgd.min.js"></script>

	<script type="text/javascript"
		src="http://www.wookmark.com/js/jquery.wookmark.min.js?v=10"></script>
	<script type="text/javascript"
		src="http://cdnjs.cloudflare.com/ajax/libs/jquery.imagesloaded/3.0.4/jquery.imagesloaded.min.js"></script>

	<script type="text/javascript" src="../resources/js/bigpic_js/popup.js"></script>

</body>
</html>