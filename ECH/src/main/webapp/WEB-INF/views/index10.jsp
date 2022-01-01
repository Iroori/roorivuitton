<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html lang="en-US">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Virtua - New Amazing HTML5 Template</title>
    <link rel="stylesheet" href="resources/user/css/components.css">
    <link rel="stylesheet" href="resources/user/css/icons.css">
    <link rel="stylesheet" href="resources/user/css/responsee.css">
    
    <link rel="stylesheet" href="resources/user/owl-carousel/owl.carousel.css">
    <link rel="stylesheet" href="resources/user/owl-carousel/owl.theme.css">
    
    
    <!-- CUSTOM STYLE -->      
    <link rel="stylesheet" href="resources/user/css/template-style.css">
    <link rel="stylesheet" href="resources/user/css/button.css">
    
    <link rel="stylesheet" type="text/css" href="resources/user/css/normalize.css" />

	<link rel="stylesheet" type="text/css" href="resources/user/css/demo.css" />
    
   
    
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,700,900&amp;subset=latin-ext" rel="stylesheet"> 
    <script type="text/javascript" src="resources/user/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="resources/user/js/jquery-ui.min.js"></script>
    <script src="resources/user/js/modernizr.custom.js"></script>   
  </head>

  <body class="size-1280">
    <!-- PREMIUM FEATURES BUTTON -->
  	
    <!-- HEADER -->
    <header role="banner" class="position-absolute">    
      <!-- Top Navigation -->
      <nav class="background-transparent background-primary-dott full-width sticky">          
        <!-- mobile version logo -->              
        <div class="logo hide-l hide-xl hide-xxl">
           <a href="index.html" class="logo">
            <!-- Logo Dark Version -->
            <img class="logo-dark" src="resources/user/img/logo-dark.svg" alt="">
          </a>
        </div>
        
        <div class="top-nav"> 

          <!-- left menu items -->
          <div class="top-nav left-menu">
             <ul class="right top-ul chevron">
                <li><a href="index.html">Home</a></li>
                <li><a href="about-us.html">About Us</a></li>
                <li><a href="services.html">Our Services</a></li>
             </ul>
          </div>
          
          <!-- logo -->
          <ul class="logo-menu">
            <a href="index.html" class="logo">
              <!-- Logo White Version -->
              <img class="logo-white" src="resources/user/img/logo.svg" alt="">
              <!-- Logo Dark Version -->
              <img class="logo-dark" src="resources/user/img/logo-dark.svg" alt="">
            </a>
          </ul>
          
          <!-- right menu items -->
          <div class="top-nav right-menu">
             <ul class="top-ul chevron">
                <li>
                  <a href="report">신고</a>
                  
                </li>
                <li><a href="gallery.html">마스크</a></li>
                <li><a href="login">로그인</a></li>
                <li><a href="index">index</a></li>
             </ul> 
          </div>
        </div>
      </nav>
    </header>
    
    <!-- MAIN -->
    <main role="main">    
      <!-- Header -->
      <header class="section-top-padding background-image text-center" style="background-image:url(resources/user/img/img-05.jpg)">
        <h1 class="text-extra-thin text-white text-s-size-30 text-m-size-40 text-size-50 text-line-height-1 margin-bottom-40 margin-top-130">
          Save your Time and Keep Calm
        </h1>
        <p class="text-white">Duis autem vel eum iriure dolor in hendrerit in vulputate velit<br> esse molestie consequat, vel illum dolore eu feugiat nulla facilisis</p>
        <i class="slow icon-sli-arrow-down text-white margin-top-20 text-size-16"></i>
        <!-- Image -->
        <img class="margin-top-20 center" src="resources/user/img/app.png" alt="">
        
        <!-- dark full width arrow object -->
        <img class="arrow-object" src="resources/user/img/arrow-object-dark.svg" alt="">
      </header>
      
      <!-- Section 1 -->
      <section class="section-small-padding background-dark text-center">      
        <div class="line">
          <div class="m-10 l-6 xl-4 center">
            <div class="margin">
              <a class="s-12 m-6 margin-s-bottom" href="/">
                <img class="full-img right" src="resources/user/img/google-play.svg" alt="">
              </a>
              <a class="s-12 m-6" href="/">
                <img class="full-img" src="resources/user/img/app-store.svg" alt="">
              </a>
            </div>
          </div>                                                                                               
        </div>       
      </section>
      
      <!-- Section 2 -->
      <section class="section-top-padding background-white">
        <div class="line text-center">
        	<div class="covid ">
				<button class="current">확진자 현황</button>
				<button class="move">확진자 이동 경로</button>
			</div>
        </div>        
        
        <div id="situation" class="line text-center" style="display:none">
         <i class="icon-sli-heart text-primary text-size-40"></i>
         
          <h2 class="text-dark text-size-50 text-m-size-40">확진자 <b>현황</b></h2>          
        	
         <!-- 
          <hr class="break background-primary break-small break-center margin-bottom-50">
           -->
        
          <div class="line" >
          <div class="margin2x">
           <div class="s-12 m-12 l-12 margin-m-bottom-60">
              
              <div class="margin-left-10">
              <table class="tb_default">
				<caption>이표는 시도,시군구,장소유형,상호명,주소,노출일시,소독여부를 안내하는 표입니다</caption>				
					<thead>
						<tr>
							<th class="route_th1">확진자번호</th>
							<th class="route_th2">거주지</th>
							<th class="route_th3">감염경로</th>
							<th class="route_th4">확진일</th>
							<th class="route_th5">격리시설</th>							
						</tr>
					</thead>
					<tbody id="co_table">
						<tr>
							<td>광주8112</td>
							<td>광주 서구</td>
							<td>광주 7962(조사중) 접촉</td>
							<td>12월 31일</td>
							<td>병상 배정중</td>							
						</tr>			
					</tbody>
				</table>
                                          
              </div>                    
            </div>          
          </div>
        </div>
        </div>
        
        
        
        <div id="Route" class="line text-center" style="display:none">
         <i class="icon-sli-heart text-primary text-size-40"></i>
         
          <h2 class="text-dark text-size-50 text-m-size-40">확진자 <b>이동경로</b></h2>
          <button class="large button10"><a href="index11">확진자 동선 지도보기</a></button>
        	
         <!-- 
          <hr class="break background-primary break-small break-center margin-bottom-50">
           -->
        
          <div class="line" >
          <div class="margin2x">
           <div class="s-12 m-12 l-12 margin-m-bottom-60">
              
              <div class="margin-left-10">
              <table class="tb_default">
				<caption>이표는 시도,시군구,장소유형,상호명,주소,노출일시,소독여부를 안내하는 표입니다</caption>					
					<thead>
						<tr>
							<th class="route_th1">노출일시</th>
							<th class="route_th2">시</th>
							<th class="route_th3">구</th>
							<th class="route_th4">장소유형</th>
							<th class="route_th5">상호명</th>
							<th class="route_th6">주소</th>
							<th class="route_th7">소독여부</th>
						</tr>
					</thead>
					<tbody id="co_table">
						<tr>
							<td>12.27.(월)~12.29.(수)</td>
							<td>광주</td>
							<td>서구</td>
							<td>판매점</td>
							<td>금탑금은방</td>
							<td>서구 상무대로 1062</td>
							<td>소독완료</td>
						</tr>
			
					</tbody>
				</table>
             
                             
              </div>                    
            </div>          
          </div>
        </div>
        </div>
      </section>
      <br><br>
      <!-- Section 3 -->
      <section class="section background-white">      
        <div class="line text-center">
          <p class="text-primary text-size-20">Lorem ipsum dolor sit amet</p>
          <h2 class="text-dark text-size-50 text-m-size-40">거리두기  <b>최신화 정책</b></h2>
          <i class="icon-chevron_down text-primary margin-bottom-50 text-size-20"></i> 
        </div> 
        
        <div class="l-12 xl-7 center"> 
          <div class="margin">
            <!-- Left Column -->
            <div class="s-12 m-12 l-4 text-right"> 
              <div class="margin-right-50">
                <i class="icon-sli-paper-plane text-primary text-size-40 margin-bottom-20"></i>
                <h3 class="text-strong text-size-20 text-line-height-1 margin-bottom-20">Responsive Carousel</h3>
                <p>Hendrerit in vulputate duis autem vel eum iriure dolor in velit esse molestie consequat, illum nulla facilisis</p>
              </div>
              
              <div class="line"> 
                <hr class="break background-primary break-small right margin-top-bottom-40">
              </div>
              
              <div class="margin-right-50">
                <i class="icon-sli-bulb text-primary text-size-40 margin-bottom-20"></i>
                <h3 class="text-strong text-size-20 text-line-height-1 margin-bottom-20">Tabs with URL Hash</h3>
                <p>Hendrerit in vulputate duis autem vel eum iriure dolor in velit esse molestie consequat, dolore nulla facilisis</p>
              </div> 
            </div>

            <!-- Middle Column (carousel)-->
            <div class="s-12 m-12 l-4">                                                                                        
              <div class="carousel-default owl-carousel carousel-hide-arrows margin-m-top-bottom-50">                                                                                              
                <div class="item">                                                                                                                                                                                                     
                  <img src="resources/user/img/responsive-01.png"/>                                                                                                                                                              
                </div>              
                <div class="item">                                                                                                                                                                                                                 
                  <img src="resources/user/img/responsive-02.png"/>                                                                                                                                                                                                                                                                                                                                                                                     
                </div>              
                <div class="item">                                                                                                                                                                                                     
                  <img src="resources/user/img/responsive-03.png"/>                                                                                                                                                            
                </div>              
                <div class="item">
                  <img src="resources/user/img/responsive-04.png"/>                                                                                                                                                            
                </div>                                                                                                                                      
              </div>
            </div> 
            
            <!-- Right Column -->
            <div class="s-12 m-12 l-4"> 
               <div class="margin-left-50">
                <i class="icon-sli-heart text-primary text-size-40 margin-bottom-20"></i>
                <h3 class="text-strong text-size-20 text-line-height-1 margin-bottom-20">Unlimited Color Variants</h3>
                <p>Hendrerit in vulputate duis autem vel eum iriure dolor in molestie consequat, vel illum dolore nulla facilisis</p>
              </div>
              
              <div class="line"> 
                <hr class="break background-primary break-small margin-top-bottom-40">
              </div>
              
              <div class="margin-left-50">
                <i class="icon-sli-layers text-primary text-size-40 margin-bottom-20"></i>
                <h3 class="text-strong text-size-20 text-line-height-1 margin-bottom-20">Responsive Navigation</h3>
                <p>Hendrerit in vulputate duis autem vel eum iriure dolor in velit esse molestie vel illum dolore nulla facilisis</p>
              </div> 
            </div> 
          </div>                                                                                              
        </div>       
      </section>
      
    
   
      
      
      <div class="container">
		
			<div class="content">
				<div class="mockup-browser">
					<header class="mockup-header mockup-section--dark paint-area">
						<div class="mockup-content mockup-grid mockup-grid--spread">
							 <div class="line text-center">
					          <p class="text-primary text-size-20">Lorem ipsum dolor sit amet</p>
					          <h2 class="mockup-heading__subline text-dark text-size-50 text-m-size-40">거리두기  <b>최신화 정책</b></h2>
					          <i class="icon-chevron_down text-primary margin-bottom-50 text-size-20"></i> 
					        </div> 
							<nav class="mockup-nav paint-area paint-area--text">
								<span>About</span>
								<span>Solutions</span>
								<span>Pricing</span>
								<span>Contact</span>
							</nav>
						</div>
					</header>				
				
				
				
					
					
					<section class="mockup-section paint-area">
						<div class="mockup-content mockup-grid">
							<div class="mockup-grid__item mockup-width--half">
								<h1 class="mockup-heading mockup-heading--large paint-area paint-area--text">We help tell your brand's story <span class="mockup-heading__subline">The most efficient toolset for businesses</span></h3>
								<button class="mockup-button paint-area"><span>Discover more</span> <i class="fa fa-chevron-right"></i></button>
							</div>
							<figure class="mockup-grid__item mockup-width--half">
								<div class="mockup-img mockup-img--large">
									<i class="fa fa-picture-o"></i>
								</div>
							</figure>
						</div><!-- /mockup-grid -->
					</section>
					
					
					<section class="mockup-section mockup-section--dark paint-area">
						<div class="mockup-content mockup-grid">
							<h2 class="mockup-heading mockup-heading--single paint-area paint-area--text">Our philosophy</h2>
							<figure class="mockup-grid__item mockup-width--half">
								<div class="mockup-img mockup-img--large"><i class="fa fa-picture-o"></i></div>
							</figure>
							<div class="mockup-grid__item mockup-width--half">
								<p class="paint-area paint-area--text">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
								tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
								quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
								consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
								cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
								proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
								<button class="mockup-button paint-area"><span>Read more</span> <i class="fa fa-chevron-right"></i></button>
							</div>
						</div><!-- /mockup-grid -->
					</section>
					
					
					<section class="mockup-section paint-area">
						<div class="mockup-content mockup-grid">
							<h2 class="mockup-heading mockup-heading--single paint-area paint-area--text">Meet the amazing team</h2>
							<figure class="mockup-grid__item mockup-width--forth">
								<div class="mockup-img"><i class="fa fa-user"></i></div>
								<figcaption class="mockup-caption"><h3 class="paint-area paint-area--text">Jerry McIntosh</h3></figcaption>
							</figure>
							<figure class="mockup-grid__item mockup-width--forth">
								<div class="mockup-img"><i class="fa fa-user"></i></div>
								<figcaption class="mockup-caption"><h3 class="paint-area paint-area--text">Ben McLovin</h3></figcaption>
							</figure>
							<figure class="mockup-grid__item mockup-width--forth">
								<div class="mockup-img"><i class="fa fa-user"></i></div>
								<figcaption class="mockup-caption"><h3 class="paint-area paint-area--text">Sarah Connor</h3></figcaption>
							</figure>
							<figure class="mockup-grid__item mockup-width--forth">
								<div class="mockup-img"><i class="fa fa-user"></i></div>
								<figcaption class="mockup-caption"><h3 class="paint-area paint-area--text">Fred Guhlman</h3></figcaption>
							</figure>
						</div><!-- /mockup-grid -->
					</section>
					
					
					
				</div><!-- /mockup-browser -->
			</div><!-- /content -->
			
			
			<div class="customizer">
				<ul class="color-tool">
					<li class="color-1"><div class="drag-element" data-color="#333"><div class="drop color-1"></div><i class="drop-helper-1 color-1"></i><i class="drop-helper-2 color-1"></i><i class="drop-helper-3 color-1"></i><i class="drop-helper-4 color-1"></i></div></li>
					<li class="color-2"><div class="drag-element" data-color="#f0f0f0"><div class="drop color-2"></div><i class="drop-helper-1 color-2"></i><i class="drop-helper-2 color-2"></i><i class="drop-helper-3 color-2"></i><i class="drop-helper-4 color-2"></i></div></li>
					<li class="color-3"><div class="drag-element" data-color="#c0c3d5"><div class="drop color-3"></div><i class="drop-helper-1 color-3"></i><i class="drop-helper-2 color-3"></i><i class="drop-helper-3 color-3"></i><i class="drop-helper-4 color-3"></i></div></li>
					<li class="color-4"><div class="drag-element" data-color="#5FA1E0"><div class="drop color-4"></div><i class="drop-helper-1 color-4"></i><i class="drop-helper-2 color-4"></i><i class="drop-helper-3 color-4"></i><i class="drop-helper-4 color-4"></i></div></li>
					<li class="color-5"><div class="drag-element" data-color="#C1D5C0"><div class="drop color-5"></div><i class="drop-helper-1 color-5"></i><i class="drop-helper-2 color-5"></i><i class="drop-helper-3 color-5"></i><i class="drop-helper-4 color-5"></i></div></li>
					<li class="color-6"><div class="drag-element" data-color="#47AE73"><div class="drop color-6"></div><i class="drop-helper-1 color-6"></i><i class="drop-helper-2 color-6"></i><i class="drop-helper-3 color-6"></i><i class="drop-helper-4 color-6"></i></div></li>
					<li class="color-7"><div class="drag-element" data-color="#EAE7C4"><div class="drop color-7"></div><i class="drop-helper-1 color-7"></i><i class="drop-helper-2 color-7"></i><i class="drop-helper-3 color-7"></i><i class="drop-helper-4 color-7"></i></div></li>
					<li class="color-8"><div class="drag-element" data-color="#FB6964"><div class="drop color-8"></div><i class="drop-helper-1 color-8"></i><i class="drop-helper-2 color-8"></i><i class="drop-helper-3 color-8"></i><i class="drop-helper-4 color-8"></i></div></li>
					<li><button class="reset-button" title="Reser colors">Reset colors</button></li>
				</ul>
			</div>
			<!-- Related demos -->
			
			
		</div><!-- /container -->
      
      
      
      
      
      
      
      <!-- Section 5 -->
      <section class="section-small-padding background-grey">   
        <div class="line-full-width">
          <div class="margin2x">
             <div class="m-6 l-1">
                <img class="margin-bottom" src="resources/user/img/logo-1.png"/>
             </div>
             <div class="m-6 l-1">
                <img class="margin-bottom" src="resources/user/img/logo-2.png"/>
             </div>
             <div class="m-6 l-1">
                <img class="margin-bottom" src="resources/user/img/logo-3.png"/>
             </div>
             <div class="m-6 l-1">
                <img class="margin-bottom" src="resources/user/img/logo-1.png"/>
             </div>
             <div class="m-6 l-1">
                <img class="margin-bottom" src="resources/user/img/logo-4.png"/>
             </div>
             <div class="m-6 l-1">
                <img class="margin-bottom" src="resources/user/img/logo-5.png"/>
             </div>
             <div class="m-6 l-1">
                <img class="margin-bottom" src="resources/user/img/logo-3.png"/>
             </div>
             <div class="m-6 l-1">
                <img class="margin-bottom" src="resources/user/img/logo-1.png"/>
             </div>
             <div class="m-6 l-1">
                <img class="margin-bottom" src="resources/user/img/logo-5.png"/>
             </div>
             <div class="m-6 l-1">
                <img class="margin-bottom" src="resources/user/img/logo-4.png"/>
             </div>
             <div class="m-6 l-1">
                <img class="margin-bottom" src="resources/user/img/logo-1.png"/>
             </div>
             <div class="m-6 l-1">
                <img class="margin-bottom" src="resources/user/img/logo-2.png"/>
             </div>
          </div>
        </div>  
      </section> 
      
      <!-- Section 7 -->
      <section class="section-small-padding background-dark text-center">      
        <div class="line">
          <h2 class="text-white text-size-50 text-m-size-40 margin-bottom-20">Get <b>Free Version</b></h2>
          <div class="m-10 l-6 xl-4 center">
            <div class="margin">
              <a class="s-12 m-6 margin-s-bottom" href="/">
                <img class="full-img right" src="resources/user/img/google-play.svg" alt="">
              </a>
              <a class="s-12 m-6" href="/">
                <img class="full-img" src="resources/user/img/app-store.svg" alt="">
              </a>
            </div>
          </div>                                                                                               
        </div>       
      </section>     
      
    </main>
    
    <!-- FOOTER -->
    <footer>
      <!-- Social -->
      <div class="background-primary padding text-center">
        <a href="/"><i class="icon-facebook_circle text-size-25 text-dark"></i></a> 
        <a href="/"><i class="icon-twitter_circle text-size-25 text-dark"></i></a>
        <a href="/"><i class="icon-google_plus_circle text-size-25 text-dark"></i></a>
        <a href="/"><i class="icon-instagram_circle text-size-25 text-dark"></i></a> 
        <a href="/"><i class="icon-linked_in_circle text-size-25 text-dark"></i></a>                                                                       
      </div>
      <!-- Main Footer -->
      <section class="section background-dark">
        <div class="line"> 
          <div class="margin2x">
            <div class="s-12 m-6 l-3 xl-5">
               <h4 class="text-white text-strong">Our Mission</h4>
               <p>
                 <b class="text-size-20">Veri fastidii consectetuer</b> ius in, eum alii dicunt omnium eu. Wisi nostrud equidem ut usu. <b class="text-size-20">Deleniti pertinacia eu est</b>, te his soluta quaestio pericula.
               </p>
            </div>
            <div class="s-12 m-6 l-3 xl-2">
               <h4 class="text-white text-strong margin-m-top-30">Useful Links</h4>
               <a class="text-primary-hover" href="page.html">FAQ</a><br>      
               <a class="text-primary-hover" href="contact.html">Contact Us</a><br>
               <a class="text-primary-hover" href="blog.html">Blog</a>
            </div>
            <div class="s-12 m-6 l-3 xl-2">
               <h4 class="text-white text-strong margin-m-top-30">Term of Use</h4>
               <a class="text-primary-hover" href="page.html">Terms and Conditions</a><br>
               <a class="text-primary-hover" href="page.html">Refund Policy</a><br>
               <a class="text-primary-hover" href="page.html">Disclaimer</a>
            </div>
            <div class="s-12 m-6 l-3 xl-3">
               <h4 class="text-white text-strong margin-m-top-30">Contact Us</h4>
                <p><i class="icon-sli-screen-smartphone text-primary"></i> 0800 4521 800 50</p>
                <a class="text-primary-hover" href="#"><i class="icon-sli-mouse text-primary"></i> contactsampledomain.com</a><br>
                <a class="text-primary-hover" href="#"><i class="icon-sli-mouse text-primary"></i> officesampledomain.com</a>
            </div>
          </div>  
        </div>    
      </section>
      <div class="background-dark">
         <div class="line">
            <hr class="break margin-top-bottom-0" style="border-color: #777;">
         </div>
      </div>
      <!-- Bottom Footer -->
      <section class="padding-2x background-dark full-width">
        <div class="line">
          <div class="s-12 l-6">
            <p class="text-size-12">Copyright 2019, Vision Design - graphic zoo</p>
            <p class="text-size-12">All images have been purchased from Bigstock. Do not use the images in your website.</p>
          </div>
          <div class="s-12 l-6">
            <a class="right text-size-12 text-primary-hover" href="http://www.myresponsee.com" title="Responsee - lightweight responsive framework">Design and coding<br> by Responsee Team</a>
          </div>
        </div>  
      </section>
    </footer>
    <script type="text/javascript" src="resources/user/js/responsee.js"></script>
    <script type="text/javascript" src="resources/user/owl-carousel/owl.carousel.js"></script>
    <script type="text/javascript" src="resources/user/js/template-scripts.js"></script> 
    
    <script src="resources/user/js/classie.js"></script>
	<script src="resources/user/js/interact-1.2.4.min.js"></script>
	<script src="resources/user/js/main.js"></script>
    
    
    
    
    
    <script>
    $(".move").click(function(){
    	
    	if($("#Route").css("display")=="none" ){
    		$("#situation").css("display","none");
			$("#Route").css("display","block");
			
		}else{					
			$("#Route").css("display","none");
			
		}	
    })
    
    $(".current").click(function(){
    	
    	if($("#situation").css("display")=="none"){
    		$("#Route").css("display","none");
			$("#situation").css("display","block");
			
		}else{					
			$("#situation").css("display","none");
			
		}	
    })       
    
    </script>
    
    
    
    
    
    
    
    
    
    
  </body>
</html>