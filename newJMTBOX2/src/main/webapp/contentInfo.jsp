<%@page import="model.TournamentVO"%>
<%@page import="model.TournamentDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.ReviewVO"%>
<%@page import="model.ReviewDAO"%>
<%@page import="model.ContentVO"%>
<%@page import="model.ContentDAO"%>
<%@page import="model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	@font-face {
    font-family: 'Pretendard-Light';
    src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Light.woff') format('woff');
    font-weight: 200;
    font-style: normal;
}
html,body {
	background-color: rgba(0, 0, 0, 0.95);
	width: 100%
}

h1, h2, h3, h4, h5, h6 {
	font-family: "Pretendard-Light";
	color: #ffffff;
	line-height: 1.3;
}
p{
font-family:"Pretendard-Light";
}
.col-12{
padding-left:0px !important;}
</style>
</head>

<body>
<%
	MemberVO vo = (MemberVO)session.getAttribute("member");
//?content_id=<%=hotList.get(i).getContent_id() =>main에서 contetnInfo(현재페이지) 쿼리스트링으로 content_id를 넘겨줄 값
//main.jsp에서 클릭한 콘텐츠의 id값을 request.getParameter("content_id")로 받아왔는데 String형태라 int형태로 바꿔주고
//다시 content_id 변수에 담아줌! => ※ 이게 main과 contentInfo의 content_id를 동일하게 하는것!!!
	int content_id = Integer.parseInt(request.getParameter("content_id"));

	//DAO,VO 사용
	ContentDAO conDao = new ContentDAO();


	ContentVO conVo = new ContentVO();	
	conVo=null;

	conVo=conDao.showContentInfo(content_id);

	System.out.println(conVo.getYoutube());
	
	//리뷰
	ReviewDAO revDao = new ReviewDAO();
	ReviewVO revVo = new ReviewVO();
	
	ArrayList<ReviewVO> ReviewList = null; 
	
	
	ReviewList= revDao.showReviewList(content_id+"");
	//리뷰 contetn_id 인트형태 아님 +""붙이면 된대요~!
	
	
	//토너먼트=> 작품이 포함된건 Dao 만들어야하나?
	TournamentDAO tourDao = new TournamentDAO();
	TournamentVO tourVo = new TournamentVO();
	
	ArrayList<TournamentVO> TourList=null;
	
	TourList=tourDao.showThisContentTournament(content_id);

	
	
	
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
                                <div class="login-register-btn mr-50">
                                    <%if(vo==null){ %>
                                        <a href="login.jsp" id="loginBtn"style="color:white;">Login / </a> 
                                        <a href="Register.jsp" id="loginBtn"style="color:white;">Register</a>
                                        <%}else{%>
                                        <a href="Logout.do" id="logoutBtn"style="color:white;">Logout</a>
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
	<!-- 검색창 -->
	<section class ="section-padding-100">

		<div class="search-container">
			<form action="movieDetail.jsp">
				<div class="search-box">
					<!-- 검색 name값을 content_id로 잡아야하나?.. -->
					<input class="search-input" type="text" placeholder="<%=conVo.getTitle() %>"
						name="search">
					<button class="searchbtn" name = "click" onClick="location.href='movieDetail.jsp'">
					</button>
				</div>
			</form>
		</div>


	</section>
	
    <!-- ##### 영화 사진올곳 ##### -->
    <!--  css수정 -->
    <div class="movie-detail">
            <div class="movie-img-container">
                <div class="movie-img-area" style="width: 100%">
                    <img class ="movie-img" src="<%=conVo.getC_thumbnail() %>" alt="Loading"  style="width: 100%">
                </div>
                <div class ="movie-img-gradient"></div>
                
                <div class="movie-img-smallarea">
                    <img class="movie-smallimg" src="<%=conVo.getC_thumbnail() %>" alt="Loading"> 
                </div>
            </div>
            <div class="movie-detail-text">
                <h2 style='font-family: "Pretendard-Light"'id =""><%=conVo.getTitle() %></h2>
                <p style='font-family: "Pretendard-Light";' id =""><%=conVo.getGenre() %> </br>
                        <%=conVo.getTag() %></br>
                        <%=conVo.getTournament_point() %></p>
            </div>
    </div>
    
    
    <!-- 찜하기 좋아요 봤어요 버튼 Start -->
  
     <!-- ========== Loaders ========== -->
     <section class="elements-section-padding-50-0">
        
        <div class="container">
            <div class="oneMusic-buttons-area mb-30">
                        <a href="#" class="btn oneMusic-btn m-2">봤어요 ! </a>
                        <a href="#" class="btn oneMusic-btn m-2">찜하기 ♥ </a>
                        
                        <a href="#" id="btn-like"class="btn oneMusic-btn m-2"'>좋아요 !</a>
                </div> 
           
    	</div>
    </section>
    <!-- 찜하기 좋아요 봤어요 버튼 end -->
    
       
    
    <!-- 플랫폼 Start -->
    <section class="elements-section-padding-0-165">
     	<div class="container">
     			<div class="col-12">
                    <div class="elements-section-padding-0-50">
                        <h4 style='color:#ffffff; font-family: "Pretendard-Light";'>여기에서 볼 수 있어요.</h4>
                    </div>
                 </div>
              <div class="col-12" >
                <div class='inner'>
                    <ul class='ul_pic'>
                        <li class='pic'>
                            <a href='https://www.netflix.com/kr/' target=_blank>
                                <img class='profile' title='Newflix' src='https://images.justwatch.com/icon/207360008/s100'>
                            </a>
                            <p>NEXFLIX</p>
                        </li>
                        <li class='pic'>
                            <a href='https://watcha.com/home' target=_blank>
                                <img class='profile' title='watcha' src='https://www.justwatch.com/images/icon/2538290/s100'>
                            </a>
                            <p>WATCHA</p>
                        </li>
                        <li class='pic'>
                            <a href='https://www.wavve.com/' target=_blank>
                                <img class='profile' title='Wavve' src='https://www.justwatch.com/images/icon/155655742/s100'>
                            </a>
                            <p>WAVVE</p>
                        </li>
                        <li class='pic'>
                            <a href='https://play.google.com/store/games?hl=en&gl=KR' target=_blank>
                                <img class='profile' title='Google Play Movie'
                                    src='https://www.justwatch.com/images/icon/169478387/s100'>
                            </a>
                            <p>GOOGLE PLAY</p>
                        </li>
                    </ul>
              </div>
          </div>
         </div>
     </section>    	 	
    <!-- 플랫폼 End -->
    
    <!-- 영상 -->
    <section class="elements-section-padding-0">
    		<div class="container">
    			<div class="col-12">
                    <div class="elements-title mb-30">
                        <h2 style='color:#ffffff; font-family: "Pretendard-Light";'>예고편 및 리뷰영상</h2>
                    </div>
                </div>

               <div class="col-12">
                    <div class="row">	

                        <!-- Single Service Area -->
                        <div class="col-12 col-md-6">
                            <div class="single-service-area d-flex flex-wrap mb-100">
                                
                                <div class="text">
                                <iframe width="560" height="315" src="https://www.youtube.com/embed/ru-x4cj96YQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                </div>
                            </div>
                        </div>

                        <!-- Single Service Area -->
                        <div class="col-12 col-md-6">
                            <div class="single-service-area d-flex flex-wrap mb-100">
                                <div class="text">
                                <!-- <iframe width="560" height="315" src="<%=conVo.getYoutube() %>" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
									 -->
									 
									 <iframe width="560" height="315" src="<%=conVo.getYoutube() %>" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
             </div>
       </section>
    <!-- 영상 -->
    
    
    
    
    
    <!-- 월드컵 목록 Start -->
     <section class="elements-section-padding-0-50">
        <div class="container">
            <div class="col-12">
                    <div class="elements-title mb-30">
                        <h2 style="margin-left: -15px;">월드컵 게임</h2>
                    </div>
                </div>            

            <div class="row">
                <div class="col-12">
                    <div class="albums-slideshow owl-carousel">
                       <!-- List 1 -->
                       <%for (int i=0; i<TourList.size();i++){ %>
                        <div class="single-album" onClick="location.href='gamePlay.jsp?data=<%=TourList.get(i).getTournamentId()%>'">
                        	<div class="single-album-container">
                        		<div class="img-center">
                           	 		<img src="<%=TourList.get(i).getThumbnail() %>" alt="">
                            	</div>
                            </div>
                            <div class="album-info">
                                <a href="#">
                                    <h5><%=TourList.get(i).getTournamentName() %></h5>
                                </a>
                            </div>
                        </div>
						<%} %>
                        
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- 월드컵 목록 End -->
    
    
    
    
    <!-- 버튼  -->
    
    <!-- ##### Breadcumb Area End ##### -->

	<!-- 리뷰 Start -->
    <!-- ##### Elements Area Start ##### -->
    <section class="elements-section-padding-0-50">
        <div class="container">
            <div class="row">

                <!-- ========== Progress Bars & Accordions ========== -->
                <div class="col-12">
                    <div class="elements-title mb-30">
                        <h2>모든 리뷰</h2>
                    </div>
                </div>

                <!-- ##### Accordians ##### -->
                <div class="reviewsection">
                    <div class="accordions mb-100" id="accordion" role="tablist" aria-multiselectable="true">
                        <!-- single accordian area -->
                      
                        <div class="panel single-accordion">
                        
                            <h6><a role="button" class="" aria-expanded="true" aria-controls="collapseOne" data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><%=ReviewList.get(0).getMemberId() %>
                                    <span class="accor-open"><i class="fa fa-plus" aria-hidden="true"></i></span>
                                    <span class="accor-close"><i class="fa fa-minus" aria-hidden="true"></i></span>
                                    </a></h6>
                            <div id="collapseOne" class="accordion-content collapse show">
                                <p><%=ReviewList.get(0).getReview() %>
                                </p>
                            </div>
                        </div>
                       
                        <%for(int i = 1; i<ReviewList.size();i++) {%>
                        <div class="panel single-accordion">
                            <h6>
                                <a role="button" class="collapsed" aria-expanded="true" aria-controls="collapseTwo" data-parent="#accordion" data-toggle="collapse" href="#collapseTwo"><%=ReviewList.get(i).getMemberId() %>
                                        <span class="accor-open"><i class="fa fa-plus" aria-hidden="true"></i></span>
                                        <span class="accor-close"><i class="fa fa-minus" aria-hidden="true"></i></span>
                                        </a>
                            </h6>
                            <div id="collapseTwo" class="accordion-content collapse">
                                <p><%=ReviewList.get(i).getReview() %></p>
                            </div>
                        </div>
                       <%} %>
                        
                    </div>
                </div>
             </div>
         </div>
               
	</section>
     <!-- 리뷰 End -->          
                
            

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
                            <li><a href="gameAll.jsp">Games</a></li>
                            <li><a href="albums-store.jsp">Search</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- ##### Footer Area Start ##### -->

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
    $(function(){
    	
    	
		$("#btn-like").on("click",function(){
			
			if($(this).text()=='좋아요 !'){
			$(this).text("좋아요 90");
			} else $(this).text("좋아요 !");
		});
		
	});</script>
</body>

</html>