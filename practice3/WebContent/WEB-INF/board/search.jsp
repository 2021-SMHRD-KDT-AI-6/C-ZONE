<%@page import="kr.smhrd.util.SuperVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	// Object Cating(��ü����ȯ-�����߿�)
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
						<a href="search.do"><li id="searchform"></li></a>
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
						<li><a href="write.do">�۾���</a></li>
						<li><a href="mypage.do">����������</a></li>
						<li><a href="login.do">�α���</a></li>
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
			<h6 class="heading">�۾���</h6>
			<ul>
				<li><a href="Index.do">Home</a></li>
				<li><a href="search.do">Write</a></li>
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
			<form action="#" method="post" id="search_form">
				<select name="option">
					<option value="title_content">����+����</option>
					<option value="nickname">�г���</option>
					<input type="text" id="search_bar" />
					<input type="submit" value="�˻�" />
				</select>
			</form>
			<hr />
			<div id="search_first">
				<h1>�˻����</h1>
				<div id="search_first_right">
					<div id="search_level">
						<input type="checkbox" name="top" /><label for="top">��</label> <input
							type="checkbox" name="middle" /><label for="middle"> �� </label>
						<input type="checkbox" name="bottom" /><label for="bottom">
							�� </label>
					</div>
					<div id="search_button">
						<button id="search_count">��ȸ��</button>
						<button id="search_like">���ƿ�</button>
						<button id="search_recent">�ֽż�</button>
					</div>
				</div>
			</div>
			<hr />
			<%
					for (SuperVO vo : list) {
				%>
			<div class="news_feed">
				<a href="#"> <img class="thumbnail"
					src="https://via.placeholder.com/300" alt="�����" />
				</a>
				<div class="contents">
					<header>
						<a href="#"> <img class="profile_pic"
							src="https://via.placeholder.com/70" alt="�����ʻ���" />
						</a>
						<div class="article_top">
							<div class="article_top_up">
								<strong class="mb_id"><a href="#"><%=vo.getMb_id()%></a></strong>
								<div class="reg_date"><%=vo.getReg_date()%></div>
							</div>
							<div class="article_top_down">
								<a href="#"> <%=vo.getArticle_title()%>
								</a>
								<div class="article_top_down_right">
									<div class="likes">
										���ƿ�
										<%=vo.getLikes()%></div>
									<div class="article_cnt">
										��ȸ��
										<%=vo.getArticle_cnt()%></div>
									<div class="carpinglevel">
										���̵�
										<%=vo.getCarping_level()%></div>
								</div>
							</div>
						</div>
					</header>
					<article>
						<%=vo.getArticle_content()%>
					</article>
				</div>
			</div>
			<%} %>
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
