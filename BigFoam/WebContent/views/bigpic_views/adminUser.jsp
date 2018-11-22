<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>adminUser.jsp</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
<link rel="stylesheet" href="../resources/css/bigpic_css/main.css" />
<style type="text/css">
.btns {
	background-color: silver;
	width: 200px;
	height: 150px;
	float: left;
}

.table-responsive {
	float: center;
}

.dropbtn {
	background-color: #4CAF50;
	color: white;
	padding: 16px;
	font-size: 16px;
	border: none;
	cursor: pointer;
}

/* The container <div> - needed to position the dropdown content */
.dropdown {
	position: relative;
	display: inline-block;
}

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

/* Change color of dropdown links on hover */
.dropdown-content a:hover {
	background-color: #f1f1f1
}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {
	display: block;
}

/* Change the background color of the dropdown button when the dropdown content is shown */
.dropdown:hover .dropbtn {
	background-color: #3e8e41;
}

table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #f2f2f2
}

th {
	background-color: #4CAF50;
	color: white;
}
</style>
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	<script src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/masonry/4.2.1/masonry.pkgd.min.js"></script>
	<script src="https://unpkg.com/imagesloaded@4/imagesloaded.pkgd.min.js"></script>

	<script src="../resources/js/bigpic_js/body.js" type="text/javascript"></script>


	<div class="dropdown">
		<h5>관리자 페이지</h5>
		<a href="adminUser" class="btn btn-danger " role="button">회원관리</a> 
		<a href="adminPic" class="btn btn-warning " role="button">게시물관리</a>
	</div>

	<!-- <h4>회원 데이터 나오는곳</h4> -->

	<div class="table-responsive">
		<h3>회원 목록</h3>
		<form action="delete" method="post">
			<table class="table">
				<tr>
				</tr>
				<tr>
					<th><input type="checkbox" name="chk" id="chk" /></th>
					<th id="id">아이디</th>
					<th id="name">이름</th>
					<th id="email">이메일</th>
					<th id="usernum_pk">유저번호</th>
					<th id="signup_date">가입날짜</th>
				</tr>
				<c:forEach var="udto" items="${list }">
					<tr>
						<td><input type="checkbox" name="chk[]" id="ck"
							value="${udto.usernum_pk }" /></td>
						<td>${udto.id }</td>
						<td>${udto.name }</td>
						<td>${udto.email }</td>
						<td>${udto.usernum_pk }</td>
						<td>${udto.signup_date }</td>
					</tr>
				</c:forEach>
				<button type="submit">삭제</button>
			</table>
		</form>
	</div>
	<script type="text/javascript">
		$(function() {
			/* if($("input[name='chk']").prop("checked")==true){
			}else if($("input[name='chk']").prop("checked")==false){
			} */
			$("#chk").click(function() {
				if ($("input[name='chk']").prop("checked")) {
					$("input[name='chk[]']").prop("checked", true);
					var chk = document.getElemntByName("del_unit[]");

				} else {
					$("input[name='chk[]']").prop("checked", false);

				}
			})
		})
	</script>
</html>