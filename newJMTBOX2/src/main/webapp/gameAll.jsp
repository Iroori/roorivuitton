<%@page import="java.util.ArrayList"%>
<%@page import="model.TournamentVO"%>
<%@page import="model.TournamentDAO"%>
<%@page import="model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>JMTBOX - Contents is ALL in JMTBOX</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="style.css">
	
	<style>
	/*버튼 css*/
	.make-game #make-game-button{
	position:absolute;
	left:50%;
	top:50%;
	display:inline-block;
	border: 2px solid black;
	background-color:transparent;
	font-size:17px;
	width:250px;
	height:60px;
	transform:translate(-50%,-50%);
}
	.make-game #make-game-button:hover{
		background-color:#6e6e6e;
	}
	
	</style>
</head>

<body>
<%
request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");
response.setContentType("text/html;charset=UTF-8");
MemberVO vo = (MemberVO)session.getAttribute("member");

TournamentDAO TourDao = new TournamentDAO();
//TournamentVO TourVo= new TournamentVO();
ArrayList<TournamentVO> TourList= TourDao.showHotTournament();

%>
    <!-- Preloader -->
    <div class="preloader d-flex align-items-center justify-content-center">
        <div class="lds-ellipsis">
            <div></div>
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>
	

	
	
    <!-- ##### Header Area Start ##### -->
    <header class="header-area">
        <!-- Navbar Area -->
        <div class="oneMusic-main-menu">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    <!-- Menu -->
                    <nav class="classy-navbar justify-content-between" id="oneMusicNav">

                        <!-- Nav brand -->
                        <a href="main.jsp" class="nav-brand"><img src="img/bg-img/logo.png" alt=""></a>

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
                                    <li><a href="main.jsp">Home</a></li>
                                    <li><a href="#">Game</a>
                                    		<ul class="dropdown">
                                            <li><a href="gameAll.jsp">All game</a></li>
                                            <li><a href="gameRanPlay.jsp">Random game</a></li>
                                            <li><a href="gameMake.jsp">Make game</a></li>
                                    </ul>
                                  </li>
                                    <li><a href="albums-store.jsp">Search</a></li>
                                    <%if(vo!=null){ %>
                                    <li><a href="myPages/myPage.jsp">My</a></li>
                                    <%} %>
                                </ul>

                                <!-- Login/Register & Cart Button -->
                                <div class="login-register-cart-button d-flex align-items-center">
                                    <!-- Login/Register -->
                                    
                                    <div class="login-register-btn mr-50">
                                    <%if(vo==null){ %>
                                        <a href="login.jsp" id="loginBtn">Login / </a> 
                                        <a href="Register.jsp" id="loginBtn">Register</a>
                                        <%}else{%>
                                        <a href="Logout" id="logoutBtn">Logout</a>
                                        <% } %>
                                    </div>

                                    <!-- Cart Button -->
                         
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
    <section class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/breadcumb3.jpg);">
        <div class="bradcumbContent">
            <p>See what’s game</p>
            <h2>Games</h2>
        </div>
    </section>
    <!-- ##### Breadcumb Area End ##### -->
	
	
	<!-- Make Game Button Start -->
	
	<section class ="section-padding-100">
 		
	</section>
	
    <!-- Make Game Button End -->
    
    
    
    <!-- ##### Events Area Start ##### -->
    <section class="events-area section-padding-100">
        <div class="container">
            <div class="row">

                <!-- Single Event Area -->
                <%for (int i=0; i<TourList.size(); i++) {%>
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-event-area mb-30">
                        <div class="event-thumbnail">
                            <img src="<%=TourList.get(i).getThumbnail() %>" alt="">
                        </div>
                        <div class="event-text">
                            <h4><%=TourList.get(i).getTournamentName() %></h4>
                            <div class="event-meta-data">
                                
                            </div>
                            <a href="gamePlay.jsp?data=<%=TourList.get(i).getTournamentId() %>" class="btn see-more-btn">Game start</a>
                            
                        </div>
                    </div>
                </div>
				<%} %>
                <!-- Single Event Area -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-event-area mb-30">
                        <div class="event-thumbnail">
                            <img src="img/bg-img/e2.jpg" alt="">
                        </div>
                        <div class="event-text">
                            <h4>여자배우 월드컵</h4>
                            <div class="event-meta-data">
                               
                            </div>
                            <a href="#" class="btn see-more-btn">Game start</a>
                        </div>
                    </div>
                </div>

                <!-- Single Event Area -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-event-area mb-30">
                        <div class="event-thumbnail">
                            <img src="img/bg-img/e3.jpg" alt="">
                        </div>
                        <div class="event-text">
                            <h4>명대사 월드컵</h4>
                            <div class="event-meta-data">
                                
                            </div>
                            <a href="#" class="btn see-more-btn">Game start</a>
                        </div>
                    </div>
                </div>

                <!-- Single Event Area -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-event-area mb-30">
                        <div class="event-thumbnail">
                            <img src="img/bg-img/e4.jpg" alt="">
                        </div>
                        <div class="event-text">
                            <h4>장르 월드컵</h4>
                            <div class="event-meta-data">
                               
                            </div>
                            <a href="#" class="btn see-more-btn">Game start</a>
                        </div>
                    </div>
                </div>

                <!-- Single Event Area -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-event-area mb-30">
                        <div class="event-thumbnail">
                            <img src="img/bg-img/e5.jpg" alt="">
                        </div>
                        <div class="event-text">
                            <h4>수상작 월드컵</h4>
                            <div class="event-meta-data">
                               
                            </div>
                            <a href="#" class="btn see-more-btn">Game start</a>
                        </div>
                    </div>
                </div>

                <!-- Single Event Area -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-event-area mb-30">
                        <div class="event-thumbnail">
                            <img src="img/bg-img/e6.jpg" alt="">
                        </div>
                        <div class="event-text">
                            <h4>신작 월드컵</h4>
                            <div class="event-meta-data">
                               
                            </div>
                            <a href="#" class="btn see-more-btn">Game start</a>
                        </div>
                    </div>
                </div>

            </div>

        </div>
    </section>
    <!-- ##### Events Area End ##### -->

    <!-- ##### Newsletter & Testimonials Area Start ##### -->
   
    <!-- ##### Newsletter & Testimonials Area End ##### -->

    <!-- ##### Contact Area Start ##### -->
    <!-- ##### Contact Area End ##### -->
    <!-- ##### Footer Area Start ##### -->

    <!-- ##### Footer Area Start ##### -->
    <footer class="footer-area">
        <div class="container">
            <div class="row d-flex flex-wrap align-items-center">
                <div class="col-12 col-md-6">
                    <a href="main.jsp"><img src="img/bg-img/logo.png" alt=""></a>

                </div>

                <div class="col-12 col-md-6">
                    <div class="footer-nav">
                        <ul>
                           <li><a href="main.jsp">Home</a></li>
                            <li><a href="gameAll.jsp">Games</a></li>
                            <li><a href="albums-store.jsp">Search</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- ##### All Javascript Script ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="js/active.js"></script>
</body>

</html>