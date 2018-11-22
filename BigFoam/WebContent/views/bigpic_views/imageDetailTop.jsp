<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<!-- MODAL SEND -->

	<div class="modal fade" id="send" tabindex="-1" role="dialog"
		aria-labelledby="sendTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">이 핀 공유</h5>

					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<!-- AddToAny BEGIN -->
					<div class="a2a_kit a2a_kit_size_32 a2a_default_style">
						<a class="a2a_button_facebook"></a> <a class="a2a_button_twitter"></a>
						<a class="a2a_button_google_plus"></a> <a
							class="a2a_button_linkedin"></a> <a class="a2a_button_tumblr"></a><a
							class="a2a_dd" href="https://www.addtoany.com/share"></a>
					</div>
					<script>
						var a2a_config = a2a_config || {};
						a2a_config.onclick = 1;
					</script>
					<script async src="https://static.addtoany.com/menu/page.js"></script>
					<!-- AddToAny END -->

					또는 다음으로 전송<br> <input type="search" name="search" id="search"
						placeholder="이메일 주소" />
				</div>
				<div class="modal-footer"></div>
			</div>
		</div>
	</div>


	
	
	<!-- card -->
	
	<div class="card text-center">
		<div class="card-header" align="left">
			<div>
				<i class="fas fa-chevron-left"></i> 
				<input type="button" class="btn" value="뒤로가기" onclick="location.href='home.do'" />
			</div>

		</div>
		<div class="card-body">
			<div class="left" onclick="location.href='home.do'"></div>
			<div class="c-container">
				<div class="c-div">
					<div class="c-menu">
						<div class="dropdown">
							<div class="dropdownt" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false">
								<i class="fas fa-ellipsis-h"></i>
							</div>
							<div class="dropdown-menu dropdown-menu-left"
								aria-labelledby="dropdownMenu">
								<a class="dropdown-item" href="#" data-toggle="modal"
									data-target="#report"> 신고하기</a>
							</div>
						</div>
						<div>
							<a class="send" href="#" data-toggle="modal" data-target="#send">
								보내기</a>
							<input type="submit" value="Save" id="exampleInputSave" style="" onclick="#"/>
						</div>
					</div>
				</div>
				<div class="item">
					<img
						src="${dto.filedir } ">
				</div>
				<div>
					<div class="commentBox">
						<div class="commentBoxTop">
							<div>
								<h3>댓글</h3>
							</div>
							<div>
								<i class="fas fa-chevron-down"></i>
							</div>
						</div>
						<div class="commentBoxMid">
							<div>
								<p>피드백을 공유하거나 질문을 하거나 칭찬을 남겨주세요</p>
							</div>
							<div>
								<textarea name="" id="" cols="100" rows="5" placeholder="댓글 추가"
									style="resize: none;"></textarea>
							</div>
						</div>
						<div class="commentBoxBot">
							<div class="commentBoxBotT">
								<div>
									<i class="fas fa-user-circle"></i>
								</div>
								<div class="">xxx님의 댓글</div>
								<div class="">Hits</div>
							</div>
							<div></div>
						</div>
					</div>
				</div>

			</div>

			<div class="right" onclick="location.href='home.do'"></div>
		</div>
	</div>

	<div>
		<h3>유사한 핀 더보기</h3>
	</div>
	<script type="text/javascript">
		
	</script>
</body>
</html>