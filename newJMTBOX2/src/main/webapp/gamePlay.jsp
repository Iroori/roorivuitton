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
    <title>JMT BOX SELECT TODAY'S CONTENTS BY TOURNAMENTGAME</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="style.css">
    <style type="text/css">
    #btnGameStart{
    	z-index: 10;
    }
    
    </style>

</head>

<body>
<%
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
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
                                    <li><a href="contentInfo.jsp">Search</a></li>
                                    <%if(vo!=null){ %>
                                    <li><a href="myPages/myPage.jsp">My</a></li>
                                    <%} %>
                                </ul>

								<!-- Login/Register & Cart Button -->
	                                <div class="login-register-cart-button d-flex align-items-center">
	                                    <!-- Login/Register -->
	                                    
	                                    <div class="login-register-btn mr-50">
	                                    <%
	                                    if (vo == null) {
	                                    %>
	                                        <a href="login.jsp" id="loginBtn">Login / Register</a>
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
		style="background-image: url(img/bg-img/breadcumb3.jpg);">
		<div class="bradcumbContent">
			<p>Let's play!</p>
			<h2>GAMES</h2>
		</div>
	</section>
	<!-- ##### Breadcumb Area End ##### -->

   
   
   
    <!--[if lt IE 7]>
      <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="#">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->
    <h3 id="roundTitle"></h3>
   	<div class="content-default" id="content">
  
   	</div>
   		 <footer class="footer soff" id="footer">
	    </footer>
    <!-- ##### All Javascript Script ##### -->
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <script src="./js/lezhinGame.js" async defer></script>
    
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

    <%String tournament_id = request.getParameter("data");%>
	let t_id = "<%=tournament_id%>";
	
    (function() {
    	console.log(t_id);
  	  $.ajax({
  		  
  		  url : 'InitialGameInfo',
  		  data : {'data' : t_id},
  		  
  		  dataType : 'json',
  		  success : function(result){
  			 lezhin.start(result);
  		  }, 
  		  error : function(){
  			  alert('실패!')
  		  }
  	  })
    })()
    
		

     
      
      
      
      
    </script>


    
</body>

</html>