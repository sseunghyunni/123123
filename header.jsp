<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
request.setCharacterEncoding("utf-8");
String title = request.getParameter("title");
if (title == null || title.isEmpty()) {
	title = "Welcome to the KoreaHotel";
}
pageContext.setAttribute("title", title);
%>
<!DOCTYPE html>
<html>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Inconsolata">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<head>
<meta charset="UTF-8">
<title>${title }</title>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<style type="text/css">
* {
	box-sizing: border-box;
	font-family: "Inconsolata", sans-serif;
}

body {
	margin: 0;
	padding: 0;
}

.header-wrap {
	top: 0;
	text-align: center;
	background-color: rgba(256, 256, 256, 0.4);
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
	https: //saeatechnote.tistory.com/entry/CSS-display-fixed-%EA%B0%80% EC%9A%B4%EB%8D%B0-%EC%A0%95%
		EB%A0%AC%ED%95% 98% EA%B8%B0width: 1000px;
	margin: 0 auto;
	width: 1100px;
	top: 0;
	left: 0;
	right: 0;
	position: fixed;
	z-index: 10;
}

.center-tab a {
	color: white;
	text-shadow: 2px 2px 2px gray;
	text-decoration: none;
	font-size: 20px;
	font-weight: bold;
	margin: 0 40px 40px 0;
}

.center-tab>a:hover {
	color: black;
}

.center-tab {
	display: inline-block;
	width: 100%;
	margin: auto;
}

.center-tab #logo {
	width: 200px;
}

#loginout {
	margin-top: 40px;
	margin-right: 50px;
}

#loginout:hover {
	color: black;
}

.main-wrap {
	z-index: 1;
}

/* .footer-wrap {
         width: 100%;
        height: 200px;
        background-color: rgb(30,30,30);
        left: 0; 
        bottom: 0;
   } */
.footer {
	height: 200px;
	width: 100%;
	padding: 30px 0 30px 0;
	font-size: 13px;
	color: white;
	background-color: rgb(30, 30, 30);
	bottom: 0;
}

.footer .footer_menu {
	margin-bottom: 20px;
}

.footer ul {
	overflow: hidden;
	margin: 0 auto;
	width: 100%;
	text-align: center;
	margin-top: 10px;
}

.footer ul li {
	display: inline;
	margin: 0;
	height: 10px;
}

.footer ul.footer_menu li {
	padding-right: 15px;
}

.footer ul.company_info li {
	padding-right: 5px;
}

.footer ul.footer_menu li:after {
	content: '';
	width: 1px;
	height: 10px;
	background: #2e2e2e;
	display: inline-block;
	margin-left: 20px;
}

.footer ul.company_info li:after {
	content: '';
	width: 1px;
	height: 10px;
	background: #2e2e2e;
	display: inline-block;
	margin-left: 10px;
}

.footer ul li:last-child:after {
	display: none;
}

.footer p {
	text-align: center;
	margin-top: 10px;
}

.footer-img {
	width: 30px;
}

.footer-wrap .footer-content {
	color: rgb(170, 170, 170);
	column-count: 2;
	column-gap: 40px;
	font-weight: 300;
	width: 900px;
	margin: auto;
	padding: 50px 0 0 0;
}

.footer-bottom {
	bottom: 0;
	height: 20px;
	width: 100%;
	text-align: center;
	color: rgb(220, 220, 220);
	background-color: rgb(60, 60, 60);
}

.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: rgba(0, 0, 0, 0.6);
	min-width: 130px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	padding: 12px 16px;
	z-index: 1;
}

.dropdown-content a {
	color: white;
	margin: 0 20px 40px 20px;
	text-shadow: 0px 0px 0px;
	font-weight: lighter;
}

.dropdown:hover .dropdown-content {
	display: block;
}

.dropdown-content a:hover {
	text-decoration: underline;
}

.dropdown:hover .dropdown-content {
	display: block;
	display:
}

.dropdown:hover .dropbtn {
	background-color: rgb(190, 190, 190);
}

.test_1 {
	width: 100%;
	height: 100%;
	display: none;
	z-index: 200;
	position: fixed;
}

.test_1.open {
	display: block;
}

.test_1.open:before {
	content: '';
	width: 100%;
	height: 100%;
	z-index: 25;
	position: fixed;
	background: black;
	opacity: 0.4;
	top: 0;
}

.test_1 .test_2 {
	position: fixed;
	margin: auto;
	top: 50%;
	z-index: 30;
	background: white;
	left: 50%;
	width: 450px;
	padding: 20px 45px 50px;
	height: 630px;
	margin-top: -268px;
	margin-left: -255px;
}

