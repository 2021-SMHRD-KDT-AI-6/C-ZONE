<%@page import="kr.smhrd.util.MbVO"%>
<%@page import="kr.smhrd.util.SuperVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	MbVO members = (MbVO) session.getAttribute("succ");
%>
<%
	// Object Cating(객체형변환-제일중요)
ArrayList<SuperVO> list = (ArrayList<SuperVO>) request.getAttribute("list");
String cpath = request.getContextPath();
%>
<!DOCTYPE html>
<!--
Template Name: Sislaf
Author: <a href="https://www.os-templates.com/">OS Templates</a>
Author URI: https://www.os-templates.com/
Copyright: OS-Templates.com
Licence: Free to use under our free template licence terms
Licence URI: https://www.os-templates.com/template-terms
-->
<html lang="">
<!-- To declare your language - read more here: https://www.w3.org/International/questions/qa-html-language-declarations -->
<head>
<title>C-ZONE</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css"
	media="all" />
</head>
<body id="top">

	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<!-- Top Background Image Wrapper -->
	<div class="bgded overlay"
		style="background-image: url('images/demo/backgrounds/01.png')">
		<!-- ################################################################################################ -->
		<div class="wrapper row0">
			<div id="topbar" class="hoc clear">
				<div class="fl_left">
					<!-- ################################################################################################ -->
					<ul class="nospace">
						<li><i class="fas fa-phone rgtspace-5"></i> +00 (123) 456
							7890</li>
						<li><i class="far fa-envelope rgtspace-5"></i>
							info@domain.com</li>
					</ul>
					<!-- ################################################################################################ -->
				</div>
				<div class="fl_right">
					<!-- ################################################################################################ -->
					<ul class="nospace">
						<li><a href="Index.do"><i class="fas fa-home"></i></a></li>
						<a href="searchpage.do"><li id="searchform"></li></a>
					</ul>
					<!-- ################################################################################################ -->
				</div>
			</div>
		</div>
		<!-- ################################################################################################ -->
		<!-- ################################################################################################ -->
		<!-- ################################################################################################ -->
		<div class="wrapper row1">
			<header id="header" class="hoc clear">
				<div id="logo" class="fl_left">
					<!-- ################################################################################################ -->
					<h1>
						<a href="Index.do">C-ZONE</a>
					</h1>
					<!-- ################################################################################################ -->
				</div>
				<nav id="mainav" class="fl_right">
					<!-- ################################################################################################ -->
					<ul class="clear">
						<li class="active"><a href="Index.do">Home</a></li>
						<%
							if (members == null) {
						%>
						<li><a href="login.do">글쓰기</a></li>
						<li><a href="login.do">마이페이지</a></li>
						<%
							} else {
						%>
						<li><a href="writeForm.do">글쓰기</a></li>
						<li><a href="mypage.do?mb_num=<%=members.getMb_num()%>">마이페이지</a></li>
						<%
							}
						%>
						<%
							if (members == null) {
						%>
						<li><a href="login.do">로그인</a></li>
						<%
							} else {
						%>
						<li><a href="logout.do" onclick="outFn()">로그아웃</a></li>
						<%
							}
						%>
					</ul>
					<!-- ################################################################################################ -->
				</nav>
			</header>
		</div>
		<!-- ################################################################################################ -->
		<!-- ################################################################################################ -->
		<!-- ################################################################################################ -->
		<div id="breadcrumb" class="hoc clear">
			<!-- ################################################################################################ -->
			<h6 class="heading">회원가입</h6>
			<ul>
				<li><a href="Index.do">Home</a></li>
				<li><a href="signup.do">Sign-Up</a></li>
			</ul>
			<!-- ################################################################################################ -->
		</div>
		<!-- ################################################################################################ -->
	</div>
	<!-- End Top Background Image Wrapper -->
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<div class="signupMain">
		<!-- signup -->
		<form action="<%=cpath%>/insert.do" method="post" onsubmit="return signUpCheck()">
			<div id="signup">
				<hr class="signup_hr" />
				<div class="signup_menu">
					<div class="signup_menu_1">
						<div class="signup_id_1">ID</div>
						<input class="id_text" type="text" id="mb_id" name="mb_id"
							placeholder="ID를 입력해주세요."></input>
					</div>
							<font id = "checkId" size = "2"></font>
				</div>
				<div class="signup_menu">
					<div class="signup_menu_2">
						<div class="signup_id_2">PW</div>
						<input class="pw_text" type="password" id="mb_pwd" name="mb_pwd"
							maxlength="15" placeholder="비밀번호" value=""></input>
					</div>
				</div>
				<div class="signup_menu">
					<div class="signup_menu_3">
						<div class="signup_id_3">name</div>
						<input class="name_text" type="text" id="mb_nickname" name="mb_nickname" maxlength="5" placeholder="닉네임" />
						<input type="hidden" name="admin_yn" value="N" /> 
						<input type="hidden" name="mb_profile_pic" value="images/demo/signup_logos/profile_pic.jpg" />
					</div>
					<font id = "checkNickname" size = "2"></font>
				</div>

				<input type="submit" class="sign_up" value="회원가입" />
		</form>
		<hr class="signup_hr" />
	</div>
	</div>
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<div class="bgded overlay row4"
		style="background-image: url('../images/demo/backgrounds/05.png');">
		<footer id="footer" class="hoc clear">
			<!-- ################################################################################################ -->
			<div id="ctdetails" class="clear">
				<ul class="nospace clear">
					<li class="one_quarter first">
						<div class="block clear">
							<a href="#"><i class="fas fa-phone"></i></a> <span><strong>Give
									us a call:</strong> +00 (123) 456 7890</span>
						</div>
					</li>
					<li class="one_quarter">
						<div class="block clear">
							<a href="#"><i class="fas fa-envelope"></i></a> <span><strong>Send
									us a mail:</strong> support@domain.com</span>
						</div>
					</li>
					<li class="one_quarter">
						<div class="block clear">
							<a href="#"><i class="fas fa-clock"></i></a> <span><strong>
									Monday - Saturday:</strong> 08.00am - 18.00pm</span>
						</div>
					</li>
					<li class="one_quarter">
						<div class="block clear">
							<a href="#"><i class="fas fa-map-marker-alt"></i></a> <span><strong>Come
									visit us:</strong> Directions to <a href="#">our location</a></span>
						</div>
					</li>
				</ul>
			</div>
			<!-- ################################################################################################ -->
		</footer>
	</div>
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<div class="wrapper row5">
		<div id="copyright" class="hoc clear">
			<!-- ################################################################################################ -->
			<p class="fl_left">
				Copyright &copy; 2018 - All Rights Reserved - <a href="#">Domain
					Name</a>
			</p>
			<p class="fl_right">
				Template by <a target="_blank" href="https://www.os-templates.com/"
					title="Free Website Templates">OS Templates</a>
			</p>
			<!-- ################################################################################################ -->
		</div>
	</div>
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>

	<!-- JAVASCRIPTS -->
	<script src="layout/scripts/jquery.min.js"></script>
	<script src="layout/scripts/jquery.backtotop.js"></script>
	<script src="layout/scripts/jquery.mobilemenu.js"></script>
	
	
