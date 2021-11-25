<%@page import="model.ContentDAO"%>
<%@page import="java.util.Arrays"%>
<%@page import="model.MyConentDAO"%>
<%@page import="model.ContentVO"%>
<%@page import="java.util.ArrayList"%>
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
<title>My Like Contents List</title>

<!-- Favicon -->
<link rel="icon" href="../img/core-img/favicon.ico">

<!-- Stylesheet -->
<link rel="stylesheet" href="../style.css">
<style>
section{
	background: white;
}
.row {
	display: flex;
	justify-content: center;
}

.single-album {
	width: 20% !important;
	height: 40% !important;
	margin-right: 2% !important;
}
</style>

</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html;charset=UTF-8");
	MemberVO vo = (MemberVO) session.getAttribute("member");
	MyConentDAO dao = new MyConentDAO();
	ArrayList<ContentVO> list =null;
	list=dao.showMyContents("like_content_id", vo.getId());
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
	                        <a href="main.jsp.html" class="nav-brand"><img src="../img/bg-img/logo.png" alt=""></a>

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
	                                    <li><a href="../tournament.jsp">Game</a></li>
	                                    <li><a href="../search.jsp">Search</a></li>
	                                    <%if(vo!=null){ %>
	                                    <li><a href="../myPages/myPage.jsp">My</a></li>
	                                    <%} %>
	                                </ul>

	                                <!-- Login/Register & Cart Button -->
	                                <div class="login-register-cart-button d-flex align-items-center">
	                                    <!-- Login/Register -->
	                                    
	                                    <div class="login-register-btn mr-50">
	                                    <%if(vo==null){ %>
	                                        <a href="../login.jsp" id="loginBtn">Login / Register</a>
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
			<h2>LIKE CONTENTS</h2>
		</div>
	</section>
	<!-- ##### Breadcumb Area End ##### -->
	
	
	
	<section class="latest-albums-area section-padding-100-end">
		<div class="container">
			
			<div class="row">
			<%
			if (list == null) {
				out.print("<p>좋아요한 작품이 없습니다.</p>");
			} else {
			
			for(int j=list.size()-1; j>=0; j--){
				ContentVO i = list.get(j);
			%>
				<div class="single-album">
					<div class="single-album-container">
						<div class="img-center">
							<a href="../contentInfo.jsp?data=<%=i.getContent_id()%>"><img src="<%=i.getC_thumbnail() %>" alt=""></a>
						</div>
					</div>
					<div class="album-info">
						<a href="../contentInfo.jsp?data=<%=i.getContent_id()%>">
							<h5><%=i.getTitle() %></h5>
						</a>
						<!-- <p>Second Song</p> -->
					</div>
				</div>


				<%} %>


			</div>
		</div>
		<%
		}
		%>
	</section>


	<!-- ##### All Javascript Script ##### -->
	<!-- jQuery-2.2.4 js -->
	<script src="../js/jquery/jquery-3.6.0.js"></script>
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