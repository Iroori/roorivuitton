<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    
    <link rel="stylesheet" href="resources/admin/css/basic.css"> 
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
  
</head>
<body>
	<div class="body_container">
		<!-- 사이드 메뉴 바 -->
		<div class="d-flex flex-column flex-shrink-0 bg-light"
			style="width: 5rem; height: 100vh; float: left; background-color: #094275 !important; position: sticky; top: 0;">
			<a href="main" class="d-block p-3 link-dark text-decoration-none"
				title="" data-bs-toggle="tooltip" data-bs-placement="right"
				data-bs-original-title="Icon-only"> <img class="bi" width="50"
				height="50" style="margin-top: 25px; margin-bottom: 140px;"
				src="resources/admin/images/icon/logo-v.png">

			</a>
			<ul class="nav nav-pills nav-flush flex-column mb-auto text-center">
				<li class="nav-item"><a href="main"
					class="nav-link py-3 border-bottom border-top"
					style="padding-top: 1.5rem !important; padding-bottom: 1.5rem !important;"
					aria-current="page" title="" data-bs-toggle="tooltip"
					data-bs-placement="right" data-bs-original-title="Home"> <img
						class="bi" width="30" height="30"
						src="resources/admin/images/icon/home-white.png">
				</a></li>
				<li><a href="#" id="notification-icon" class="nav-link py-3 border-bottom"
					style="padding-top: 1.5rem !important; padding-bottom: 1.5rem !important;"
					title="" data-bs-toggle="tooltip" data-bs-placement="right"
					data-bs-original-title="Dashboard"> <img class="bi" width="30"
						height="30"
						src="resources/admin/images/icon/notification-white.png">
				</a></li>
				<li><a href="cctv" class="nav-link py-3 border-bottom"
					style="padding-top: 1.5rem !important; padding-bottom: 1.5rem !important;"
					title="" data-bs-toggle="tooltip" data-bs-placement="right"
					data-bs-original-title="Orders"> <img class="bi" width="30"
						height="30" src="resources/admin/images/icon/camera-white.png">
				</a></li>
				<li><a href="stealcut" class="nav-link py-3 border-bottom"
					style="padding-top: 1.5rem !important; padding-bottom: 1.5rem !important;"
					title="" data-bs-toggle="tooltip" data-bs-placement="right"
					data-bs-original-title="Products"> <img class="bi" width="30"
						height="30" src="resources/admin/images/icon/cloud-data-white.png">
				</a></li>
				<li><a href="peoplecount" class="nav-link py-3 border-bottom"
					style="padding-top: 1.5rem !important; padding-bottom: 1.5rem !important;"
					title="" data-bs-toggle="tooltip" data-bs-placement="right"
					data-bs-original-title="Customers"> <img class="bi" width="30"
						height="30" src="resources/admin/images/icon/group-white.png">
				</a></li>
				<li><a href="settings" class="nav-link py-3 border-bottom"
					style="padding-top: 1.5rem !important; padding-bottom: 1.5rem !important;"
					title="" data-bs-toggle="tooltip" data-bs-placement="right"
					data-bs-original-title="Customers"> <img class="bi" width="30"
						height="30" src="resources/admin/images/icon/gear-white.png">
				</a></li>
			</ul>

		</div>



		<section class="section section-visual">
			<div class="content-wrap">
				<div class="content-title">
					<h3>적정인원</h3>
					<p>People count</p>
					<hr class="line">
				</div>
				<div class="chart-container">
					<div class="content-chart">
						<div class="chart" data-percent="${person}">
							<span class="title">55</span>
						</div>

						<div class="people-count">
							<h3>2 강의장</h3>
							<p>설정 인원 : 20</p>
							<button class="btn" type="button" onclick="">CCTV</button>
						</div>
					</div>

					<div class="content-chart">
						<div class="chart" data-percent="100">
							<span class="title">초과</span>
						</div>

						<div class="people-count">
							<h3>2 강의장</h3>
							<p>설정 인원 : 20</p>
							<button class="btn" type="button" onclick="">CCTV</button>
						</div>
					</div>

				</div>
				
				<!--알림 new창 -->
            <div class="notification-section" >
                <h3>알림</h3>
                <p>Notification</p>
                <hr/>
                

                <div class="notification-content" >
                    
                    <div class="icon-section">
                        <i class="fas fa-users" ></i>
                    </div>
                    <div class="notification-content-title">
                        <h5 >[마스크 미착용자]</h5>
                        <p style="float:left; font-size:17px;">6 강의장 </p>
                        <p style="float: right; font-size:16px;">2022.01.17</p>    
                    </div>

                    <div class="notification-content-detail">
                        <h5>내용</h5>
                        <hr>
                        <p>[마스크 미착용자]</p>
                    </div>
                    
                    <hr/>
                    
                </div>

                
                <div class="notification-content" >
                    
                    <div class="icon-section">
                        <i class="fas fa-users" ></i>
                    </div>
                    <div class="notification-content-title">
                        <h5 style="font-weight: 600; font-size: 20px;
                        padding-bottom:5px">[마스크 미착용자]</h5>
                        <p style="float:left; font-size:17px;">6 강의장 </p>
                        <p style="float: right; font-size:16px;">2022.01.17</p>    
                    </div>
                    
                    <hr/>
                    
                </div>
                              
            </div> 
				
				
				
				
			</div>
			<!--script추가-->
			<script src="http://code.jquery.com/jquery-2.0.3.min.js"></script>
			<script
				src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
			<script src="resources/admin/js/jquery.easypiechart.min.js"></script>
			<script>
        $(function() {
            $('.chart').easyPieChart({
                barColor: '#195c97',
                trackColor: '#fff',
                scaleColor: '#ccc',
                lineCap: 'round',
                lineWidth: 30,
                size: 200,
                animate: 1000,
                onStart: $.noop,
                onStop: $.noop,
                easing: 'easeOutBounce',
                onStep: function(from, to, percent) {
                    $(this.el).find('.percent').text(Math.round(percent));
                }
            });
            var chart = window.chart = $('.chart').data('easyPieChart');
            $('.js_update').on('click', function() {
                chart.update(Math.random()*200-100);
            });
        });
        </script>
		<script>
            // notification  알람 아이콘 클릭시
            $(document).ready(function(){
                $('#notification-icon').click(function(){
                	if($('.notification-section').css('display')=='none'){
                        $('.notification-section').show();
                    }else{
                        $('.notification-section').css('display','none');
                    }
                    
                });
            });
    
        </script>
        <script>
            $(document).ready(function(){
                $('.notification-content').click(function(){
                    if($('.notification-content-detail').css('display')=='none'){
                        $('.notification-content-detail').show();
                    }else{
                        $('.notification-content-detail').css('display','none');
                    }
                    
                });
            });
        </script>

		</section>
	</div>



</body>
</html>
