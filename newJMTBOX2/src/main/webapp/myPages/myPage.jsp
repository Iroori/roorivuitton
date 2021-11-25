<%@page import="model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<title>My Wish Contents List</title>

<!-- Favicon -->
<link rel="icon" href="../img/core-img/favicon.ico">

<!-- Stylesheet -->
<link rel="stylesheet" href="../style.css">

<style>
.row{
	display: flex;
  	justify-content: center;}

	.single-album{
	width : 20% !important;
	height : 40% !important;
	margin-right : 20% !important;
	}
	
	.footer-area{
	bottom : -120px;
	}
</style>


</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html;charset=UTF-8");
	MemberVO vo = (MemberVO) session.getAttribute("member");
	%>

	   <!-- ##### Header Area Start ##### -->
	    <header class="header-area">
	        <!-- Navbar Area -->
	        <div class="oneMusic-main-menu">
	            <div class="classy-nav-container breakpoint-off">
	                <div class="container">
	                    <!-- Menu -->
	                    <nav class="classy-navbar justify-content-between" id="oneMusicNav">

	                       <!-- Nav brand -->
	                        <a href="../main.jsp" class="nav-brand"><img src="../img/bg-img/logo.png" alt=""></a>

	                        <!-- Navbar Toggler -->
	                        <div class="classy-navbar-toggler">
	                            <span class="navbarToggler"><span></span><span></span><span></span></span>
	                        </div>

	                        <!-- Menu -->
	                        <div class="classy-menu">

	                            <!-- Close Button -->
	                            <div class="classycloseIcon">
	                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
	                            </div>

	                            <!-- Nav Start -->
	                            <div class="classynav">
	                                <ul>
	                                    <li><a href="../main.jsp">Home</a></li>
	                                    <li><a href="#">Game</a>
                                    		<ul class="dropdown">
                                           <li><a href="../tournament.jsp">All game</a></li>
                                            <li><a href=".jsp">Random game</a></li>
                                            <li><a href=".jsp">Make game</a></li>
                                    </ul>
                                   </li>
	                                    
	                                    <li><a href="../contentInfo.jsp">Search</a></li>
	                                    <%if(vo!=null){ %>
	                                    <li><a href="myPage.jsp">My</a></li>
	                                    <%} %>
	                                </ul>

	                                <!-- Login/Register & Cart Button -->
	                                <div class="login-register-cart-button d-flex align-items-center">
	                                    <!-- Login/Register -->
	                                    
	                                    <div class="login-register-btn mr-50">
	                                    <%if(vo==null){ %>
	                                        
	                                        <a href="../login.jsp" id="loginBtn">Login / </a> 
                                        	<a href="../Register.jsp" id="loginBtn">Register</a>
	                                        <%}else{%>
	                                        <a href="Logout.do" id="logoutBtn">Logout</a>
	                                        <% } %>
	                                    </div>

	                                    
	                                </div>
	                            </div>
	                            <!-- Nav End -->

	                        </div>
	                    </nav>
	                </div>
	            </div>
	        </div>
	    </header>
	    <!-- ##### Header Area End ##### -->	
	    
	     <!-- ##### Breadcumb Area Start ##### -->
	<section class="breadcumb-area bg-img bg-overlay"
		style="background-image: url(../img/bg-img/breadcumb3.jpg);">
		<div class="bradcumbContent">
			<p><%=vo.getNick()%>님의</p>
			<h2>MY PAGES</h2>
		</div>
	</section>
	<!-- ##### Breadcumb Area End ##### -->
	

	<!-- 마이페이지 목록들 -->
	<section class="latest-albums-area section-padding-100-0">
		<div class="container">
			<div class="row">
			</div>
		</div>
	</section>
	<section class="latest-albums-area section-padding-0-100">
		<div class="container">
			<div class="row">
				<!-- 내가 찜한 컨텐츠 -->
				<div class="col-12 col-sm-6 col-md-3 col-lg-2">
					<div class="single-web-icon mb-30">
						<a href="myWishContents.jsp"><i class="icon-heart"></i> 
						My wishlist</a>
					</div>
				</div>
				<!-- 내가 본 컨텐츠 -->
					<div class="col-12 col-sm-6 col-md-3 col-lg-2">
						<div class="single-web-icon mb-30">
							<a href="mySeenContents.jsp">
							<i class="icon-video-camera"></i> 
							Seen contents</a>
						</div>
					</div>
				<!-- 좋아요한 컨텐츠 -->
					<div class="col-12 col-sm-6 col-md-3 col-lg-2">
						<div class="single-web-icon mb-30">
							<a href="myLikeContents.jsp"><i class="icon-like"></i> 
							Like contents</a>
						</div>
					</div>
				<!-- 내가 만든 게임 -->
					<div class="col-12 col-sm-6 col-md-3 col-lg-2">
						<div class="single-web-icon mb-30">
							<a href="#"><i class="icon-gamepad"></i>
							Make game</a>
						</div>
					</div>
				<!-- 내가 참여한 게임 -->
					<div class="col-12 col-sm-6 col-md-3 col-lg-2">
						<div class="single-web-icon mb-30">
							<a href="#"><i class="icon-trophy"></i> 
							My game</a>
						</div>
					</div>
				<!-- 작성한 리뷰 -->
					<div class="col-12 col-sm-6 col-md-3 col-lg-2">
						<div class="single-web-icon mb-30">
							<a href="myReviews.jsp"><i class="icon-chat"></i> 
							My reviews</a>
						</div>
					</div>		
			</div>
		</div>
	</section>
	
	    <!-- ##### Footer Area Start ##### -->
    <footer class="footer-area" >
        <div class="container">
            <div class="row d-flex flex-wrap align-items-center">
                <div class="col-12 col-md-6">
                    <a href="main.jsp"><img src="../img/bg-img/logo.png" alt=""></a>

                </div>

                <div class="col-12 col-md-6">
                    <div class="footer-nav">
                        <ul>
                            <li><a href="../main.jsp">Home</a></li>
                            <li><a href="../tournament.jsp">Games</a></li>
                            <li><a href="../contentInfo.jsp">Search</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>


	<!-- ##### All Javascript Script ##### -->
	<!-- jQuery-2.2.4 js -->
	<script src="../js/jquery/jquery-2.2.4.min.js"></script>
	<!-- Popper js -->
	<script src="../js/bootstrap/popper.min.js"></script>
	<!-- Bootstrap js -->
	<script src="../js/bootstrap/bootstrap.min.js"></script>
	<!-- All Plugins js -->
	<script src="../js/plugins/plugins.js"></script>
	<!-- Active js -->
	<script src="../js/active.js"></script>

</body>
</html>