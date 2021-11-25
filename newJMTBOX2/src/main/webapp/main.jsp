<%@page import="model.TournamentVO"%>
<%@page import="model.TournamentDAO"%>
<%@page import="model.ContentVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.ContentDAO"%>
<%@page import="model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<!-- push -->
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

</head>

<body>
<%
request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");
response.setContentType("text/html;charset=UTF-8");
MemberVO vo = (MemberVO)session.getAttribute("member");
	//인기 토너먼트 게임
	TournamentDAO tourDao = new TournamentDAO();
	ArrayList<TournamentVO> hotTourList = tourDao.showHotTournament();

	 //작품 리스트 우선 LatestContent
	ContentVO cvo = new ContentVO();
	ContentDAO dao = new ContentDAO();
	//얘는 최신content
	ArrayList<ContentVO> newList = null;
	newList = dao.showLatestContents();
	
	//얘는 hot content
	ArrayList<ContentVO> hotList = null;
	hotList = dao.showHotContents();
	
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

    <!-- ##### MainBanner 1)광고 2)단일추천 ##### -->
    <section class="hero-area">
        <div class="hero-slides owl-carousel">
            <!-- Single Hero Slide -->
            <div class="single-hero-slide d-flex align-items-center justify-content-center">
                <!-- Slide Img -->
                <div class="slide-img bg-img" style="background-image: url(img/bg-img/Main_banner2.jpg);"></div>
                <!-- Slide Content -->
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="hero-slides-content text-center">
                                <!-- <h6 data-animation="fadeInUp" data-delay="100ms">Latest album</h6>
                                <h2 data-animation="fadeInUp" data-delay="300ms">Beyond Time <span>Beyond Time</span></h2>
                                 -->
                                <a data-animation="fadeInUp" style="top:60%" data-delay="500ms" href="#" class="btn oneMusic-btn mt-50">Discover <i class="fa fa-angle-double-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Single Hero Slide -->
            <div class="single-hero-slide d-flex align-items-center justify-content-center">
                <!-- Slide Img -->
                <div class="slide-img bg-img" style="background-image: url(img/bg-img/bg-2.jpg);"></div>
                <!-- Slide Content -->
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="hero-slides-content text-center">
                                <h6 data-animation="fadeInUp" data-delay="100ms">Latest album</h6>
                                <h2 data-animation="fadeInUp" data-delay="300ms">Colorlib Music <span>Colorlib Music</span></h2>
                                <a data-animation="fadeInUp" data-delay="500ms" href="#" class="btn oneMusic-btn mt-50">Discover <i class="fa fa-angle-double-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    
    <!-- 검색창 Start -->
    <section class ="section-padding-100">

		<div class="search-container">
			<p class="search-title">Search Box</p>
			<form action="movieDetail.jsp">
				<div class="search-box">
					<!-- 검색 name값을 content_id로 잡아야하나?.. -->
					<a href="albums-store.jsp">
					<input class="search-input" placeholder="Search"
						name="search">
						<button class="searchbtn" name = "click">
						<img class="btn-img" src="./img/bg-img/btn-img.png">
					</button>
						</a>
					
				</div>
			</form>
		</div>


	</section>
    
    
    <!-- 검색창 End -->
    
    
    

    <!-- ##### Latest Albums Area1 Start ##### -->
    <!-- ##### 월드컵 목록  ##### -->
    
    <section class="latest-albums-area section-padding-100">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading style-2">
                        <p> This week! </p>
                        <h2>Top 15 Games</h2>
                    </div>
                </div>
            </div>
            

            <div class="row">



				<div class="col-12">
					<div class="albums-slideshow owl-carousel">
						<!-- List 1 -->
						<%
						for (TournamentVO i : hotTourList) {
						%> 
						<div class="single-album" onClick="location.href='gamePlay.jsp?content_id=<%=i.getTournamentId()%>'">
							<div class="single-album-container">
								<div class="img-center">
									<a href="gamePlay.jsp?data=<%=i.getTournamentId()%>"> 
									<img src="<%=i.getThumbnail()%>" alt="">
									</a>
								</div>
							</div>
							<div class="album-info">
								<a href="#">
									<h5><%=i.getTournamentName()%></h5>
								</a>
							</div>
						</div>
						<%
						}
						%>
					</div>
				</div>



			</div>
        </div>
    </section>
    
    
    <!-- ##### 월드컵 목록 끝 ##### -->
    

    <!-- ##### 22 Start ##### -->
    <!-- #####  인기 컨텐츠 hot Contents  ##### -->
    
    <section class="latest-albums-area section-padding-100">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading style-2">
                        <p> in JMTBOX </p>
                        <h2>Hot Contents</h2>
                    </div>
                </div>
            </div>
            

            <div class="row">
                <div class="col-12">
                    <div class="albums-slideshow owl-carousel">
                       <!-- List 1 -->
                       <%for(int i=0; i<15;i++){ %>
                        <div class="single-album" onclick="location.href='contentInfo.jsp?content_id=<%=hotList.get(i).getContent_id()%>'">
                        	<div class="single-album-container">
                        		<div class="img-center">
                           	 		<img src="<%=hotList.get(i).getC_thumbnail() %>" alt="">
                            	</div>
                            </div>
                            <div class="album-info">
                                <a href="#">
                                    <h5><%=hotList.get(i).getTitle() %></h5>
                                </a>
                            </div>
                        </div>
                        <%} %>
                        <!-- ------ -->

                      
                        
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- 나열 list 추가하고 싶으면 lastest Albums Area1 End 섹션 추가하기! -->
    <!-- ##### 인기 컨텐츠 hot Contents  ##### -->
    <!-- ##### Latest Albums Area1 End ##### -->
   	
   	 <!-- ##### 33 Start ##### -->
    <!-- #####  새로운 컨텐츠 new Contents  ##### -->
    
    <section class="latest-albums-area section-padding-100-end">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading style-2">
                        <p> What's new? </p>
                        <h2>New Contents</h2>
                    </div>
                </div>
            </div>
            

            <div class="row">
                <div class="col-12">
                    <div class="albums-slideshow owl-carousel">
                       <!-- List 1 -->
                       <% for(int i = 0; i < newList.size(); i++){ %>
                        <div class="single-album">
                        	<div class="single-album-container">
                        		<div class="img-center">
                           	 		<img src="<%=newList.get(i).getC_thumbnail() %>" alt="">
                            	</div>
                            </div>
                            <div class="album-info">
                                <a href="#">
                                    <h5><%= newList.get(i).getTitle() %></h5>
                                </a>
                            </div>
                        </div>
                        <% } %>
