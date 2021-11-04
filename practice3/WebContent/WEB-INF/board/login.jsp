<%@page import="kr.smhrd.util.SuperVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
            <h1><a href="index.html">C-ZONE</a></h1>
            <!-- ################################################################################################ -->
          </div>
          <nav id="mainav" class="fl_right">
            <!-- ################################################################################################ -->
            <ul class="clear">
              <li class="active"><a href="index.html">Home</a></li>
              <li><a href="#">정복지</a></li>
              <li><a href="#">글쓰기</a></li>
              <li><a href="#">마이페이지</a></li>
              <li><a href="#">로그인</a></li>
              <li><a href="#">회원가입</a></li>
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
    <h6 class="heading">로그인</h6>
    <ul>
      <li><a href="#">Home</a></li>
      <li><a href="#">Log-in</a></li>
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
      <!-- log-in -->
      <div id="log-in">
      <hr class="signup_hr"/>
        <div class="log_in_menu">
        <div class="e-mail">
          <img class=e-mail_i src="images/demo/signup_logos/mail.png"></img>
          <input class="e-mail_text" type="text" placeholder="ID를 입력해주세요."></input>
        </div>
      </div>
      <div class="log_in_menu">
        <div class="password">
          <img class=password_i src="images/demo/signup_logos/password.png"></img>
          <input class="password_text" type="password" maxlength="5" placeholder="비밀번호"></input>
        </div>
      </div>

        <div class="log_in">로그인</div>

      <div class="log_service">
        <div class="log_service_menu">비밀번호 재설정</div>
        <div class="log_service_menu">회원가입</div>
      </div>
      <hr class="signup_hr"/>
      </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="bgded overlay row4" style="background-image:url('images/demo/backgrounds/05.png');">
  <footer id="footer" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div id="ctdetails" class="clear">
      <ul class="nospace clear">
        <li class="one_quarter first">
          <div class="block clear"><a href="#"><i class="fas fa-phone"></i></a> <span><strong>Give us a call:</strong> +00 (123) 456 7890</span></div>
        </li>
        <li class="one_quarter">
          <div class="block clear"><a href="#"><i class="fas fa-envelope"></i></a> <span><strong>Send us a mail:</strong> support@domain.com</span></div>
        </li>
        <li class="one_quarter">
          <div class="block clear"><a href="#"><i class="fas fa-clock"></i></a> <span><strong> Monday - Saturday:</strong> 08.00am - 18.00pm</span></div>
        </li>
        <li class="one_quarter">
          <div class="block clear"><a href="#"><i class="fas fa-map-marker-alt"></i></a> <span><strong>Come visit us:</strong> Directions to <a href="#">our location</a></span></div>
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
    <p class="fl_left">Copyright &copy; 2018 - All Rights Reserved - <a href="#">Domain Name</a></p>
    <p class="fl_right">Template by <a target="_blank" href="https://www.os-templates.com/" title="Free Website Templates">OS Templates</a></p>
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
 
	<!-- JAVASCRIPTS -->
		<!-- kakao log-in -->

<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
  <script>
    // 	60c5862d446a5921c13cb5f4cf5c1216

    // 윈도우가 열리자마자 띄우기
    window.Kakao.init("60c5862d446a5921c13cb5f4cf5c1216");
    // SDK 초기화 여부를 판단합니다.
    console.log(Kakao.isInitialized());

    function kakaoLogin() {
      window.Kakao.Auth.login({
        scope:'profile_nickname , profile_image',
        success : function(authObj) {
          console.log(authObj);
          window.Kakao.API.request({
            url : '/v2/user/me',
            success: function(res){ 
              const kakao_account = res.kakao_account;
              console.log(kakao_account);
            }
          });
        }
      });
    };
  </script>
	
</body>
</html>
