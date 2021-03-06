<%@page import="java.util.ArrayList"%>
<%@page import="kr.smhrd.util.MbVO"%>
<%@page import="kr.smhrd.util.SuperVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	MbVO members = (MbVO) session.getAttribute("succ");
String cpath = request.getContextPath();
%>
<%
	SuperVO vo = (SuperVO) request.getAttribute("vo");
%>
<%
	ArrayList<SuperVO> list = (ArrayList<SuperVO>) request.getAttribute("list");
	SuperVO result = (SuperVO)request.getAttribute("result");
%>
<!DOCTYPE html>
<html lang="">
<head>
<title>WRITE</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css"
	media="all" />
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
	<script>
	function likeAdd(){
			location.href="likeadd.do?mb_num=<%=members.getMb_num()%>&article_num=<%=vo.getArticle_num()%>";
	}
	
	function likeDelete(){
			location.href="likedelete.do?mb_num=<%=members.getMb_num()%>&article_num=<%=vo.getArticle_num()%>";
		}
	
	</script>
	<script>history.scrollRestoration = "auto"</script>
</head>
<body id="top">
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<!-- Top Background Image Wrapper -->
	<div class="bgded overlay"
		style="background-image: url('images/demo/backgrounds/하늘.png')">
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
						<%
							if (members == null) {
						%>
						<li><a href="sl.do">글쓰기</a></li>
						<li><a href="sl.do">마이페이지</a></li>
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
						<li><a href="sl.do">로그인</a></li>
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
			<h6 class="heading">게시글</h6>
			<ul>
				<li><a href="Index.do">Home</a></li>
				<li><a href="<%=cpath%>/article.do?article_num=<%=vo.getArticle_num()%>">ARTICLE</a></li>
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
						<div id="articlepage_title"><%=vo.getArticle_title()%></div>
						<div id="articlepage_second">
							<a href="<%=cpath%>/memberpage.do?mb_num=<%=vo.getMb_num()%>"><img
								id="articlepage_profile_pic"
								src="<%=vo.getMb_profile_pic() %>" alt="프로필사진" /></a>
							<div id="articlepage_profile">
								<a href="<%=cpath%>/memberpage.do?mb_num=<%=vo.getMb_num()%>"><div id="articlepage_mb_id"><%=vo.getMb_nickname()%></div></a>
								<div id="articlepage_reg_date"><%=vo.getReg_date()%></div>
							</div>
						<div id="articlepage_third">
							<div id="articlepage_level">
	                      	   난이도 <%if(vo.getCarping_level().equals("상")) {%>
							  <img class="level_img2" src="images/demo/backgrounds/상.png" />
							  <%}else if(vo.getCarping_level().equals("중")) {%>
							  <img class="level_img2" src="images/demo/backgrounds/중.png" />
							  <%}else { %>
							  <img class="level_img2" src="images/demo/backgrounds/하.png" />
							  <%} %>
	                        </div>
							<div id="articlepage_cnt">
								조회수 <%=vo.getArticle_cnt()%>
							</div>
							<div id="articlepage_like">
								<div id="articlepage_like_num">
									좋아요 <span id="like_cnt"><%=vo.getLikes()%></span>
								</div>
									<% if(result == null){ %>
                        <div class="heart_btn" onclick="likeAdd();"><i class="far fa-heart"></i></div>
                <% } else { %>
                        <div class="heart_btn" onclick="likeDelete();"><i class="fas fa-heart"></i></div>
                <% } %>
							</div>
						</div>
						</div>
					</div>
				<img id="article_thumbnail" src="<%=vo.getCarping_pic1()%>" />
				</div>
				<hr />
					<div id="map"
					style="
					position: absolute;
                    margin-right: 3%;
                    width: 1100px;
					height: 500px; 
					float: right;
					margin: 15px 15px;
					"></div>
					<div id="weather">
        <div id="weather_title">Now </div>
        <div id="weather_content">
        <div id="weather_img">

        </div>
        <div id="weather_temp">
        </div>
    </div>
    </div>
				<hr style = "margin-top: 550px"/>
				<div id="articlepage_content">
					<%=vo.getArticle_content()%>
				</div>
				<hr />
				<div id="comment_title">댓글</div>

				<%
					for (SuperVO comment : list) {
				%>
				<div class="comment">
					<div class="comment_first">
						<a href="<%=cpath%>/memberpage.do?mb_num=<%=comment.getMb_num()%>"> <img class="comment_profile_pic"
							src="<%=comment.getMb_profile_pic() %>" alt="프로필사진" />
						</a>
						<div class="comment_profile">
							<a href="<%=cpath%>/memberpage.do?mb_num=<%=comment.getMb_num()%>"><div
									class="articlepage_mb_id"><%=comment.getMb_nickname()%></div></a>
							<div class="articlepage_reg_date"><%=comment.getReg_date()%></div>
						</div>
					</div>
					<div class="comment_content"><%=comment.getComment_content()%>
					<% if (members == null) {%> 
					<% }else if ( comment.getMb_num() == members.getMb_num()){%>
					
					<form action="commentDelete.do" id="comment_delete">
						<input type="hidden" name="article_num" value="<%=vo.getArticle_num() %>" />
						<input type="hidden" name="comment_num" value="<%=comment.getComment_num() %>" />
						<input class="DG"type="submit" value="삭제" />
					</form>
					<% } %>
					</div>
				</div>

				<hr />
				<%
					}
				%>
				<%
					if (members == null) {
				%>
				<form action="commentInsert.do" id="comment_write">
					<textarea type="text" id="comment_content" name="comment_content" placeholder="댓글을 입력해주세요."></textarea>
					<input type="button" id="comment_btn" onclick="location.href='sl.do'" value="입력"/>
				</form>
				<%
					} else {
				%>
				<form action="commentInsert.do" id="comment_write">
					<input type="hidden" name="mb_num" value="<%=members.getMb_num()%>" />
					<input type="hidden" name="article_num"
						value="<%=vo.getArticle_num()%>" />
					<textarea type="text" id="comment_content" name="comment_content"
						placeholder="댓글을 입력해주세요." value="default value"></textarea>
					<input type="submit" id="comment_btn" />
				</form>
				<%
					}
				%>
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
	<script src="layout/scripts/jquery.min.js"></script>
	<script src="layout/scripts/jquery.backtotop.js"></script>
	<script src="layout/scripts/jquery.mobilemenu.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d98d9b2f0c4a6046323ef26fd36b2b16"></script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(<%=vo.getLatitude()%>, <%=vo.getLongitude()%>), // 지도의 중심좌표
			level : 10
		// 지도의 확대 레벨
		};

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

		// 마커가 표시될 위치입니다
		var markerPosition = new kakao.maps.LatLng(<%=vo.getLatitude()%>, <%=vo.getLongitude()%>);

		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
			position : markerPosition,
		});
		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);
	</script>
	<script>
	$.getJSON('http://api.openweathermap.org/data/2.5/weather?lat=<%=vo.getLatitude()%>&lon=<%=vo.getLongitude()%>&appid=d19125754412434c67742623d54b613a&units=metric',function(data){
        let $Temp = Math.round(data.main.temp);
        let $img = data.weather[0].main;
        let $title = data.name;
        console.log($img);
        console.log($Temp);
        console.log($title);
        let img = document.querySelector('#weather_img');
        let temp = document.querySelector('#weather_temp');
        let title = document.querySelector('#weather_title');
        if ($img === 'Clouds') {
            img.innerHTML = '<i class="fas fa-cloud"></i>';
        }else if ($img === 'Clear'){
            img.innerHTML = '<i class="fas fa-sun"></i>';
        }else if ($img === 'Rain'){
            img.innerHTML = '<i class="fas fa-cloud-rain"></i>';
        }else {
            img.innerHTML = '<i class="fas fa-snowflake"></i>';
        }
        if ($Temp === 'Yach') {
            $Temp = 'Gwangju';
        }
        temp.innerHTML = "<span>"+$Temp+"℃</span>";
        title.innerHTML = "<span>Now "+$title+"</span>";
        })
	</script>
</body>
</html>