.login-box h1 {
	text-align: center;
}

.login-text {
	width: 360px;
	height: 47px;
	padding-left: 20px;
	border: 1px solid #d9d9d9;
	margin: 0 0 10px;
	font-size: 14px;
}

.find {
	float: right;
}

#loginButton {
	border: none;
	width: 360px;
	padding: 10px 0;
	background: black;
	color: white;
	margin: 10px 0;
}

#loginButton:hover {
	outline: none;
	background: #5A5A5A;
}

#registerButton {
	border: none;
	width: 360px;
	padding: 10px 0;
	background: #E3EAF3;
	margin: 0 0 10px
}

#registerButton:hover {
	outline: none;
	background: #A4CAED;
}
/*    a {text-decoration: none; font-size: 0.9em; color: black;} */
.pop-up-close {
	border: none;
	position: absolute;
	top: -20.5px;
	right: -20px;
	width: 40px;
	height: 41px;
	text-indent: -9999px;
	background-color: transparent;
	background-image: url(resources/x-button.png);
	background-repeat: no-repeat;
	background-size: 100%;
	background-position: center;
}

.social-login {
	width: 30px;
	height: 30px;
	border-radius: 70%;
	overflow: hidden;
}

.profile {
	width: 100%;
	height: 100%;
	object-fit: cover;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript"
	src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=wkmpm92bc1&submodules=geocoder">
	
</script>


<script>
	// 카카오 초기화
	Kakao.init('6f3e6622db3f5814e8e191da89d96838');
	function loginWithKakao() {
		Kakao.Auth.authorize({
			redirectUri : 'http://localhost:8080/hotelfive/loginKakao', /* redirect되는 URL */
			scope : 'profile_nickname' /* 전달 받을 정보 */
		})
	}

	function createHiddenLoginForm(kakaoId) {

		var frm = document.createElement('form');
		frm.setAttribute('method', 'post');
		frm.setAttribute('action', 'loginKakao');
		var hiddenInput = document.createElement('input');
		hiddenInput.setAttribute('type', 'hidden');
		hiddenInput.setAttribute('name', 'userid');
		hiddenInput.setAttribute('value', kakaoId);
		frm.appendChild(hiddenInput);
		document.body.appendChild(frm);
		frm.submit();

	}
</script>

<script type="text/javascript">
	var filename;
	var ht = null;
	(function(id, scriptSrc, callback) {
		var d = document, tagName = 'script', $script = d
				.createElement(tagName), $element = d
				.getElementsByTagName(tagName)[0];

		$script.id = id;
		$script.async = true;
		$script.src = scriptSrc;

		if (callback) {
			$script.addEventListener('load', function(e) {
				callback(null, e);
			}, false);
		}
		$element.parentNode.insertBefore($script, $element);
	})('happytalkSDK',
			'https://design.happytalkio.com/sdk/happytalk.chat.v2.min.js',
			function() {
				ht = new Happytalk({
					siteId : '4000002422',
					siteName : 'Together',
					categoryId : '151348',
					divisionId : '151349'
				});
			});
	function aa() {
		//캡차 갖고오는 메소드
		//$('.test_1').css("display","block");
		//$('.test_1').css("display","block");
		$('.test_1').addClass('open');

		$.ajax({
			url : 'getImage',
			type : 'POST',
			dataType : 'JSON',
			success : function(data) {
				filename = data.filename;
				$('#getchaImg').attr("src", "resources/storage/" + filename);
			},
			error : function() {
				alert('AJAX 통신이 실패했습니다1.');
			}
		});
	}

	function cc() {
		//캡차 실패했을 캡차 input을 포커스하는 메소드
		$.ajax({
			url : 'getImage',
			type : 'POST',
			dataType : 'JSON',
			success : function(data) {
				filename = data.filename;
				$('#getchaImg').attr("src", "resources/storage/" + filename);
			},
			error : function() {
				alert('AJAX 통신이 실패했습니다1.');
			}
		});
		$('#input_key').val('');
		$('#input_key').focus();
	}

	function bbb() {
		//pop업 창 닫는 메소드
		$('.test_1').removeClass('open');
		//$('.test_1').css("display","none");
	}

	$(document).ready(function() {
		// 아이디 기억하기
		// savedIN에 savedID라는 쿠키를 가지고와서 저장
		var savedID = getCookie("savedID");
		// login_mId의 벨류 값에 쿠키에서 갖고온 ID를 저장하는 구문
		$('#login_mId').val(savedID);

		// savedID 가 있으면, 체크박스를 체크 상태로 유지
		if ($('#login_mId').val() != '') {
			$('#saveIDCheck').attr('checked', true);
		}

		// 체크박스의 상태가 변하면,
		// 즉 체크박스가 변하거나 키보드에 입력할 때, 쿠키를 7일간 저장시키는 기능
		$('#saveIDCheck').change(function() {
			// 체크되어 있다
			// 쿠키를  #login_mId에 있는 벨류를 saved아이디에 넣고 7일간 유지시키는 메소드
			if ($('#saveIDCheck').is(':checked')) {
				setCookie("savedID", $('#login_mId').val(), 7); // 7일간 쿠키에 보관
			}
			// 체크해제되어 있다.
			// 쿠키삭제하는 메소드
			else {
				deleteCookie("savedID");
			}
		});

		// 아이디를 입력할 때
		// login_mid의 키보드에 입력할 떄
		$('#login_mId').keyup(function() {
			// 체크되어 있다
			// savedIDCheck가 체크 되어있다면 즉 , saved ID가 있다면
			if ($('#saveIDCheck').is(':checked')) {
				// sabrdId에 login_mId에 저장 후 7일간 유지시키는 메소드
				setCookie("savedID", $('#login_mId').val(), 7); // 7일간 쿠키에 보관
			}
		});
	});
	// logout 메서드로 이동시키는 기능
	function fn_logout() {
		location.href = 'logout';
	}

	// loginCheck로 포스트 방식으로 매핑시키고 JSON형태로 반환한다. 그리고 input_key에 input_key에 입력된 값을 전달한다.
	function fn_login(f) {
		$.ajax({
			url : 'loginCheck',
			type : 'POST',
			dataType : 'JSON',
			data : 'input_key=' + $('#input_key').val(),
			// 매개변수로 data를 넘기는 function이 성공한다면 -> 즉 통신이 된다면
			success : function(data) {
				// 만약에 data의 result 값이 true면 ajax 로그인으로 매핑을 포스트 방식을 이용하여 json으로 리턴 그리고 mId와 mPw에 값 대입
				if (data.result == true) {
					$.ajax({
						url : 'login',
						type : 'POST',
						dataType : 'JSON',
						data : 'mId=' + $('#login_mId').val() + '&mPw='
								+ $('#login_mPw').val(),
						success : function(data) {
							// 만약 데이터의 결과값이 yes가 아니면 즉 no라면 
							// 속의 if로 들어가라
							// data-result가 만약 deleted라면 탈퇴한 회원이라는 알럿을 뛰어라
							if (data.result != 'YES') {
								if (data.result == 'DELETED') {
									alert('탈퇴한 회원입니다.');
								}
								// 만약 탈퇴한 회원이 아니라면 아이디와 비밀번호 중 하나를 틀린거니깐 알럿을 띄우고 로그인 비밀번호와 캡차 input을 초기화 한 후 pw로 포커스를 넘긴다.
								// 그 후에 캡차 이미지를 다시 가져온다.
								else {
									alert('로그인 실패 아이디와 비밀번호를 확인하세요.');
								}
								$('#login_mPw').val('');
								$('#input_key').val('');
								$('#login_mPw').focus();
								cc();
								// 만약 data-result가 yes라면 -> 다시 리로드해라
							} else {
								location.reload();
							}
						},
						// 애초에 success로 못 넘어간다면 ajax 통신이 실패함을 뛰어라
						error : function() {
							alert('AJAX 통신이 실패했습니다.2');
						}
					});
				}
				// 만약에 그림의 인증번호화 입력하신 인증번호가 다르다면 -> 캡차의 틀림을 의미하고 비운 후 포커스를 맞추고 다시 불러와라
				else {
					alert('그림의 인증번호와 입력하신 인증번호가 다릅니다.');
					$('#input_key').val('');
					$('#input_key').focus();
					cc();
				}
			},
			error : function() {
				alert('AJAX 통신이 실패했습니다.2');
			}
		});
		a = 0;
	}
	//카카오 로그인
	//Kakao.Auth.setAccessToken('${ACCESS_TOKEN}');

	// 1. 쿠키 만들기
	// setCookie(cookieName, value, exdays)
	// exDate라는 date 객체를 생성한다.
	// exdate에 getDate를 씀으로써 현재의 날짜를 세팅하고 그 후에 exdays라는 지정한 날짜를 추가한다.
	// 그로인해 쿠키가 유지되는 날짜를 지정한다.
	// cookieValue = escape(value) -> 벨류를 린다.
	// exdays=null이라면 빈 값을 추가하고, 아니라면 exdate라는 날짜를 GMTString() -> 한국 표준 날짜를 문자화 한것으로 추가하여 기간을 붙인다.
	// cookie에 cookieName에 쿠키 밸류의 값을 부여한다.
	// 만료일자를 설정하여 쿠키 벨류에 넣고 웹의 쿠키에 쿠키이름과 쿠키밸류를 추가한다.
	function setCookie(cookieName, value, exdays) {
		var exdate = new Date();
		exdate.setDate(exdate.getDate() + exdays);
		var cookieValue = escape(value)
				+ ((exdays == null) ? "" : "; expires=" + exdate.toGMTString());
		document.cookie = cookieName + "=" + cookieValue;
	}

	// 2. 쿠키 삭제
	// 쿠키를 삭제하는 메소드가 없기에 쿠키의 만료일을 오늘 하루 전으로 설정하여 이미 종료됐음을 알린다.
	function deleteCookie(cookieName) {
		var expireDate = new Date();
		expireDate.setDate(expireDate.getDate() - 1);
		document.cookie = cookieName + "= " + "; expires="
				+ expireDate.toGMTString();
	}

	// 3. 쿠키 가져오기
	function getCookie(cookieName) {
		cookieName = cookieName + "=";
		var cookieData = document.cookie;
		var start = cookieData.indexOf(cookieName);
		var cookieValue = "";
		if (start != -1) {
			start += cookieName.length;
			var end = cookieData.indexOf(";", start);
			if (end == -1) {
				end = cookieData.length;
			}
			cookieValue = cookieData.substring(start, end);
		}
		return unescape(cookieValue);
	}
</script>
</head>
<body>
	<div class="header-wrap">
		<div class="center-tab">
			<a href="hotelInfo">AboutUs</a> <a href="roomListPage">RoomInfo</a> <a
				href="reservation">Reservation</a> <a href="main"><img id="logo"
				alt="logo" src="resources/logo/logogo.png" /></a>
			<div class="dropdown">
				<a>Board▼</a>
				<div class="dropdown-content">
					<a href="noticeBoardListPage">Notice</a> <a href="qnaBoardList">QNA</a>
					<a href="ReviewBoardListPage">Review</a>
				</div>
			</div>
			<c:if test="${loginDTO eq null }">
				<a href="registerPage">REGISTER</a>
			</c:if>
			<c:if test="${loginDTO.mRight eq 1}">
				<a href="adminMain">Member Management</a>
			</c:if>
			<c:if test="${loginDTO ne null and loginDTO.mRight ne 1}">
				<a href="goMyPage">MyPage</a>
			</c:if>
			<c:if test="${loginDTO eq null }">
				<a id="loginout" href="javascript:void(0);" style="float: right;"
					onclick="aa()"><i class="fas fa-sign-in-alt fa-2x"></i><br />LOGIN</a>
			</c:if>
			<c:if test="${loginDTO ne null }">
				<a id="loginout" href="javascript:void(0);" style="float: right;"
					onclick="fn_logout()"><i class="fas fa-sign-out-alt fa-2x"></i><br />LOGOUT</a>
			</c:if>
		</div>
	</div>
	<div class="main-footer">
		<div class="main-wrap">

			<div class="test_1">
				<div class="test_2">
					<div id="login" class="login-box">
						<form method="POST">
							<h1>LOGIN</h1>
							<br /> <input class="login-text" id="login_mId" type="text"
								name="login_mId" placeholder="아이디" autofocus /><br /> <input
								class="login-text" id="login_mPw" type="password"
								name="login_mPw" placeholder="비밀번호" /><br /> <input
								id="saveIDCheck" type="checkbox" name="saveIDCheck" value="true"
								checked />아이디 기억하기 <img id="getchaImg" src=""
								style="width: 360px; height: 120px;" /> <input id="input_key"
								type="text" name="input_key" style="margin-top: 5px;" /> <a
								href="javascript:void(0);" onclick="cc()"> <i
								class="fas fa-redo-alt">새로고침</i></a> <br /> <input id="loginButton"
								type="button" value="로그인" onclick="fn_login(this.form)" /> <a
								class="btn btnkakao" id="kakao-login-btn"
								style="text-align: center;" href="javascript:loginWithKakao()">카카오
								1초 로그인/회원가입</a>
							<!--  -->
							<input id="registerButton" type="button" value="회원가입"
								onclick="location.href='registerPage'" />
							<div class="find">
								<a href="findIdPage">아이디 찾기</a>&nbsp;|&nbsp; <a
									href="findPwPage">비밀번호 찾기</a><br />
							</div>
							<a href="findReservationNumber">비회원 예약확인</a><br />
						</form>
					</div>
					<button class="pop-up-close" onclick="bbb()"></button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>