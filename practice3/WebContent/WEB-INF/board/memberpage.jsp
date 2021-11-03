<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	// Object Cating(객체형변환-제일중요)
ArrayList<SuperVO> list = (ArrayList<SuperVO>)request.getAttribute("list");
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
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"
    />
    <link
      href="layout/styles/layout.css"
      rel="stylesheet"
      type="text/css"
      media="all"
    />
  </head>
<%@page import="kr.smhrd.util.SuperVO"%>
  <body id="top">
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <!-- Top Background Image Wrapper -->
    <div
      class="bgded overlay"
      style="background-image: url('images/demo/backgrounds/01.png')"
    >
      <!-- ################################################################################################ -->
      <div class="wrapper row0">
        <div id="topbar" class="hoc clear">
          <div class="fl_left">
            <!-- ################################################################################################ -->
            <ul class="nospace">
              <li>
                <i class="fas fa-phone rgtspace-5"></i> +00 (123) 456 7890
              </li>
              <li>
                <i class="far fa-envelope rgtspace-5"></i> info@domain.com
              </li>
            </ul>
            <!-- ################################################################################################ -->
          </div>
          <div class="fl_right">
            <!-- ################################################################################################ -->
            <ul class="nospace">
              <li>
                <a href="index.html"><i class="fas fa-home"></i></a>
              </li>
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
            <h1><a href="Index.jsp">C-ZONE</a></h1>
            <!-- ################################################################################################ -->
          </div>
          <nav id="mainav" class="fl_right">
            <!-- ################################################################################################ -->
            <ul class="clear">
              <li class="active"><a href="Index.jsp">Home</a></li>
              <li><a href="#">글쓰기</a></li>
              <li><a href="#">마이페이지</a></li>
              <li><a href="#">로그인</a></li>
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
          <img
            id="member_profile_pic"
            src="https://via.placeholder.com/180"
            alt="프로필사진"
          />
          <span id="member_name">강성운</span>
        </div>
        <!-- ################################################################################################ -->
        <div class="pushTop">
          <h6 class="heading">멤버페이지</h6>
          <ul>
            <li><a href="Index.jsp">Home</a></li>
            <li><a href="MyPage.jsp">MEMBER PAGE</a></li>
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
          <img src="https://via.placeholder.com/1140x500" alt="트렌드" />
          <hr class="btmspace-80" />

          <div class="sectiontitle">
            <p class="heading underline font-x2">강성운님이 쓴 게시물</p>
          </div>
          <%
			for (SuperVO vo : list) {
			%>
          <div class="news_feed">
            <a href="#">
              <img
                class="thumbnail"
                src="https://via.placeholder.com/300"
                alt="썸네일"
              />
            </a>
            <div class="contents">
              <header>
                <a href="#">
                  <img
                    class="profile_pic"
                    src="https://via.placeholder.com/70"
                    alt="프로필사진"
                  />
                </a>
                <div class="article_top">
                  <div class="article_top_up">
                    <strong class="mb_id"><a href="#"><%=vo.getMb_id() %></a></strong>
                    <div class="reg_date"><%=vo.getReg_date() %></div>
                  </div>
                  <div class="article_top_down">
                    <a href="#"><%=vo.getArticle_title() %> </a>
                    <div class="article_top_down_right">
                      <div class="likes">좋아요 <%=vo.getLikes() %></div>
                      <div class="article_cnt">조회수<%=vo.getArticle_cnt() %></div>
                      <div class="carpinglevel">난이도 <%=vo.getCarping_level() %></div>
                    </div>
                  </div>
                </div>
              </header>
              <article>
                <%=vo.getArticle_content() %>
              </article>
            </div>
          </div>
          <%} %>
          <div class="news_feed">
            <img
              class="thumbnail"
              src="https://via.placeholder.com/300"
              alt="썸네일"
            />
            <div class="contents">
              <header>
                <a href="#">
                  <img
                    class="profile_pic"
                    src="https://via.placeholder.com/70"
                    alt="프로필사진"
                  />
                </a>
                <div class="article_top">
                  <div class="article_top_up">
                    <strong class="mb_id"><a href="#">닉네임</a></strong>
                    <div class="reg_date">2021-10-23</div>
                  </div>
                  <div class="article_top_down">
                    <a href="#"> 낙원을 장식하는 천자만흥이 어디 있으랴 </a>
                    <div class="article_top_down_right">
                      <div class="likes">좋아요 100</div>
                      <div class="article_cnt">조회수 500</div>
                      <div class="carpinglevel">난이도 상</div>
                    </div>
                  </div>
                </div>
              </header>
              <article>
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste
                accusamus, labore velit unde voluptatem, debitis dolor culpa
                itaque pariatur laudantium repellendus delectus aliquid
                voluptatum neque possimus ullam voluptate. Ut, sunt! Lorem ipsum
                dolor sit amet, consectetur adipisicing elit. Repellat,
                praesentium sit sint nulla voluptatibus dolor consectetur
                itaque, velit eos explicabo amet tempora dolore rem laborum
                officiis assumenda atque nesciunt exercitationem? Lorem ipsum
                dolor sit amet consectetur adipisicing elit. Enim vel odio
                quidem, impedit explicabo incidunt maiores vitae et magnam eius
                soluta quas molestiae nulla nobis aperiam. Iure suscipit
                eligendi excepturi? Lorem ipsum dolor sit amet consectetur
                adipisicing elit. Nesciunt officiis quidem temporibus ducimus
                alias officia ipsum reprehenderit fugit eius sapiente dolor
                tempore repudiandae repellat placeat, iste aliquid architecto
                reiciendis id. Lorem ipsum dolor sit amet consectetur
                adipisicing elit. Id quas labore animi, rem ipsa aliquam quia a.
                Commodi vero deleniti
              </article>
            </div>
          </div>
        </section>
      </main>
    </div>
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <div
      class="bgded overlay row4"
      style="background-image: url('../images/demo/backgrounds/05.png')"
    >
      <footer id="footer" class="hoc clear">
        <!-- ################################################################################################ -->
        <div id="ctdetails" class="clear">
          <ul class="nospace clear">
            <li class="one_quarter first">
              <div class="block clear">
                <a href="#"><i class="fas fa-phone"></i></a>
                <span><strong>Give us a call:</strong> +00 (123) 456 7890</span>
              </div>
            </li>
            <li class="one_quarter">
              <div class="block clear">
                <a href="#"><i class="fas fa-envelope"></i></a>
                <span><strong>Send us a mail:</strong> support@domain.com</span>
              </div>
            </li>
            <li class="one_quarter">
              <div class="block clear">
                <a href="#"><i class="fas fa-clock"></i></a>
                <span
                  ><strong> Monday - Saturday:</strong> 08.00am - 18.00pm</span
                >
              </div>
            </li>
            <li class="one_quarter">
              <div class="block clear">
                <a href="#"><i class="fas fa-map-marker-alt"></i></a>
                <span
                  ><strong>Come visit us:</strong> Directions to
                  <a href="#">our location</a></span
                >
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
          Copyright &copy; 2018 - All Rights Reserved -
          <a href="#">Domain Name</a>
        </p>
        <p class="fl_right">
          Template by
          <a
            target="_blank"
            href="https://www.os-templates.com/"
            title="Free Website Templates"
            >OS Templates</a
          >
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
