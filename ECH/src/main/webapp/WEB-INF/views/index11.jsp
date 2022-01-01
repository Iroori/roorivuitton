<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html lang="en-US">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Virtua - New Amazing HTML5 Template</title>
     <link rel="stylesheet" href="resources/user/css/covid.css">
    <link rel="stylesheet" href="resources/user/css/components.css">
    <link rel="stylesheet" href="resources/user/css/icons.css">
    <link rel="stylesheet" href="resources/user/css/responsee.css">
    
    <link rel="stylesheet" href="resources/user/owl-carousel/owl.carousel.css">
    <link rel="stylesheet" href="resources/user/owl-carousel/owl.theme.css">
    
    
    <!-- CUSTOM STYLE -->      
    <link rel="stylesheet" href="resources/user/css/template-style.css">
    
  
   
 
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,700,900&amp;subset=latin-ext" rel="stylesheet"> 
    <script type="text/javascript" src="resources/user/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="resources/user/js/jquery-ui.min.js"></script>   
    
    
    
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
                  <a>Products</a>
                  <ul>
                    <li><a>Product 1</a></li>
                    <li><a>Product 2</a></li>
                  </ul>
                </li>
                <li><a href="gallery.html">Gallery</a></li>
                <li><a href="contact.html">Contact</a></li>
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
      <section class="section-bottom-padding background-white">
        <div class="line text-center">
        	
        <div id="map_header">
			<div class="logo"><a href="#"><img src="https://www.gwangju.go.kr/home/www/images/corona/map_toptitle.png" alt=""></a></div>
			<div class="header_text">
				<span><strong>확진환자</strong> : <strong>7,822</strong>명</span>
				(치료중 689명,
				격리해제 7,094명,
				사망 39명) &nbsp; &nbsp;
				<span><br><strong>접촉자</strong> : <strong>122,188</strong>명</span>
				(격리 4,668명,
				해제 117,520명)
			</div>
			<div class="header_text02">
				※ 확진자가 마지막 접촉자와 접촉한 날로부터 14일이 경과되거나, 확진자와의 전체 접촉자가 파악 완료된 장소는 지도상에 표시되지 않습니다.
			</div>
		</div>
		<div class="map_group">
			<div id="map_left">
				<p class="btn_hide"><a href="javascript:void(0)" data-pid="06">확진자 이동경로</a></p>
				<ul class="hidebox showYn">
					<li class="p29"><a href="javascript:location.reload();" class="all" data-pid="06">광주 전체 보기</a></li>
					<li class="p08">
						<div class="mapSearch">
							<div class="selectbox">
									<label for="serviceArea">동구전체</label>
									<select data-gu="1" data-pid="01">
										<option value="" data-pid="01">동구 선택</option>
										<option value="1" data-pid="01">동구 전체</option>
										<option value="충장동">충장동</option>
										<option value="동명동">동명동</option>
										<option value="계림1동">계림1동</option>
										<option value="계림2동">계림2동</option>
										<option value="산수1동">산수1동</option>
										<option value="산수2동">산수2동</option>
										<option value="지산1동">지산1동</option>
										<option value="지산2동">지산2동</option>
										<option value="서남동">서남동</option>
										<option value="학동">학동</option>
										<option value="학운동">학운동</option>
										<option value="지원1동">지원1동</option>
										<option value="지원2동">지원2동</option>
									</select>
							</div>
						</div>
					</li>
					<li class="p05">
						<div class="mapSearch">
							<div class="selectbox">
									<label for="serviceArea">서구전체</label>
									<select data-gu="2" data-pid="02">
										<option value="" data-pid="02">서구 선택</option>
										<option value="1" data-pid="02">서구 전체</option>
										<option value="양동">양동</option>
										<option value="양3동">양3동</option>
										<option value="농성1동">농성1동</option>
										<option value="농성2동">농성2동</option>
										<option value="광천동">광천동</option>
										<option value="유덕동">유덕동</option>
										<option value="치평동">치평동</option>
										<option value="상무1동">상무1동</option>
										<option value="상무2동 ">상무2동 </option>
										<option value="화정1동">화정1동</option>
										<option value="화정2동">화정2동</option>
										<option value="화정3동 ">화정3동 </option>
										<option value="화정4동">화정4동</option>
										<option value="서창동">서창동</option>
										<option value="금호1동">금호1동</option>
										<option value="금호2동">금호2동</option>
										<option value="풍암동">풍암동</option>
										<option value="동천동">동천동</option>
									</select>
							</div>
						</div>
					</li>
					<li class="p04">
						<div class="mapSearch">
							<div class="selectbox">
									<label for="serviceArea">남구전체</label>
									<select data-gu="3" data-pid="03">
										<option value="" data-pid="03">남구 선택</option>
										<option value="1" data-pid="03">남구 전체</option>
										<option value="양림동">양림동</option>
										<option value="방림1동">방림1동</option>
										<option value="방림2동">방림2동</option>
										<option value="봉선1동">봉선1동</option>
										<option value="봉선2동">봉선2동</option>
										<option value="사직동">사직동</option>
										<option value="월산동">월산동</option>
										<option value="월산4동">월산4동</option>
										<option value="월산5동">월산5동</option>
										<option value="백운1동">백운1동</option>
										<option value="백운2동">백운2동</option>
										<option value="주월1동">주월1동</option>
										<option value="주월2동">주월2동</option>
										<option value="효덕동">효덕동</option>
										<option value="송암동">송암동</option>
										<option value="대촌동">대촌동</option>
									</select>
							</div>
						</div>
					</li>
					<li class="p18">
						<div class="mapSearch">
							<div class="selectbox">
									<label for="serviceArea">북구전체</label>
									<select data-gu="4" data-pid="04">
										<option value="" data-pid="04">북구 선택</option>
										<option value="1" data-pid="04">북구 전체</option>
										<option value="중흥1동">중흥1동</option>
										<option value="중흥2동">중흥2동</option>
										<option value="중흥3동">중흥3동</option>
										<option value="중앙동">중앙동</option>
										<option value="임동">임동</option>
										<option value="신안동">신안동</option>
										<option value="용봉동">용봉동</option>
										<option value="운암1동">운암1동</option>
										<option value="운암2동">운암2동</option>
										<option value="운암3동">운암3동</option>
										<option value="동림동">동림동</option>
										<option value="우산동">우산동</option>
										<option value="풍향동">풍향동</option>
										<option value="문화동">문화동</option>
										<option value="문흥1동">문흥1동</option>
										<option value="문흥2동">문흥2동</option>
										<option value="두암1동">두암1동</option>
										<option value="두암2동">두암2동</option>
										<option value="두암3동">두암3동</option>
										<option value="삼각동">삼각동</option>
										<option value="일곡동">일곡동</option>
										<option value="매곡동">매곡동</option>
										<option value="오치1동">오치1동</option>
										<option value="오치2동">오치2동</option>
										<option value="석곡동">석곡동</option>
										<option value="건국동">건국동</option>
										<option value="양산동">양산동</option>
									</select>
							</div>
						</div>
					</li>
					<li class="p27">
						<div class="mapSearch">
							<div class="selectbox">
									<label for="serviceArea">광산구전체</label>
									<select data-gu="5" data-pid="05">
										<option value="" data-pid="05">광산구 선택</option>
										<option value="1" data-pid="05">광산구 전체</option>
										<option value="송정1동">송정1동</option>
										<option value="송정2동">송정2동</option>
										<option value="도산동">도산동</option>
										<option value="신흥동">신흥동</option>
										<option value="어룡동">어룡동</option>
										<option value="우산동">우산동</option>
										<option value="월곡1동">월곡1동</option>
										<option value="월곡2동">월곡2동</option>
										<option value="비아동">비아동</option>
										<option value="첨단1동">첨단1동</option>
										<option value="첨단2동">첨단2동</option>
										<option value="신가동">신가동</option>
										<option value="운남동">운남동</option>
										<option value="신창동">신창동</option>
										<option value="수완동">수완동</option>
										<option value="하남동">하남동</option>
										<option value="임곡동">임곡동</option>
										<option value="동곡동">동곡동</option>
										<option value="평동">평동</option>
										<option value="삼도동">삼도동</option>
										<option value="본량동">본량동</option>
									</select>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>
		
		
		<div id="map"></div>
        
        
        
        
        
        
        </div>
        <br><br><br><br><br><br><br>
      </section>
      <br><br><br><br><br><br><br><br><br><br><br><br><br><br>
      
      <!-- Section 3 -->
      <section class="section background-white">      
        <div class="line text-center">
          <p class="text-primary text-size-20">Lorem ipsum dolor sit amet</p>
          <h2 class="text-dark text-size-50 text-m-size-40">Responsive <b>Components</b></h2>
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
    
    
    
    <!--  지도    -->
    <script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b6c8d161408a929e0d9cb008c878e0cf&libraries=services,clusterer,drawing"></script>
    
    
	<script>
		//모바일 체크
		var filter = "win16|win32|win64|mac";
		var isMobile = "N";
		if(navigator.platform){
			if(0 > filter.indexOf(navigator.platform.toLowerCase())){
			 	isMobile = "Y";
			} else{
				isMobile = "N";
			}
		}
	
		$(function() {
			$('.btn_hide').click(function(){
				if(isMobile == "Y") {
					if($(".hidebox").hasClass('showYn'))
					{
							$(".hidebox").show();
							$('.hidebox').removeClass('showYn');
							$('.btn_hide').css({'background': 'url(https://www.gwangju.go.kr/home/www/images/corona/show_arrow.png) 180px center no-repeat'});
					}
					else
					{
						$(".hidebox").hide();
						$(".hidebox").addClass('showYn');
						$('.btn_hide').css({'background': 'url(https://www.gwangju.go.kr/home/www/images/corona/hide_arrow.png) 180px center no-repeat'});
					}
				}
	
			});
	
		});
	
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div
		mapOption = {
		    center: new kakao.maps.LatLng(35.160520, 126.851435), // 지도의 중심좌표
		    level: 8 // 지도의 확대 레벨
		};
	
		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
		// 구별 이동동선 배열
		var dongList = new Array();
		var seoList = new Array();
		var namList = new Array();
		var bukList = new Array();
		var gwangsanList = new Array();
		var totalList = new Array();
		var radiusList = new Array();
	
		var _marker = new Array();
		var _infowindow = new Array();
		var _polyLine = new Array();
		var _moveLatLon = new Array();
		var maxNum = 0;
		var polylineNum = 0;
		var serachGu ='N';
	
		/* var dangerList = [
						{name:'(주)비트레이드', content: '광주광역시 동구 구성로 162-1, 2층(동구 충장로5가 59-8)', latlng: new kakao.maps.LatLng(35.1507971131212, 126.911807773745), colorNum: '40', gu:'1', danger:'Y'},
						//{name:'주식회사 온오프글로벌', content: '광주광역시 북구 서림로 156, 2층(북구 임동 84-1)', latlng: new kakao.maps.LatLng(35.1591034458169, 126.901326875859), colorNum: '40', gu:'4', danger:'Y'},
						{name:'금양오피스텔 ※ 505, 1001호만 해당', content: '광주광역시 동구 충장로4가 55-1(505호, 1001호), (동구 충장로46번길 7-1)', latlng: new kakao.maps.LatLng(35.149711204803, 126.912749885595), colorNum: '40', gu:'4', danger:'Y'}
					]; */
	
		//지도 마커
		function marker(map, person)
		{
			//var imageSrc = "https://www.gwangju.go.kr/home/www/images/corona/marker_"+num+".png";
			//var imageSrc = "";
			//var imageSize = new kakao.maps.Size(24, 35);
			//var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);
	
			//마커 생성
			for(var i = 0; i<person.length; i++)
			{
				var imageSrc = "https://www.gwangju.go.kr/home/www/images/corona/marker_"+person[i].colorNum+".png";
				var imageSize = ""
				if(person[i].danger == "Y") {
					imageSize = new kakao.maps.Size(35, 35);
				} else {
					imageSize = new kakao.maps.Size(24, 35);
				}
	
				var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);
				var marker = new kakao.maps.Marker({
					map: map,
					position: person[i].latlng,
					image: markerImage
				});
	
				 //마커에 표시할 인포윈도우 생성
			 	var infowindow = new kakao.maps.InfoWindow({
					content: '<div class="map_box"><div class="title">'+person[i].name+'</div><div class="body">'+person[i].content+'</div></div>',
					removable:true
				});
	
			 	 kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
			     kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
	
			 	_marker[maxNum] =  marker;
			 	_infowindow[maxNum] =  infowindow;
			 	_moveLatLon[maxNum] = person[i].latlng;
			 	maxNum = maxNum + 1;
			}
	
		}
	
		//클릭 이벤트
	 	function makeClickListener(map, marker, infowindow, i, _moveLatLon)
		{
	 		return function()
			{
	 			setCircle(_moveLatLon.Ma, _moveLatLon.La, '2000');
	 			infowindow[i].open(map, marker);
			};
		}
	
		//클릭 이벤트
	 	function makePcClickListener(map, marker, infowindow, i, _moveLatLon)
		{
	 		return function()
			{
	 			setCircle(_moveLatLon.Ma, _moveLatLon.La, '2000');
			};
		}
	
		//상세 페이지
		function detailMap(map, pid)
		{
		 	maxNum = 0;
	
		 	// 광주전체, 동서남북광산전체 클릭시 원 삭제
		 	removeCircle();
	
		 	//마커 지우기
			for(var i = 0; i<_marker.length; i++)
			{
				_marker[i].setMap(null);
			}
			//infowinodw 지우기
			for(var k=0; k<_infowindow.length; k++)
			{
				//console.log("k : " + k);
				//console.log(_infowindow[k]);
				_infowindow[k].close();
			}
	
			var moveLatLon;
	
			if (pid == '01')
			{
				marker(map, dongList, '01');
				moveLatLon = dongList;
			}
			 else if (pid == '02')
			{
				marker(map, seoList, '02');
				moveLatLon = seoList;
			}
			 else if (pid == '03')
			{
				marker(map, namList, '03');
				moveLatLon = namList;
			}
			 else if (pid == '04')
			{
				marker(map, bukList, '04');
				moveLatLon = bukList;
			}
			 else if (pid == '05')
			{
				marker(map, gwangsanList, '05');
				moveLatLon = gwangsanList;
			}
			 else if (pid == '06')
			{
				marker(map, totalList, '06');
				moveLatLon = totalList;
			}
			 else if (pid == '07')
			{
				marker(map, radiusList, '07');
				moveLatLon = radiusList;
			}
			/*  else if (pid == '08')
			{
				marker(map, dangerList, '08');
				moveLatLon = dangerList;
			} */
			 /* if(isMobile == "Y") {
				 for(var i = 0; i<_marker.length; i++)
				{
					//클릭 이벤트 생성
					kakao.maps.event.addListener(_marker[i], 'click', makeClickListener(map, _marker[i], _infowindow, i));
					kakao.maps.event.removeListener(_marker[i], 'click', makeClickListener(map, _marker[i], _infowindow, i));
				}
		     } */
		     if(isMobile == "Y") {
			     for(var i = 0; i<_marker.length; i++)
				{
					//클릭 이벤트 생성
					kakao.maps.event.addListener(_marker[i], 'click', makeClickListener(map, _marker[i], _infowindow, i, _moveLatLon[i]));
				}
		     } else {
		    	 for(var i = 0; i<_marker.length; i++)
				{
					//클릭 이벤트 생성
					kakao.maps.event.addListener(_marker[i], 'click', makePcClickListener(map, _marker[i], _infowindow, i, _moveLatLon[i]));
				}
			 }
	
			if(pid == '08')
			{
				// marker 위치에 따른 map level 조정
				var bounds = new kakao.maps.LatLngBounds();
				for(var i=0; i<moveLatLon.length; i++)
				{
					bounds.extend(moveLatLon[i].latlng);
				}
				//map.setBounds(bounds);
				map.panTo(bounds);
			} 
		}
	
		// 인포윈도우를 표시하는 클로저를 만드는 함수입니다
		function makeOverListener(map, marker, infowindow) {
		    return function() {
		        infowindow.open(map, marker);
		    };
		}
	
		// 인포윈도우를 닫는 클로저를 만드는 함수입니다
		function makeOutListener(infowindow) {
		    return function() {
		        infowindow.close();
		    };
		}
	
		// 장소 검색 객체를 생성합니다
		var ps = new kakao.maps.services.Places();
	
		// 키워드 검색을 요청하는 함수입니다
		function searchPlaces() {
	
		    var keyword = document.getElementById('keyword').value;
	
		    if (!keyword.replace(/^\s+|\s+$/g, '')) {
		        alert('키워드를 입력해주세요!');
		        return false;
		    }
	
		    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
		    ps.keywordSearch( keyword, placesSearchCB);
		}
	
		var circle = new kakao.maps.Circle();
	
		function setCircle(y, x, radius) {
			//마커 지우기
			for(var i = 0; i<_marker.length; i++)
			{
				_marker[i].setMap(null);
			}
			//infowinodw 지우기
			for(var k=0; k<_infowindow.length; k++)
			{
				//console.log("k : " + k);
				//console.log(_infowindow[k]);
				_infowindow[k].close();
			}
	
			// 기존에 존재하는 원을 제거
	        removeCircle();
	
			// 지도에 표시할 원을 생성합니다
			circle.setOptions({
				center : new kakao.maps.LatLng(y, x),  // 원의 중심좌표 입니다
			    radius: radius, // 미터 단위의 원의 반지름입니다
			    strokeWeight: 2, // 선의 두께입니다
			    strokeColor: '#75B8FA', // 선의 색깔입니다
			    strokeOpacity: 0.1, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
			    strokeStyle: 'dashed', // 선의 스타일 입니다
			    fillColor: '#CFE7FF', // 채우기 색깔입니다
			    fillOpacity: 0.4  // 채우기 불투명도 입니다
			});
	
			// 반경 내 배열 초기화
			/* radiusList = [];
	
			// 반경 내 마커만 표시
			for(var i = 0; i < totalList.length; i++) {
				// 선을 구성하는 좌표 배열입니다. 이 좌표들을 이어서 선을 표시합니다
	
				var linePath = [
				    new kakao.maps.LatLng(y, x),
				    new kakao.maps.LatLng(totalList[i].latlng.Ha, totalList[i].latlng.Ga)
				];
				// 지도에 표시할 선을 생성합니다
				var polyline = new kakao.maps.Polyline({
				    path: linePath, // 선을 구성하는 좌표배열 입니다
				});
	
				// 두 지점 사이의 거리를 측정
				var lineLen = polyline.getLength();
	
				// 반경 2km(2000) 이하 마커만 배열에 담는다
				if(lineLen <= 2000) {
					radiusList.push(totalList[i]);
				}
			}
	
			//마커 상세
			if(radiusList.length != 0) {
				detailMap(map, '07');
			} */
	
			//마커 상세
			if(totalList.length != 0) {
				detailMap(map, '06');
			}
	
	
			// 이동할 위도 경도 위치를 생성합니다
		    //var moveLatLon = new kakao.maps.LatLng(y, x);
	
		 	// 지도의 레벨을 변경
		    map.setLevel(5);
	
		    // 지도 중심을 부드럽게 이동시킵니다
		    // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
		    map.panTo(new kakao.maps.LatLng(y, x));
		    //중심좌표 이동
		    map.setCenter(new kakao.maps.LatLng(y, x));
		 	// 지도에 원을 표시합니다
		 	if(serachGu == 'N')
				circle.setMap(map);
		 	
		 	serachGu = 'N';
		}
	
		function removeCircle() {
			circle.setMap(null);
		}
		
		function searchGuCB(data, status, pagination) {
			// 검색된 위치에 새로운 원 생성
	        setCircle(data[0].y, data[0].x, 2000);
		}
	
		// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
		function placesSearchCB(data, status, pagination) {
		    if (status === kakao.maps.services.Status.OK) {
	
		        // 정상적으로 검색이 완료됐으면
		        // 검색 목록과 마커를 표출합니다
	        	displayPlaces(data);
	
		        // 페이지 번호를 표출합니다
		        displayPagination(pagination);
	
		        // 검색된 위치에 새로운 원 생성
		        setCircle(data[0].y, data[0].x, 2000);
	
		    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {
	
		        alert('검색 결과가 존재하지 않습니다.');
		        return;
	
		    } else if (status === kakao.maps.services.Status.ERROR) {
	
		        alert('검색 결과 중 오류가 발생했습니다.');
		        return;
	
		    }
	
		}
	
		$(document).ready(function(){
			$(document).on('click', '.addrList', function(){
				if(isMobile == "Y") {
					$(".hidebox").hide();
					$(".hidebox").addClass('showYn');
					$('.btn_hide').css({'background': 'url(https://www.gwangju.go.kr/home/www/images/corona/hide_arrow.png) 180px center no-repeat'});
				}
			});
			
			//$.post('/covid/covid19MapData.html', '').done(function(data) {
				//console.log(data);
			
		
			
	
			// 이동 동선 데이터 불러오기
			$.getJSON('resources/user/json/Mapdata.json').done(function(data) {
				console.log(data);
			    if(data.errChk == 'N') {
			        $.each(data.dongList, function(key, values) {
			        	var tmpJson = new Object();
			        	tmpJson.name = $.trim(values.TITLE).replace(/&#46;/g,".");
			        	tmpJson.content = $.trim(values.SHOWDT).replace(/,/g,"<br>").replace(/&#46;/g,".").replace(/\//g,"<br>");
			        	tmpJson.latlng = new kakao.maps.LatLng($.trim(values.LATLNG_Y).replace(/&#46;/g,"."), $.trim(values.LATLNG_X).replace(/&#46;/g,"."));
			        	tmpJson.colorNum = "08";
			        	JSON.stringify(tmpJson);
			        	dongList.push(tmpJson);
			        	totalList.push(tmpJson);
			        });
			        $.each(data.seoList, function(key, values) {
			        	var tmpJson = new Object();
			        	tmpJson.name = $.trim(values.TITLE).replace(/&#46;/g,".");
			        	tmpJson.content = $.trim(values.SHOWDT).replace(/,/g,"<br>").replace(/&#46;/g,".").replace(/\//g,"<br>");
			        	tmpJson.latlng = new kakao.maps.LatLng($.trim(values.LATLNG_Y).replace(/&#46;/g,"."), $.trim(values.LATLNG_X).replace(/&#46;/g,"."));
			        	tmpJson.colorNum = "05";
			        	JSON.stringify(tmpJson);
			        	seoList.push(tmpJson);
			        	totalList.push(tmpJson);
			        });
			        $.each(data.namList, function(key, values) {
			        	var tmpJson = new Object();
			        	tmpJson.name = $.trim(values.TITLE).replace(/&#46;/g,".");
			        	tmpJson.content = $.trim(values.SHOWDT).replace(/,/g,"<br>").replace(/&#46;/g,".").replace(/\//g,"<br>");
			        	tmpJson.latlng = new kakao.maps.LatLng($.trim(values.LATLNG_Y).replace(/&#46;/g,"."), $.trim(values.LATLNG_X).replace(/&#46;/g,"."));
			        	tmpJson.colorNum = "04";
			        	JSON.stringify(tmpJson);
			        	namList.push(tmpJson);
			        	totalList.push(tmpJson);
			        });
			        $.each(data.bukList, function(key, values) {
			        	var tmpJson = new Object();
			        	tmpJson.name = $.trim(values.TITLE).replace(/&#46;/g,".");
			        	tmpJson.content = $.trim(values.SHOWDT).replace(/,/g,"<br>").replace(/&#46;/g,".").replace(/\//g,"<br>");
			        	tmpJson.latlng = new kakao.maps.LatLng($.trim(values.LATLNG_Y).replace(/&#46;/g,"."), $.trim(values.LATLNG_X).replace(/&#46;/g,"."));
			        	tmpJson.colorNum = "18";
			        	JSON.stringify(tmpJson);
			        	bukList.push(tmpJson);
			        	totalList.push(tmpJson);
			        });
			        $.each(data.gwangsanList, function(key, values) {
			        	var tmpJson = new Object();
			        	tmpJson.name = $.trim(values.TITLE).replace(/&#46;/g,".");
			        	tmpJson.content = $.trim(values.SHOWDT).replace(/,/g,"<br>").replace(/&#46;/g,".").replace(/\//g,"<br>");
			        	tmpJson.latlng = new kakao.maps.LatLng($.trim(values.LATLNG_Y).replace(/&#46;/g,"."), $.trim(values.LATLNG_X).replace(/&#46;/g,"."));
			        	tmpJson.colorNum = "27";
			        	JSON.stringify(tmpJson);
			        	gwangsanList.push(tmpJson);
			        	totalList.push(tmpJson);
			        });
	
			        /* for(var i=0; i<dangerList.length; i++) {
			        	if(dangerList[i].gu == "1") {
			        		dongList.push(dangerList[i]);
			        	} else if(dangerList[i].gu == "2") {
			        		seoList.push(dangerList[i]);
			        	} else if(dangerList[i].gu == "3") {
			        		namList.push(dangerList[i]);
			        	} else if(dangerList[i].gu == "4") {
			        		bukList.push(dangerList[i]);
			        	} else if(dangerList[i].gu == "5") {
			        		gwangsanList.push(dangerList[i]);
			        	}
			        	totalList.push(dangerList[i]);
			        } */
	
			    }
	
			 	// 로딩 완료 후 광주 전체 마커 찍기
				detailBtn(map, '06');
	
			});
	
			// 광주전체
			$('.detailBtn').click(function(){	
				 $('.selectbox > select').each(function(i){
					$(this).val("1");
				});
				var pid = $(this).data('pid');
				detailBtn(map, pid);
				if(isMobile == "Y") {
					$(".hidebox").hide();
					$(".hidebox").addClass('showYn');
					$('.btn_hide').css({'background': 'url(https://www.gwangju.go.kr/home/www/images/corona/hide_arrow.png) 180px center no-repeat'});
				} 
			});
	
			// 구 선택
			/* $(".selectbox > select").click(function(){
				var pid = $(this).data("pid");
				var dong = $(this).val();
				if(dong == "1") {
					detailBtn(map, pid);
				}
	
			}); */
		
			// 구, 동 선택 박스 선택
			$(".selectbox > select").change(function(){
				var gu = $(this).data("gu");
				var dong = $(this).val();
				var searchQuery = "광주광역시 ";
				var pid = $(this).data("pid");
	
				$('.selectbox > select').each(function(i){
					if(parseInt(gu) - 1 != i) {
						$(this).val("");
					}
				});
	
				if(dong != "") {
					if(gu == "1") {
						searchQuery += "동구";
					} else if(gu == "2") {
						searchQuery += "서구 ";
					} else if(gu == "3") {
						searchQuery += "남구 ";
					} else if(gu == "4") {
						searchQuery += "북구 ";
					} else if(gu == "5") {
						searchQuery += "광산구 ";
					}
					
					if(dong != '1')
					{
						searchQuery += dong;
						searchQuery += " 행정복지센터";
					}
					else
					{
						serachGu = 'Y';
						searchQuery += '청';
					}
					
					//$("#keyword").val(searchQuery);
	
					//searchGu(searchQuery);
				    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
				    ps.keywordSearch( searchQuery, searchGuCB);
				    
					if(isMobile == "Y") {
						$(".hidebox").hide();
						$(".hidebox").addClass('showYn');
						$('.btn_hide').css({'background': 'url(https://www.gwangju.go.kr/home/www/images/corona/hide_arrow.png) 180px center no-repeat'});
					}
				}
				/* } else {
					detailBtn(map, pid);
					if(isMobile == "Y") {
						$(".hidebox").hide();
						$(".hidebox").addClass('showYn');
						$('.btn_hide').css({'background': 'url(https://www.gwangju.go.kr/home/www/images/corona/hide_arrow.png) 180px center no-repeat'});
					}
				} */
	
			});
	
		});
	
		$(document).on("click", ".item", function(){
			var y = $(this).find(".latlng_y").val();
			var x = $(this).find(".latlng_x").val();
	
			setCircle(y, x, '2000');
	
		});
	
		function detailBtn(map, pid) {
			var thisLen = "";
			 if(pid == "01") {
				thisLen = dongList.length;
			} else if(pid == "02") {
				thisLen = seoList.length;
			} else if(pid == "03") {
				thisLen = namList.length;
			} else if(pid == "04") {
				thisLen = bukList.length;
			} else if(pid == "05") {
				thisLen = gwangsanList.length;
			} else {
				thisLen = totalList.length;
			}
			if(thisLen != 0) {
				//마커 상세
				detailMap(map, pid);
			}
		}
	
		// 검색 결과 목록과 마커를 표출하는 함수입니다
		function displayPlaces(places) {
	
		    var listEl = document.getElementById('placesList'),
		    menuEl = document.getElementById('menu_wrap'),
		    fragment = document.createDocumentFragment(),
		    bounds = new kakao.maps.LatLngBounds(),
		    listStr = '';
	
		    // 검색 결과 목록에 추가된 항목들을 제거합니다
		    removeAllChildNods(listEl);
	
		    // 지도에 표시되고 있는 마커를 제거합니다
		    //removeMarker();
	
		    for ( var i=0; i<places.length; i++ ) {
	
		        // 마커를 생성하고 지도에 표시합니다
		        var placePosition = new kakao.maps.LatLng(places[0].y, places[0].x),
		           // marker = addMarker(placePosition, i),
		            itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다
	
		        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
		        // LatLngBounds 객체에 좌표를 추가합니다
		        bounds.extend(placePosition);
	
		        // 마커와 검색결과 항목에 mouseover 했을때
		        // 해당 장소에 인포윈도우에 장소명을 표시합니다
		        // mouseout 했을 때는 인포윈도우를 닫습니다
		        /* (function(marker, title) {
		            kakao.maps.event.addListener(marker, 'mouseover', function() {
		                displayInfowindow(marker, title);
		            });
	
		            kakao.maps.event.addListener(marker, 'mouseout', function() {
		                infowindow.close();
		            });
	
		            itemEl.onmouseover =  function () {
		                displayInfowindow(marker, title);
		            };
	
		            itemEl.onmouseout =  function () {
		                infowindow.close();
		            };
		        })(marker, places[i].place_name); */
	
		        fragment.appendChild(itemEl);
		    }
	
		    // 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
		    listEl.appendChild(fragment);
		    menuEl.scrollTop = 0;
	
		    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
		    map.setBounds(bounds);
		}
	
		// 검색결과 항목을 Element로 반환하는 함수입니다
		function getListItem(index, places) {
	
		    var el = document.createElement('li'),
		    //itemStr = '<span class="markerbg marker_' + (index+1) + '"></span>' +
		    itemStr =           '<div class="info addrList">' +
		                '   <h5>' + places.place_name + '</h5>';
	
		    if (places.road_address_name) {
		        itemStr += '    <span>' + places.road_address_name + '</span>' +
		                    '   <span class="jibun gray">' +  places.address_name  + '</span>';
		    } else {
		        itemStr += '    <span>' +  places.address_name  + '</span>';
		    }
	
		      itemStr += '  <span class="tel">' + places.phone  + '</span>';
		      itemStr += '<input type="hidden" class="latlng_y" value="'+places.y+'">';
		      itemStr += '<input type="hidden" class="latlng_x" value="'+places.x+'">' +
	       				'</div>';
	
		    el.innerHTML = itemStr;
		    el.className = 'item';
	
		    return el;
		}
	
		// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
		function addMarker(position, idx, title) {
		    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
		        imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
		        imgOptions =  {
		            spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
		            spriteOrigin : new kakao.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
		            offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
		        },
		        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
		            marker = new kakao.maps.Marker({
		            position: position, // 마커의 위치
		            image: markerImage
		        });
	
		    marker.setMap(map); // 지도 위에 마커를 표출합니다
		    markers.push(marker);  // 배열에 생성된 마커를 추가합니다
	
		    return marker;
		}
	
		// 지도 위에 표시되고 있는 마커를 모두 제거합니다
		function removeMarker() {
		    for ( var i = 0; i < markers.length; i++ ) {
		        markers[i].setMap(null);
		    }
		    markers = [];
		}
	
		// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
		function displayPagination(pagination) {
		    var paginationEl = document.getElementById('pagination'),
		        fragment = document.createDocumentFragment(),
		        i;
	
		    // 기존에 추가된 페이지번호를 삭제합니다
		    while (paginationEl.hasChildNodes()) {
		        paginationEl.removeChild (paginationEl.lastChild);
		    }
	
		    for (i=1; i<=pagination.last; i++) {
		        var el = document.createElement('a');
		        el.href = "#";
		        el.innerHTML = i;
	
		        if (i===pagination.current) {
		            el.className = 'on';
		        } else {
		            el.onclick = (function(i) {
		                return function() {
		                    pagination.gotoPage(i);
		                }
		            })(i);
		        }
	
		        fragment.appendChild(el);
		    }
		    paginationEl.appendChild(fragment);
		}
	
		// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
		// 인포윈도우에 장소명을 표시합니다
		function displayInfowindow(marker, title) {
		    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';
	
		    infowindow.setContent(content);
		    infowindow.open(map, marker);
		}
	
		 // 검색결과 목록의 자식 Element를 제거하는 함수입니다
		function removeAllChildNods(el) {
		    while (el.hasChildNodes()) {
		        el.removeChild (el.lastChild);
		    }
		}
	</script>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
     
  </body>
</html>