<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%String cpath = request.getContextPath(); %>
<!DOCTYPE html>
<html lang="">
  <head>
    <title>WRITE</title>
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
                <a href="Index.do"><i class="fas fa-home"></i></a>
              </li>
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
        <h6 class="heading">글쓰기</h6>
        <ul>
          <li><a href="Index.do">Home</a></li>
          <li><a href="write.do">Write</a></li>
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
			<form name="frm" id="write_" action="<%=cpath%>/write.do" method="post">
			    <input type="hidden" name="latitude" id="latitude" value="">
			    <input type="hidden" name="longitude" id="longitude" value="">
				<div id="write_top">
					<div id="write_first">
						<h1 id="write_title">제목</h1>
						<input type="text" placeholder="제목" name="article_title" />
					</div>
					<hr />

					<div id="write_second">
						<h1 id="write_pic">사진 첨부</h1>
						<input id="write_pic_file" type="file" name="carping_pic1" />
						<div id="write_level_form">
							<h1 id="write_level">난이도</h1>
							<input type="radio" name="carping_level" value="상" checked />
							<h1 class="write_level_check" for="carping_level">상</h1>
							<input type="radio" name="carping_level" value="중" />
							<h1 class="write_level_check" for="carping_level">중</h1>
							<input type="radio" name="carping_level" value="하" />
							<h1 class="write_level_check" for="carping_level">하</h1>
							<div id="carping_level_explanation">
								상 : 화장실 없음, 전기 안됨 <br /> 중 : 화장실 있음 <br /> 하 : 유료 차박지
							</div>
						</div>
					</div>
					<hr />

					<div id="write_third">
						<h1 id="write_location">위치</h1>
						<div id="map"
							style="width: 1200px; height: 550px; margin: 0 auto;"></div>




						<script type="text/javascript"
							src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d98d9b2f0c4a6046323ef26fd36b2b16"></script>
						<script>
						var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
				        mapOption = { 
				            center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
				            level: 3 // 지도의 확대 레벨
				        };
				    
				    var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
				    
				    // 지도를 클릭한 위치에 표출할 마커입니다
				    var marker = new kakao.maps.Marker({ 
				        // 지도 중심좌표에 마커를 생성합니다 
				        position: map.getCenter() 
				    }); 
				    // 지도에 마커를 표시합니다
				    marker.setMap(map);
				    
				    // 지도에 클릭 이벤트를 등록합니다
				    // 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
				    kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
				        
				        // 클릭한 위도, 경도 정보를 가져옵니다 
				        var latlng = mouseEvent.latLng; 
				        
				        // 마커 위치를 클릭한 위치로 옮깁니다
				        marker.setPosition(latlng);
    
    var latitude = latlng.getLat();
    var longitude = latlng.getLng();
    document.frm.latitude.value=latitude;
    document.frm.longitude.value=longitude;
        
});


</script>
					</div>
				</div>
				<hr />
				<div id="write_fourth">
					<textarea name="article_content" id="wrtie_content" cols="135"
						rows="50"></textarea>
					<input type="submit" id="write_complete" value="글쓰기 완료" />
				</div>
			</form>
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
    <script src="../layout/scripts/jquery.min.js"></script>
    <script src="../layout/scripts/jquery.backtotop.js"></script>
    <script src="../layout/scripts/jquery.mobilemenu.js"></script>
  </body>
</html>
