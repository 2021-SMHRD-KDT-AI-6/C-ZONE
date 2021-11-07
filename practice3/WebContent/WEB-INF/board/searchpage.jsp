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
<title>Search</title>
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
			<h6 class="heading">검색</h6>
			<ul>
				<li><a href="Index.do">Home</a></li>
				<li><a href="searchpage.do">SEARCH</a></li>
			</ul>
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
			<form action="searchpage.do" method="post" id="search_form">
					<input type="text" name="search" id="search_bar" />
					<input type="submit" value="검색" />
			</form>
				<select name="option">
					<option value="title_content">제목+내용</option>
					<option value="nickname">닉네임</option>
				</select>
			<hr />
			<div id="search_first">
				<h1>검색결과</h1>
				<div id="search_first_right">
					<div id="search_level">
						<input type="checkbox" name="top" /><label for="top">상</label>
						<input type="checkbox" name="middle" /><label for="middle">중 </label>
						<input type="checkbox" name="bottom" /><label for="bottom">하 </label>
					</div>
					<div id="search_button">
						<button id="search_count" onclick="location.href='cntsearch.do'">조회수</button>
						<button id="search_like" onclick="location.href='likesearch.do'">좋아요</button>
						<button id="search_recent" onclick="location.href='searchpage.do'">최신순</button>
					</div>
				</div>
			</div>
			<hr />
			<%
				for (SuperVO vo : list) {
			%>
			<div class="news_feed">
				<a href="<%=cpath%>/article.do?article_num=<%=vo.getArticle_num()%>">
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
								<strong class="mb_num"><a href="<%=cpath%>/memberpage.do?mb_num=<%=vo.getMb_num()%>"><%=vo.getMb_nickname()%></a></strong>
								<div class="reg_date"><%=vo.getReg_date()%></div>
							</div>
							<div class="article_top_down">
								<a
									href="<%=cpath%>/article.do?article_num=<%=vo.getArticle_num()%>">
									<%=vo.getArticle_title()%>
								</a>
								<div class="article_top_down_right">
									<div class="likes">
										좋아요
										<%=vo.getLikes()%></div>
									<div class="article_cnt">
										조회수
										<%=vo.getArticle_cnt()%></div>
									<div class="carpinglevel">
										난이도
										<%=vo.getCarping_level()%></div>
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
	<script src="../layout/scripts/jquery.min.js"></script>
	<script src="../layout/scripts/jquery.backtotop.js"></script>
	<script src="../layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>