<script>
let mb_id = document.querySelector('input[name="mb_id"]');
let mb_pwd = document.querySelector('input[name="mb_pwd"]');
let mb_nickname = document.querySelector('input[name="mb_nickname"]');
function signUpCheck(){
	if(mb_id.value == ""){
console.log(mb_id.value);
		alert('아이디를 입력해주세요');
		mb_id.focus();
		return false
	}else if(mb_pwd.value == ""){
		alert('패스워드를 입력해주세요');
		mb_pwd.focus();
		return false
	}else if(mb_nickname.value == ""){
		alert('닉네임을 입력해주세요');
		mb_nickname.focus();
		return false
	}else{
		alert('회원가입 성공!')
		return true
	}
	
}
</script>
<script >
let id_text = document.querySelector('.id_text');
let name_text = document.querySelector('.name_text');
let pw_text = document.querySelector('.pw_text').value;
	$('.name_text').focusout(function(){
		let mb_nickname = $('.name_text').val();
			$.ajax({
				url : "checknickname.do",
				type : "post",
				data : {mb_nickname: mb_nickname},
				dataType : 'json',
				success : function(result){
					if(result == 0){
						$("#checkNickname").html('사용할 수 없는 닉네임입니다.');
						$("#checkNickname").attr('color','red');
					}else{
						$("#checkNickname").html('사용할 수 있는 닉네임입니다.');
						$("#checkNickname").attr('color','green');
					}
				},
				error : function(){
					alert("서버요청실패");
				}
		  })
	})
</script>
<script>
$('.id_text').focusout(function(){
	let mb_id = $('.id_text').val();
	
		$.ajax({
			url : "checkid.do",
			type : "post",
			data : {mb_id: mb_id},
			dataType : 'json',
			success : function(result){
				if(result == 0){
					$("#checkId").html('사용할 수 없는 아이디입니다.');
					$("#checkId").attr('color','red');
				}else{
					$("#checkId").html('사용할 수 있는 아이디입니다.');
					$("#checkId").attr('color','green');
				}
			},
			error : function(){
				alert("서버요청실패");
			}
	  })
});
</script>
</body>
</html>
