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
	<input type="hidden" name="mb_num" value="<%=members.getMb_num()%>" />
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
						<li><a href="mypage.do">마이페이지</a></li>
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
			<div id="profile">
				<a href="profile.do"><img id="member_profile_pic" src="<%=members.getMb_profile_pic()%>"
					alt="프로필사진" /></a>
					<a ><span id="member_name"><%=members.getMb_nickname()%></span></a>
			</div>
			<!-- ################################################################################################ -->
			<div class="pushTop">
				<h6 class="heading">마이페이지</h6>
				<ul>
					<li><a href="Index.do">Home</a></li>
					<li><a href="mypage.do">MY
							PAGE</a></li>
				</ul>
			</div>
			<!-- ################################################################################################ -->
		</div>
		<!-- ################################################################################################ -->
	</div>
	<!-- End Top Background Image Wrapper -->
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<div class="wrapper row3">
		<main class="hoc container clear">
			<section id="overview">
				<div class="sectiontitle">
					<p class="heading underline font-x2">정복지</p>
				</div>
				<div id="map" style="width: 1200px; height: 550px; margin: 0 auto"></div>
				<hr class="btmspace-80" />

				<div class="sectiontitle">
					<p class="heading underline font-x2">내가 쓴 게시물</p>
				</div>
				<%
					for (SuperVO vo : list) {
				%>
				<input type="hidden" id="members_latitude"
					value="<%=vo.getLatitude()%>" /> <input type="hidden"
					id="members_longitude" value="<%=vo.getLongitude()%>" />
				<div class="news_feed">
					<a
						href="<%=cpath%>/article.do?article_num=<%=vo.getArticle_num()%>">
						<img class="thumbnail" src="https://via.placeholder.com/300"
						alt="썸네일" />
					</a>
					<div class="contents">
						<header>
							<a href="<%=cpath%>/memberpage.do?mb_num=<%=vo.getMb_num()%>">
								<img class="profile_pic" src="https://via.placeholder.com/70"
								alt="프로필사진" />
							</a>
							<div class="article_top">
								<div class="article_top_up">
									<strong class="mb_num"><a
										href="<%=cpath%>/memberpage.do?mb_num=<%=vo.getMb_num()%>"><%=vo.getMb_nickname()%></a></strong>
									<div class="reg_date"><%=vo.getReg_date()%></div>
								</div>
								<div class="article_top_down">
									<a
										href="<%=cpath%>/article.do?article_num=<%=vo.getArticle_num()%>"><%=vo.getArticle_title()%>
									</a>
									<div class="article_top_down_right">
										<div class="likes">
											좋아요
											<%=vo.getLikes()%></div>
										<div class="article_cnt">
											조회수
											<%=vo.getArticle_cnt()%></div>
										<div class="carpinglevel">
											난이도 <%=vo.getCarping_level()%></div>
									</div>
								</div>
							</div>
						</header>
						<article>
							<a
								href="<%=cpath%>/article.do?article_num=<%=vo.getArticle_num()%>">
								<%=vo.getArticle_content()%>
							</a>
						</article>
					</div>
				</div>
				<%
					}
				%>
			</section>
		</main>
	</div>
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<div class="bgded overlay row4"
		style="background-image: url('../images/demo/backgrounds/05.png')">
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
					title="Free Website Templates"> OS Templates </a>
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
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d98d9b2f0c4a6046323ef26fd36b2b16"></script>
	<script>
		var mapContainer = document.getElementById("map"), // 지도를 표시할 div
		mapOption = {
			center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			level : 13, // 지도의 확대 레벨
		};

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		
	<%for (SuperVO vo : list) {%>
		// 마커가 표시될 위치입니다
		var markerPosition = new kakao.maps.LatLng(<%=vo.getLatitude()%>, <%=vo.getLongitude()%>);

		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
			position : markerPosition,
		});
		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);
	<%}%>
		
	</script>
</body>
</html>
