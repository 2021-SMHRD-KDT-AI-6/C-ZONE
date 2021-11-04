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
              <li><a href="writeForm.do">�۾���</a></li>
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
						<h1 id="write_title">����</h1>
						<input type="text" placeholder="����" name="article_title" />
					</div>
					<hr />

					<div id="write_second">
						<h1 id="write_pic">���� ÷��</h1>
						<input id="write_pic_file" type="file" name="carping_pic1" />
						<div id="write_level_form">
							<h1 id="write_level">���̵�</h1>
							<input type="radio" name="carping_level" value="��" checked />
							<h1 class="write_level_check" for="carping_level">��</h1>
							<input type="radio" name="carping_level" value="��" />
							<h1 class="write_level_check" for="carping_level">��</h1>
							<input type="radio" name="carping_level" value="��" />
							<h1 class="write_level_check" for="carping_level">��</h1>
							<div id="carping_level_explanation">
								�� : ȭ��� ����, ���� �ȵ� <br /> �� : ȭ��� ���� <br /> �� : ���� ������
							</div>
						</div>
					</div>
					<hr />

					<div id="write_third">
						<h1 id="write_location">��ġ</h1>
						<div id="map"
							style="width: 1200px; height: 550px; margin: 0 auto;"></div>




						<script type="text/javascript"
							src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d98d9b2f0c4a6046323ef26fd36b2b16"></script>
						<script>
						var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
				        mapOption = { 
				            center: new kakao.maps.LatLng(33.450701, 126.570667), // ������ �߽���ǥ
				            level: 3 // ������ Ȯ�� ����
				        };
				    
				    var map = new kakao.maps.Map(mapContainer, mapOption); // ������ �����մϴ�
				    
				    // ������ Ŭ���� ��ġ�� ǥ���� ��Ŀ�Դϴ�
				    var marker = new kakao.maps.Marker({ 
				        // ���� �߽���ǥ�� ��Ŀ�� �����մϴ� 
				        position: map.getCenter() 
				    }); 
				    // ������ ��Ŀ�� ǥ���մϴ�
				    marker.setMap(map);
				    
				    // ������ Ŭ�� �̺�Ʈ�� ����մϴ�
				    // ������ Ŭ���ϸ� ������ �Ķ���ͷ� �Ѿ�� �Լ��� ȣ���մϴ�
				    kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
				        
				        // Ŭ���� ����, �浵 ������ �����ɴϴ� 
				        var latlng = mouseEvent.latLng; 
				        
				        // ��Ŀ ��ġ�� Ŭ���� ��ġ�� �ű�ϴ�
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
					<input type="submit" id="write_complete" value="�۾��� �Ϸ�" />
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
