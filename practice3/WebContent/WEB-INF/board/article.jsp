<%@page import="kr.smhrd.util.SuperVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%SuperVO user = (SuperVO) session.getAttribute("succ");%>
<!DOCTYPE html>
<html lang="">
<head>
<title>WRITE</title>
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
						<a href="#"><li id="searchform"></li></a>
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
						<li><a href="writeForm.do">글쓰기</a></li>
						<li><a href="mypage.do">마이페이지</a></li>
						<li><a href="login.do">로그인</a></li>
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
			<h6 class="heading">게시글</h6>
			<ul>
				<li><a href="Index.do">Home</a></li>
				<li><a href="articlepage.do">ARTICLE</a></li>
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
		<div id="articlepage">
			<div id="articlepage_first">
				<div id="articlepage_first_left">
					<div id="articlepage_title">[장성] 꿀잼 차박지</div>
					<div id="articlepage_second">
						<a href="memberpage.do"><img id="articlepage_profile_pic"
							src="https://via.placeholder.com/70" alt="프로필사진" /></a>
						<div id="articlepage_profile">
							<a href="memberpage.do"><div id="articlepage_mb_id">강성운</div></a>
							<div id="articlepage_reg_date">2021-10-24</div>
						</div>
					</div>
					<div id="articlepage_third">
						<div id="articlepage_level">난이도 상</div>
						<div id="articlepage_like">
							<div id="articlepage_like_num">좋아요 10,000</div>
							<div id="articlepage_heart"></div>
						</div>
					</div>
				</div>
				<img src="https://via.placeholder.com/300x200" alt="지도" />
			</div>
			<hr />
			<div id="articlepage_content">
				Lorem, ipsum dolor sit amet consectetur adipisicing elit. Autem,
				doloribus. Consectetur aliquid nemo, ab repellendus explicabo
				similique et placeat possimus ullam tempora mollitia enim iusto in
				culpa magnam eius unde! Lorem ipsum dolor, sit amet consectetur
				adipisicing elit. Eaque accusamus facere animi in molestias porro!
				Dolore quos in eum voluptatibus molestias possimus excepturi. Veniam
				dolorum cupiditate inventore similique repellat delectus? Lorem
				ipsum dolor sit amet, consectetur adipisicing elit. Totam ducimus
				voluptate, explicabo incidunt labore quam nihil reprehenderit
				officiis omnis pariatur eius voluptatum laudantium cupiditate fugit
				non minima quis expedita dignissimos. Lorem ipsum dolor sit amet
				consectetur adipisicing elit. Aliquid corporis, blanditiis
				consectetur dignissimos, placeat ab accusamus incidunt molestiae
				odio omnis unde recusandae perferendis provident possimus eaque. Ut
				cum voluptatum neque. Lorem ipsum dolor sit amet consectetur
				adipisicing elit. Harum sed quae consequatur sunt similique dolor
				repellendus quidem minus magni in. Possimus sequi quae aut sunt
				officia voluptatibus ipsa voluptatem ullam! Lorem ipsum dolor sit
				amet consectetur adipisicing elit. Eum repellendus suscipit ratione
				reprehenderit dolor quaerat ex possimus, itaque beatae molestias
				laboriosam nam vel maiores error, provident cupiditate reiciendis!
				Quibusdam, optio?<br /> Lorem, ipsum dolor sit amet consectetur
				adipisicing elit. Autem, doloribus. Consectetur aliquid nemo, ab
				repellendus explicabo similique et placeat possimus ullam tempora
				mollitia enim iusto in culpa magnam eius unde! Lorem ipsum dolor,
				sit amet consectetur adipisicing elit. Eaque accusamus facere animi
				in molestias porro! Dolore quos in eum voluptatibus molestias
				possimus excepturi. Veniam dolorum cupiditate inventore similique
				repellat delectus? Lorem ipsum dolor sit amet, consectetur
				adipisicing elit. Totam ducimus voluptate, explicabo incidunt labore
				quam nihil reprehenderit officiis omnis pariatur eius voluptatum
				laudantium cupiditate fugit non minima quis expedita dignissimos.
				Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid
				corporis, blanditiis consectetur dignissimos, placeat ab accusamus
				incidunt molestiae odio omnis unde recusandae perferendis provident
				possimus eaque. Ut cum voluptatum neque. Lorem ipsum dolor sit amet
				consectetur adipisicing elit. Harum sed quae consequatur sunt
				similique dolor repellendus quidem minus magni in. Possimus sequi
				quae aut sunt officia voluptatibus ipsa voluptatem ullam! Lorem
				ipsum dolor sit amet consectetur adipisicing elit. Eum repellendus
				suscipit ratione reprehenderit dolor quaerat ex possimus, itaque
				beatae molestias laboriosam nam vel maiores error, provident
				cupiditate reiciendis! Quibusdam, optio?<br /> Lorem, ipsum dolor
				sit amet consectetur adipisicing elit. Autem, doloribus. Consectetur
				aliquid nemo, ab repellendus explicabo similique et placeat possimus
				ullam tempora mollitia enim iusto in culpa magnam eius unde! Lorem
				ipsum dolor, sit amet consectetur adipisicing elit. Eaque accusamus
				facere animi in molestias porro! Dolore quos in eum voluptatibus
				molestias possimus excepturi. Veniam dolorum cupiditate inventore
				similique repellat delectus? Lorem ipsum dolor sit amet, consectetur
				adipisicing elit. Totam ducimus voluptate, explicabo incidunt labore
				quam nihil reprehenderit officiis omnis pariatur eius voluptatum
				laudantium cupiditate fugit non minima quis expedita dignissimos.
				Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid
				corporis, blanditiis consectetur dignissimos, placeat ab accusamus
				incidunt molestiae odio omnis unde recusandae perferendis provident
				possimus eaque. Ut cum voluptatum neque. Lorem ipsum dolor sit amet
				consectetur adipisicing elit. Harum sed quae consequatur sunt
				similique dolor repellendus quidem minus magni in. Possimus sequi
				quae aut sunt officia voluptatibus ipsa voluptatem ullam! Lorem
				ipsum dolor sit amet consectetur adipisicing elit. Eum repellendus
				suscipit ratione reprehenderit dolor quaerat ex possimus, itaque
				beatae molestias laboriosam nam vel maiores error, provident
				cupiditate reiciendis! Quibusdam, optio?
			</div>
			<hr />
			<div id="comment_title">댓글</div>
			<div class="comment">
				<div class="comment_first">
					<a href="memberpage.do"> <img class="comment_profile_pic"
						src="https://via.placeholder.com/70" alt="프로필사진" />
					</a>
					<div class="comment_profile">
						<a href="memberpage.do"><div class="articlepage_mb_id">김동선</div></a>
						<div class="articlepage_reg_date">21.10.24</div>
					</div>
				</div>
				<div class="comment_content">Lorem ipsum dolor, sit amet
					consectetur adipisicing elit. Modi, beatae cum. Magnam, temporibus
					laboriosam! Dolorum iure autem natus quia aspernatur in ex, sequi
					labore laudantium, officiis impedit nemo ipsum vel.</div>
			</div>

			<hr />

			<div class="comment">
				<div class="comment_first">
					<a href="memberpage.do"><img class="comment_profile_pic"
						src="https://via.placeholder.com/70" alt="프로필사진" /></a>
					<div class="comment_profile">
						<a href="memberpage.do"><div class="articlepage_mb_id">김동선</div></a>
						<div class="articlepage_reg_date">2021-10-24</div>
					</div>
				</div>
				<div class="comment_content">Lorem ipsum dolor, sit amet
					consectetur adipisicing elit. Modi, beatae cum. Magnam, temporibus
					laboriosam! Dolorum iure autem natus quia aspernatur in ex, sequi
					labore laudantium, officiis impedit nemo ipsum vel.</div>
			</div>

			<hr />
			

			<form action="#" id="comment_write">
				<textarea type="text" id="comment_content" name="comment_content"
					placeholder="댓글을 입력해주세요.">
          </textarea>
				<input type="submit" id="comment_btn" />
			</form>
			</div>
		</main>
	</div>
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<div class="bgded overlay row4"
		style="background-image: url('../images/demo/backgrounds/05.png')">
		<footer id="footer" class="hoc clear">
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
