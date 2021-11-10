<%@page import="kr.smhrd.util.MbVO"%>
<%@page import="kr.smhrd.util.SuperVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<% MbVO members=(MbVO)session.getAttribute("succ");%>
<%
	// Object Cating(객체형변환-제일중요)
ArrayList<SuperVO> list = (ArrayList<SuperVO>) request.getAttribute("list");
ArrayList<SuperVO> like = (ArrayList<SuperVO>) request.getAttribute("like");
%>
<%String cpath = request.getContextPath();%>
<script>      
function outFn(){
	  location.href="<%=cpath%>/logout.do";
}
</script>
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
	<video muted autoplay loop class="videoMain">
        <source src="layout/styles/video/Tree.mp4" type="video/mp4">
    </video>
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
		<!-- ################################푸쉬좀하자################################################################ -->
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
					</ul>
					<!-- ################################################################################################ -->
				</nav>
			</header>
		</div>
		<!-- ################################################################################################ -->
		<!-- ################################################################################################ -->
		<!-- ################################################################################################ -->
		<div id="pageintro" class="hoc clear">
			<!-- ################################################################################################ -->
			<article>
				<h3 class="heading">Finibus dictum lobortis</h3>
				<p>Libero sed ullamcorper nibh dignissim et curabitur cursus
					scelerisque metus sit amet sodales justo auctor sit amet proin quis
					lacus non nisi.</p>
				<footer>
					<ul class="nospace inline pushright"></ul>
				</footer>
			</article>
			<!-- ################################################################################################ -->
		</div>
		<!-- ################################################################################################ -->
	</div>
	<!-- End Top Background Image Wrapper -->
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
      <div class="wrapper row3 rank_">
        <main class="hoc container clear">
          <!-- main body -->
          <!-- ################################################################################################ -->
          <section id="Rank">
            
            <div class="sectiontitle">
              <p class="heading underline font-x2">좋아요 순위</p>
            </div>

              <div class="rank">

              <li class="one_third first" id="like_second">
                  <a class="imgover imgover2" id="rank2_thumbnail" href="#">
                    <img src="images/demo/348x261.png" alt="" />
                  </a>
                  <div class="rank_2">
                      <h6 class="heading rankhead">좋아요 2등</h6>
                      <div class="rank__">
                      <a href="#">
                        <img src="http://placehold.it/70" class="profile_rank2" alt="profile_rank2">
                      </a>
                      <div class="rankname">
                      <a href="#">
                        <div class="nick_rank2" value="">닉네임</div>
                      </a>
                      <div class="rank_title_level">
                      <a href="#">
                        <div class="title_rank2" value="">제목</div>
                      </a>
                      <div class="level_rank">난이도 상</div>
                    </div>

                    </div>

                    </div>
                    <a href="#">
                      <p class="rank_p2">Lorem ipsum dolor sit amet consectetur adipisicing elit. Suscipit mollitia dolores quas aliquam voluptates veritatis labore numquam. Iusto dolorum veritatis sint quidem quibusdam, qui nostrum, vitae explicabo accusamus eligendi dolores!</p>
                    </a>
                    </div>
              </li>
            
            
              <li class="one_third" id="like_first">
                  <a class="imgover imgover1" href="#"><img
                    src="images/demo/348x261.png"/></a>
                  <div class="rank_1">
                    <h6 class="heading rankhead">좋아요1등</h6>
                    <div class="rank__">
                    <img src="http://placehold.it/70" class="profile_rank1" alt="profile_rank1">
                    <div class="rankname">
                    <div class="nick_rank1" value="">닉네임</div>
                    <div class="title_rank1" value="">제목</div>
                  </div>
                  </div>
                    <p class="rank_p1"><%=like.get(0).getLikes()%></p>
                </div>
              </li>
            
              <li class="one_third" id="like_third" id="like_third">
                  <a class="imgover imgover3" href="#"><img
                    src="images/demo/348x261.png"/></a>
                  <div class="rank_3">
                    <h6 class="heading rankhead">좋아요 3등</h6>
                    <div class="rank__">
                    <img src="http://placehold.it/70" class="profile_rank3" alt="profile_rank3">
                    <div class="rankname">
                    <div class="nick_rank3" value="">닉네임</div>
                    <div class="title_rank3" value="">제목</div>
                  </div>
                  </div>
                    <p class="rank_p3"><%=like.get(2).getLikes()%></p>
                </div>
              </li>
            
          </div>
          </section>
			<!-- ################################################################################################ -->
			<hr class="btmspace-80" />
			<!-- ################################################################################################ -->
			<section id="overview">
				<div class="sectiontitle">
					<p class="heading underline font-x2">트렌드</p>
				</div>
				<img src="images/trend.png" id="trend_img" alt="트렌드" />
				<hr class="btmspace-80" />

				<div class="sectiontitle">
					<p class="heading underline font-x2">뉴스피드</p>
				</div>
				<%
				int count = 0;
					for (SuperVO vo : list) {
				%>
				<input type="hidden" name="article_num" value="<%=vo.getArticle_num()%>">
				<%if(count++<5){ %>
				<div class="news_feed">
				<%} else{%>
				<div class="news_feed news_feed_hidden">
				<%} %>
				<%if(members == null){ %>
					<a href="sl.do">
				<%}else{ %>
					<a href="<%=cpath%>/article.do?article_num=<%=vo.getArticle_num()%>">
				<%} %>
						<img class="thumbnail" src="<%=vo.getCarping_pic1()%>" alt="썸네일" />
					</a>
	
					<div class="contents">
						<header>
							<a href="<%=cpath%>/memberpage.do?mb_num=<%=vo.getMb_num()%>"> <img class="profile_pic"
								src="<%=vo.getMb_profile_pic() %>" alt="프로필사진" />
							</a>
							<div class="article_top">
								<div class="article_top_up">
									<strong class="mb_id"><a href="<%=cpath%>/memberpage.do?mb_num=<%=vo.getMb_num()%>"><%=vo.getMb_nickname()%></a></strong>
									<div class="reg_date"><%=vo.getReg_date()%></div>
								</div>
								<div class="article_top_down">
								<%if(members == null){ %>
									<a href="sl.do"> <%=vo.getArticle_title()%>
								<%}else{ %>
									<a href="article.do" class="article_title"> <%=vo.getArticle_title()%>
								<%} %>
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
						<article class="article_content">
							<%if(members == null){ %>
									<a href="sl.do">
									<%=vo.getArticle_content()%>
							<%}else{ %>
									<a href="<%=cpath%>/article.do?article_num=<%=vo.getArticle_num()%>">							
									<%=vo.getArticle_content()%>
							<%} %>
									</a>
						</article>
					</div>
				</div>
				<%
					}
				%>
				<button onclick="moreview()" id="moreview"><i class="fas fa-angle-down fa-3x"></i></button>
			</section>
			<!-- ################################################################################################ -->
			<!-- / main body -->
			<div class="clear"></div>
		</main>
	</div>
	<a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>
	<!-- JAVASCRIPTS -->
	<script src="layout/scripts/jquery.min.js"></script>
	<script src="layout/scripts/jquery.backtotop.js"></script>
	<script src="layout/scripts/jquery.mobilemenu.js"></script>
	<script>
		
		function moreview(){
			let news_feed = document.querySelectorAll('.news_feed_hidden');
			let moreViewBtn = document.querySelector('#moreview');
			var target = 5;
			if (news_feed.length<5){ 
				target = news_feed.length; 
				//더보기 버튼 없애주는(news_feed_hidden)
				moreViewBtn.setAttribute('class', 'news_feed_hidden')
			}
			for(let i = 0; i < target; i++){
				news_feed[i].setAttribute('class','news_feed');
			}
		}
	</script>
</body>
</html>