<!-- ------------------------------------------------ -->
                        
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- 나열 list 추가하고 싶으면 lastest Albums Area1 End 섹션 추가하기! -->
    <!-- ##### 새로운 컨텐츠 new contents  ##### -->
    <!-- ##### Latest Albums Area1 End ##### -->
   	
   
    <!-- ##### Featured Artist Area2 Start ##### -->
    <!-- 닥치고 이거나봐! -->
    <section class="featured-artist-area section-padding-100 bg-img bg-overlay bg-fixed" style="background-image: url(img/bg-img/bg-4.jpg);">
        <div class="container">
            <div class="row align-items-end">
                <div class="col-12 col-md-5 col-lg-4">
                    <div class="featured-artist-thumb">
                        <img src="img/bg-img/fa.jpg" alt="">
                    </div>
                </div>
                <div class="col-12 col-md-7 col-lg-8">
                    <div class="featured-artist-content">
                        <!-- Section Heading -->
                        <div class="section-heading white text-left mb-30">
                            <p>See what’s new</p>
                            <h2>Buy What’s New</h2>
                        </div>
                        <p>Nam tristique ex vel magna tincidunt, ut porta nisl finibus. Vivamus eu dolor eu quam varius rutrum. Fusce nec justo id sem aliquam fringilla nec non lacus. Suspendisse eget lobortis nisi, ac cursus odio. Vivamus nibh velit, rutrum at ipsum ac, dignissim iaculis ante. Donec in velit non elit pulvinar pellentesque et non eros.</p>
                        <div class="song-play-area">
                            <div class="song-name">
                                <p>01. Main Hit Song</p>
                            </div>
                            <audio preload="auto" controls>
                                <source src="audio/dummy-audio.mp3">
                            </audio>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Featured Artist Area End ##### -->

	
    
    <!-- ##### Footer Area Start ##### -->
      <footer class="footer-area">
        <div class="container">
            <div class="row d-flex flex-wrap align-items-center">
                <div class="col-12 col-md-6">
                    <a href="#"><img src="img/bg-img/logo.png" alt=""></a>

                </div>

                <div class="col-12 col-md-6">
                    <div class="footer-nav">
                        <ul>
                            <li><a href="main.jsp">Home</a></li>
                            <li><a href="gameALl.jsp">Games</a></li>
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
    <script>
    	const Searching = Search.prototype;
    	
    	function Search(){
    		this.keyword = document.querySelector('input[name = "search"]');
    		
    	}
    </script>
</body>

</html>