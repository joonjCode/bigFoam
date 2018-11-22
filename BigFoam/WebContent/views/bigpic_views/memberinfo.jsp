<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">
<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css"> -->
<!-- <link rel='stylesheet' href='https://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css'> -->
<meta charset="UTF-8">
<link rel="stylesheet" href="../resources/css/bigpic_css/SelfIntroduction.css">
<link rel="stylesheet" href="../resources/css/bigpic_css/memberinfo.css" />
<link rel="stylesheet" href="../resources/css/bigpic_css/icon.css">

<title>Member Info</title>
</head>
<body>
	<script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>
	
	<div class="smenu">
		<table>
			<tr>
				<td style="padding-bottom:5px;">
					<a href="#id1" id="atag"><b>계정 기본정보</b></a>
				</td>
			</tr>
			<tr>
				<td style="padding-bottom:5px;">
					<a href="#id2" id="atag"><b>프로필</b></a>
				</td>
			</tr>
			<tr>
				<td style="padding-bottom:5px;">
					<a href="#id3" id="atag"><b>소유권 표시</b></a>
				</td>
			</tr>
			<tr>
				<td style="padding-bottom:5px;">
					<a href="#id4" id="atag"><b>알림</b></a>
				</td>
			</tr>
			<tr>
				<td style="padding-bottom:5px;">
					<a href="#id5" id="atag"><b>소셜 네트워크</b></a>
				</td>
			</tr>
			<tr>
				<td style="padding-bottom:5px;">
					<a href="#id6" id="atag"><b>보안</b></a>
				</td>
			</tr>
			<tr>
				<td>
					<a href="#id7" id="atag"><b>앱</b></a>
				</td>
			</tr>
		</table>
	</div>

	<div class="inform">

		<div class="form-group">
			<h1 id="id1">계정 기본정보</h1>
			<label for="exampleInputEmail">이메일 주소</label> 
			<input type="email" class="form-control" id="exampleInputEmail" placeholder="이메일을 입력하세요">
		</div>

		<div class="form-group">
			<label for="exampleInputPassword">비밀번호</label> <br />
			<button type="submit" class="btn btn-default" id="exampleInputPassword">
				<b>비밀번호 변경</b>
			</button>
		</div>

		<div class="form-group">
			<label for="exampleSelectLanguage">언어</label> 
			<select class="form-control" id="exampleSelectLanguage">
				<option>한국어</option>
				<option>영어</option>
			</select>
		</div>

		<div class="form-group">
			<label for="exampleSelectNation">국가</label> 
			<select class="form-control" id="exampleSelectNation">
				<option>대한민국(대한민국)</option>
				<option>미국</option>
			</select>
		</div>

		<div class="form-group">
			<label for="exampleSelectGender">성별</label> <br /> 
			<label class="radio-inline"> 
				<input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">남성
			</label>
			<label class="radio-inline"> 
				<input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">여성
			</label>
			<label class="radio-inline">
				<input type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3">사용자지정
			</label>
		</div>

		<div>
			<label for="exampleSelectPrivacy">개인정보 보호</label>
		</div>
		<div class="checkbox">
			<label> 
				<input type="checkbox" checked data-toggle="toggle">
			</label>
			<p>검색 엔진(예: Google)에서 프로필을 숨기세요.<a href="" id="atag"> • 자세히 알아보기</a></p>
		</div>

		<div>
			<label for="exampleSelectPersonalization">개인 설정</label>
		</div>
		<div class="checkbox">
			<label> 
				<input type="checkbox" checked data-toggle="toggle">
			</label>
			<p>
				방문하는 사이트를 사용하여 더 나은 추천과 광고를 보세요.
				<a href="" id="atag"> • 자세히 알아보기</a>
			</p>
			<br />
			<label> 
				<input type="checkbox" checked data-toggle="toggle">
			</label>
			<p>
				BigPic 파트너의 정보를 사용하여 더 나은 추천과 광고를 보세요.
				<a href="" id="atag"> • 자세히 알아보기</a>
			</p>
		</div>

		<div class="form-group">
			<label for="exampleInputClearHistory">비밀번호</label> <br />
			<button type="submit" class="btn btn-default" id="exampleInputClearHistory">
				<b>최근 검색 기록 지우기</b>
			</button>
			<p>추천 검색어에서 최근 검색한 기록을 제거하세요.</p>
		</div>

		<div class="form-group">
			<label for="exampleInputAccountDisable">계정</label> <br />
			<button type="submit" class="btn btn-default" id="exampleInputAccountDisable">
				<b>계정 비활성화</b>
			</button>
		</div>

			<h1 id="id2">프로필</h1>
		<div class="form-group">
			<label for="exampleInputEmail">이름</label> 
			<input type="text" class="form-control" id="exampleInputName">
			<label for="exampleInputEmail">성</label> 
			<input type="text" class="form-control" id="exampleInputFirstName">
			
			<h3>사진</h3>
			<img src="resources/images/bigpic_images/human.png" id="img" alt="" />
			<button type="submit" class="btn btn-default" id="exampleInputAccountDisable">
				<b>사진 변경</b>
			</button>
		</div>		


		<h3>사용자이름</h3>
		<div style="display:flex;">
			<p>www.bigpictures.com/</p>&nbsp;<input type="text" class="form-control" id="exampleInputUserName">
		</div>
		
		<div class="wrapper">
			<h3>자기소개</h3>
			<form class="inline-form">
				<span class="char-count">250</span>
				<textarea data-length=250 class="char-textarea" cols="50" rows="10"></textarea>
			</form>
		</div>
		
		<div class="form-group">
			<label for="exampleInputLoc">위치</label> 
			<input type="text" class="form-control" id="exampleInputLoc">
		</div>

		<div>
			<h1 id="id3">소유권 표시</h1>
			<p>
				웹 사이트 소유권을 표시하면 이미 BigPic에 표시된 콘텐츠의 기여 및 분석데이터을<br/> 확인할수 있습니다.
				<a href="" id="atag"> • 자세히 알아보기</a>
			</p>
		<div class="form-group" id="propertyForm">
			<input type="text" class="form-control" id="exampleInputProperty">
			<button type="submit" class="btn" id="exampleInputPropertyBtn">
				<b>소유권 표시</b>
			</button>
		</div>
		</div>

		<div>
			<h1 id="id4">알림</h1>
			<p>
				중요한 변경사항에 대해서는 항상 알려드립니다. 이외에도 무엇에대해 소식을 받고<br /> 싶은지 선택하세요.
				<a href="" id="atag"> • 자세히 알아보기</a>
			</p>
			
			<div class="form-group" id="">
				<table style="width:85%;">
					<tr>
						<td style="padding-top:15px;padding-bottom:15px;">
							<p>BigPic에서<br />다른 사람들의 BigPic 활동</p>
						</td>
						<td style="text-align:end;padding-top:15px;padding-bottom:15px;">
							<button type="submit" class="btn btn-default" id="exampleInputModification1">
								<b>수정</b>
							</button>
						</td>
					</tr>
					<tr style="border-top:1px solid #e6e6e6;padding-top:15px;padding-bottom:15px;">
						<td>
							<p>이메일로<br />전부(해제한 이메일 제외)</p>
						</td>
						<td style="text-align:end;padding-top:15px;padding-bottom:15px;">
							<button type="submit" class="btn btn-default" id="exampleInputModification2">
								<b>수정</b>
							</button>
						</td>						
					</tr>
					<tr style="border-top:1px solid #e6e6e6;">
						<td style="padding-top:15px;">
							<p>푸시알림으로<br />모든 항목(해제한 푸시 제외)</p>
						</td>
						<td style="text-align:end;padding-top:15px;">
							<button type="submit" class="btn btn-default" id="exampleInputModification3">
								<b>수정</b>
							</button>
						</td>
					</tr>
				</table>
			</div>
		</div>

		<div>
			<h1 id="id5">소셜 네트워크</h1>
			<p>
				<a href="" id="atag"> • 자세히 알아보기</a>
			</p>
			
			<h3>Facebook</h3>
			<div>
				<table>
					<tr>
						<td style="width:15%;">
							<a class="facebookBtn smGlobalBtn" id="social"></a>
							<label class="switch" style="display:none;">
								<input type="checkbox"> 
								<span class="slider round"></span>
							</label>
						</td>
						<td style="width:85%;">						
							<label class="switch" style="display:none;">
								<input type="checkbox"> 
								<span class="slider round"></span>
							</label>
							<p style="display: none;">Facebook에 연결됨</p>
							<p>Facebook에 연결되지 않음</p>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<label class="switch" style="margin-left:10px;">
								<input type="checkbox"> 
								<span class="slider round"></span>
							</label>
							<p style="display: none;">Facebook계정 사용</p>
							<p>Facebook계정 사용</p>
						</td>
					</tr>
				</table>
		</div>
			<h3>Google+</h3>
		<div>
			<table>
				<tr>
					<td style="width:15%;">
						<a class="googleplusBtn smGlobalBtn" id="social"></a>
						<label class="switch" style="display:none;">
							<input type="checkbox"> 
							<span class="slider round"></span>
						</label>
					</td>
					<td style="width:85%;">						
						<label class="switch" style="display:none;">
							<input type="checkbox"> 
							<span class="slider round"></span>
						</label>
						<p style="display: none;">Google+에 연결됨</p>
						<p>Google+에 연결되지 않음</p>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<label class="switch" style="margin-left:10px;">
							<input type="checkbox"> 
							<span class="slider round"></span>
						</label>
						<p style="display: none;">Google+에 사용</p>
						<p>Google+에 사용</p>
					</td>
				</tr>
			</table>
		</div>

		<div>
			<h1 id="id6">보안</h1>
			<h5>
				<b>회원님의 계정에 로그인한 기기 목록입니다.</b>
				<br />
				<b>회원님이 로그인하지 않은 세션을 종료하세요.</b>
			</h5>
			<button type="submit" class="btn btn-default" id="exampleInputSession">
				<b>세션 표시</b>
			</button>
		</div>

		<div>
			<h1 id="id7">앱</h1>
			<h5>허용한 앱이 없습니다.</h5>
		</div>
		
	</div>
</div>

<div class="footer">
	<table>
		<tr>
			<td class="btnCancel">
				<button type="submit" class="btn" id="exampleInputCancel">
					<b>취소</b>
				</button>
			</td>
			<td class="btnSave">
				<button type="submit" class="btn" id="exampleInputSave">
					<b>설정 저장</b>
				</button>
			</td>
		</tr>
	</table>
</div>

	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="../resources/js/bigpic_js/memberinfo.js" type="text/javascript"></script>
	<script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>
	<!-- <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script> -->
	<script src="../resources/js/bigpic_js/SelfIntroduction.js"></script>

</body>
</html>