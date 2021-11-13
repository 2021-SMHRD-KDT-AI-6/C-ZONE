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
<script>
function gomypage(){
	 location.href="<%=cpath%>/mypage.do";
}
</script>
</head>
<body id="top">
<input type="hidden" name="mb_num" value="<%=members.getMb_num()%>" />
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<!-- Top Background Image Wrapper -->
	<div class="bgded overlay"
		style="background-image: url('images/demo/backgrounds/후광.jpg')">
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
						<li>
							<a class="drop">추천</a>
							<ul>
								<li>
									<a href="youtube.do">유투브</a>
								</li>
								<li>
									<a href="equipment.do">장비</a>
								</li>
							</ul>
						</li>
						<% if(members==null){ %>
						<li><a href="sl.do">글쓰기</a></li>
						<li><a href="sl.do">마이페이지</a></li>
						<% } else { %>
						<li><a href="writeForm.do">글쓰기</a></li>
						<li><a href="mypage.do">마이페이지</a></li>
						<% }%>
						<% if(members==null){ %>
						<li><a href="sl.do">로그인</a></li>
						<% } else { %>
						<li><a href="logout.do" onclick="outFn()">로그아웃</a></li>
						<% }%>
					<!-- ################################################################################################ -->
				</nav>
			</header>
		</div>
		<!-- ################################################################################################ -->
		<!-- ################################################################################################ -->
		<!-- ################################################################################################ -->
		<div id="breadcrumb" class="hoc clear">
			<!-- ################################################################################################ -->
			<h6 class="heading">마이페이지 수정</h6>
			<ul>
				<li><a href="Index.do">Home</a></li>
				<li><a href="mypage.do">My-page</a></li>
			</ul>
			<!-- ################################################################################################ -->
		</div>
		<!-- ################################################################################################ -->
	</div>
	<!-- End Top Background Image Wrapper -->
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<div class="profile">
		<!-- profile -->
		<!--   <form action="씨패스/수정.do" method = "post">       -->   
		<div id="profile_">
			<hr class="profile_hr" />
			<div class="fix_menu">
			<form action="updateprofile.do" method="post" enctype="multipart/form-data">
			<input type="hidden" name="mb_num" value="<%=members.getMb_num() %>" />
				<div class="fix_menu_1">
					<div class="pic_fix">사진 수정</div>
					    <div id=profile___pic >
						<div id="file_name" style="margin: 0;">
						<input id="write_pic_file" type="text" name="pic_fix_input" readonly="readonly" style="width: 195px;"/>
						<label class="write_pic" name="pic_fix_input" id="file_select" >파일선택
						<input type="file" name="pic_fix_input" onchange="javascript:document.getElementById('write_pic_file').value=this.value">
						
						</label>
						</div>
						</div>					
				</div>	
			</div>
			<div class="fix_menu">
				<div class="fix_menu_2">
					<div class="nickname_fix">닉네임 수정</div>
					<input class="nickname_fix_input" type="text" style="height: 27px;"
						name="nickname_fix_input" maxlength="10" placeholder="nickname" value="<%=members.getMb_nickname()%>"></input>
				</div>
			</div>

			<!-- </form> -->
			<hr class="profile_hr" />
			<input type="submit" class="fix_Btn" value="확인" />
		</form>
		</div>
	</div>
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<div class="bgded overlay row4"
		style="background-image: url('images/demo/backgrounds/05.png');">
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

</body>
</html>
