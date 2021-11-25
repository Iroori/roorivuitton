<%@page import="java.util.ArrayList"%>
<%@page import="model.ContentDAO"%>
<%@page import="model.ContentVO"%>
<%@page import="model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
	.make-game{
	display: flex;
    justify-content: center;
    }
	.make-game #make-game-button{
	
	display:inline-block;
	border: 2px solid black;
	background-color:transparent;
	font-size:17px;
	width:250px;
	height:60px;
	
}
	.make-game #make-game-button:hover{
		background-color:#6e6e6e;
	}
	
	</style>
	<script src='js/jquery/jquery-3.6.0.js'></script>
	<script type="text/javascript">
		$(document).ready(function(){
				searchajax();
		});
	</script>
	
</head>
<body>
<%
	MemberVO vo = (MemberVO)session.getAttribute("member");
	String member_id = null;
	if (vo == null) {
		member_id = "guest";
	} else {
		member_id = "guest";
	}
	//hot content ==> 검색하면 바꾸는걸로 바꿔야됨 이미지 나오는지 확인용!!
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html;charset=UTF-8");
	ContentVO cvo = new ContentVO();
	ContentDAO dao = new ContentDAO();
	ArrayList<ContentVO> hlist = null;
	hlist = dao.showHotContents();
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
                                    <div class="cart-btn">
                                        <p><span class="icon-shopping-cart"></span> <span class="quantity">1</span></p>
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
    <section class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/breadcumb3.jpg);">
        <div class="bradcumbContent">
            <p>by you</p>
            <h2>Make Games</h2>
        </div>
    </section>
    <!-- ##### Breadcumb Area End ##### -->
	
	<!-- 몇강 start-->
	<section class="section-padding-100">
		<div class="make-section">
			<div class="make-font">
			<h2>몇강의 게임을 만드실 건가요?</h2>
			</div>
			<div class="make-option">
				<select>
					<option><p>선택</p></option>
					<option><p>4강</p></option>
					<option><p>8강</p></option>
					<option><p>16강</p></option>
					<option><p>32강</p></option>
				</select>
			</div>
		</div>
	</section>
	<!-- 몇강 end -->

	
	
	
	<!-- 토너먼트 제목 start -->
	<section class="section-padding-100">
		<div class="make-tournament-section">
			<div class="make-font">
				<h2>당신만의 게임 이름을 작성해주세요!</h2>
			</div>
			<div class="make-game-name">

				<input type="text" placeholder="제목">
			
			</div>
		
		</div>
	
	
	</section>
	<!-- 토너먼트 제목 end -->
	
	<!-- 검색창 -->
	<!-- 검색창 줄여어어어 -->
	<section class ="section-padding-100">

		<div class="search-container2">
				<div class="make-font">
					<h2>작품 검색</h2>
				</div>
				<div class="search-box-make">
					<!-- 검색 name값을 content_id로 잡아야하나?.. -->
					<input id="#searchWord" class="search" type="text" placeholder="작품제목 및 태그 입력"
						name="search">
				</div>
				<div class='row'>



				</div>
		</div>
		

	</section>
	<!-- 우리작품이 뜨는 칸 (예시 latest-album에서가져와야되나? -->
	<section class="section-padding-100">
		<!-- 카테고리 -->
		<div class="make-font">
			<h2>선택 작품</h2>
		</div>
		<div class="content-list-container">
		
			<div class="content-list-section">
				<%
				for (int i = 0; i < 10; i++) {
				%>
				
				<div class="single-album2" >
					<div class="single-album-container2">
						<div class="img-center2">
							<img src="<%=hlist.get(i).getC_thumbnail() %>" alt="">
						</div>
					</div>
					
					<div class="album-info2">
					<a href="#">
						<p><%=hlist.get(i).getTitle() %></p>
					</a>
					</div>
					<input type="checkbox" id="user-choice">
				</div>
				
				<%
				}
				%>
			</div>
			
		</div>

	</section>
	
	<!-- 파일 업로드 버튼 -->
	<section class ="section-padding-100-70">
 		<div class="make-game">
 				<input id="make-game-button" type="button" value="MAKE GAME" onclick="게임을만들었다고alert창 출력어떰?=>그러고tournament.jsp로">
 		</div>

	
	</section>
	
	
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
    
    	let m_id = "<%=member_id%>";
		
		let searchResult =[];
		function searchajax(){
			$("#searchWord").keyup(function(){
				let words = $("#searchWord").val();
				if(words != ''){
					$.ajax({
						url : 'SearchConByTitleOrTag',
						data : {searchWords : words},
						dataType : 'json',
						success : function(result){
							if(result.length>0){
								
								for(let i = 0; i < result.length; i++){
			      					searchResult.push(JSON.parse(result[i]));
			      					}
								let str = ''
								for (let i=0; i<result.length; i++){
									
									
									
									
									
									
									str += '<div id="results" class='single-album'>\
									<div class="single-album-container">\
									<div class="img-center">\
										<a href='#'>
										<img src="" alt=''>
										</a>
									</div>
								</div>
								<div class='album-info'>
										<p>"hi"</p>
								</div>
							</div><p><img src='+searchResult[i].c_thumbnail+'></p><p>'+searchResult[i].title+'</p>';
								}
								$('#results').append(str);
									
							}else{$("#results").append("");}
						},
						error : function(e){
							console.log('error'+e.status);
						}
					})
				}else{$("#results").html("")}
			});
		}
   
    
    
    	const Searching = Search.prototype;
    	
    	function Search(){
    		this.keyword = document.querySelector('input[name = "search"]');
    		
    	}
    </script>


</body>
</html>