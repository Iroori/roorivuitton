<%@page import="kr.smhrd.domain.Cctv"%>
<%@page import="kr.smhrd.domain.Image"%>
<%@page import="java.util.List"%>
<%@page import="kr.smhrd.service.BoardService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>stealcut</title>
    <!-- 반응형 -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, maximum-scale=1, minimum-scale=1">
    <!-- Open Graph : 외부에 정의할수 있는 내용 -->
    <meta property="og:type" content="website">
    <meta property="og:title" content="Edge Computing">
    <!-- 이미지경로 -->
    <meta property="og:image" content="">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    
    <link rel="stylesheet" href="resources/admin/css/main.css">  
    
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700&display=swap" rel="stylesheet">
    
    
    
</head>
<body>
 

<div class="body_container">
    <!-- 사이드 메뉴 바 -->
   <div class="d-flex flex-column flex-shrink-0 bg-light" style="width: 5rem; height: 100vh; float: left; background-color: #094275 !important; position: sticky;
  top: 0;">
        <a href="main" class="d-block p-3 link-dark text-decoration-none" title="" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-original-title="Icon-only">
            <img class="bi" width="50" height="50" style="margin-top:25px; margin-bottom:140px;"src="resources/admin/images/icon/logo-v.png">
        
        </a>
        <ul class="nav nav-pills nav-flush flex-column mb-auto text-center">
          <li class="nav-item" >
            <a href="main" class="nav-link py-3 border-bottom border-top" style="padding-top:1.5rem!important;
            padding-bottom:1.5rem!important;" aria-current="page" title="" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-original-title="Home">
              <img class="bi" width="30" height="30" src="resources/admin/images/icon/home-white.png">
            </a>
          </li>
          <li>
            <a href="#" class="nav-link py-3 border-bottom" style="padding-top:1.5rem!important;
            padding-bottom:1.5rem!important;"title="" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-original-title="Dashboard">
                <img class="bi" width="30" height="30" src="resources/admin/images/icon/notification-white.png">
            </a>
          </li>
          <li>
            <a href="cctv" class="nav-link py-3 border-bottom" style="padding-top:1.5rem!important;
            padding-bottom:1.5rem!important;"title="" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-original-title="Orders">
                 <img class="bi" width="30" height="30" src="resources/admin/images/icon/camera-white.png">
            </a>
          </li>
          <li>
            <a href="stealcut" class="nav-link py-3 border-bottom" style="padding-top:1.5rem!important;
            padding-bottom:1.5rem!important;"title="" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-original-title="Products">
                <img class="bi" width="30" height="30" src="resources/admin/images/icon/cloud-data-white.png">
            </a>
          </li>
          <li>
            <a href="peoplecount" class="nav-link py-3 border-bottom"style="padding-top:1.5rem!important;
            padding-bottom:1.5rem!important;" title="" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-original-title="Customers">
                <img class="bi" width="30" height="30" src="resources/admin/images/icon/group-white.png">
            </a>
          </li>
          <li>
            <a href="#" class="nav-link py-3 border-bottom" style="padding-top:1.5rem!important;
            padding-bottom:1.5rem!important;"title="" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-original-title="Customers">
                <img class="bi" width="30" height="30" src="resources/admin/images/icon/gear-white.png">
            </a>
          </li>
        </ul>
        
      </div>

    <!-- 메인 -->
    <section class="section section-visual"> 
        <div class="wrap">
            <div class="user-menu">
                <p>안녕하세요. 00님</p>
                <div class="side-line"></div>
                <div class="dropdown">
                    <a href="#" class="d-flex align-items-center link-dark text-decoration-none dropdown-toggle" id="dropdownUser2" data-bs-toggle="dropdown" aria-expanded="false">
                      <img src="https://github.com/mdo.png" alt="" width="32" height="32" class="rounded-circle me-2">
                      <strong style="color:#333;margin-left:10px;">000님</strong>
                    </a>
                    <ul class="dropdown-menu text-small shadow" aria-labelledby="dropdownUser2">
                      <li><a class="dropdown-item" href="#">New project...</a></li>
                      <li><a class="dropdown-item" href="#">Settings</a></li>
                      <li><a class="dropdown-item" href="#">Profile</a></li>
                      <li><hr class="dropdown-divider"></li>
                      <li><a class="dropdown-item" href="#">Sign out</a></li>
                    </ul>
                  </div>
            </div>
        </div>

    </section>

    <section class="section section-visual">
        <div class="wrap">
            <div class="containt">                
                <p>Stealcut</p>
              
               <div class="cut-lside">
                
               <div class="accordion">
                
                 <input type="radio" name="accordion" id="answer01">
                 <label for="answer01">반1</label>                   
                 <div>
                 <ul class="aco_list">
                   <li>
                     <a href="#n">1월 12일</a>                       
                       <ul class="text_box">
                         <li>9시</li>
                         <li>10시</li>
                         <li>11시</li>
                       </ul>                      
                   </li>
                 
                 </ul>
                 <c:forEach items="${list}" var="vo" varStatus="status">
                 <div class="cut-lside">${vo.cctv_no}</div>              
                 
                 </c:forEach>
                 
                 
                 
                 
                </div>
                
                 
                
                
                 
                  
                  
                  

               </div>     

               </div>
               <div class="cut-headder">
                 
                <div class="hover_effect_box hover_effect_1">
                  <div class="content_bg">
                    <img class="small" src="/file/images/faces/face1.jpg">
                  </div>
                  <div class="caption">
                    <div class="caption_title">크게보기</div>                     
                  </div>
                  <div class="cut-time">
                    시간
                  </div>
                </div>
                <div class="hover_effect_box hover_effect_1">
                  <div class="content_bg">
                    <img class="small" src="/file/images/faces/face2.jpg">
                  </div>
                  <!--
                  <div class="caption">
                    <div class="caption_title">크게보기</div>                     
                  </div>
                  -->
                  <div class="cut-time">
                    시간1
                  </div>
                </div>
                <div class="hover_effect_box hover_effect_1">
                  <div class="content_bg">
                    <img class="small"  src="/file/images/faces/face3.jpg">
                  </div>
                  <!--
                  <div class="caption">
                    <div class="caption_title">크게보기</div>                     
                  </div>
                  -->
                  <div class="cut-time">
                    시간2
                  </div>
                </div>  
                <div class="hover_effect_box hover_effect_1">
                  <div class="content_bg">
                    <img class="small"  src="/file/images/faces/face1.jpg">
                  </div>
                  <!--
                  <div class="caption">
                    <div class="caption_title">크게보기</div>                     
                  </div>
                  -->
                  <div class="cut-time">
                    시간2
                  </div>
                </div>   
                <div class="hover_effect_box hover_effect_1">
                  <div class="content_bg">
                    <img class="small"  src="/file/images/faces/face2.jpg">
                  </div>
                  <!--
                  <div class="caption">
                    <div class="caption_title">크게보기</div>                     
                  </div>
                  -->
                  <div class="cut-time">
                    시간2
                  </div>
                </div>   
                <div class="hover_effect_box hover_effect_1">
                  <div class="content_bg">
                    <img class="small"  src="/file/images/faces/face3.jpg">
                  </div>
                  <!--
                  <div class="caption">
                    <div class="caption_title">크게보기</div>                     
                  </div>
                  -->
                  <div class="cut-time">
                    시간2
                  </div>
                </div>   
                <div class="hover_effect_box hover_effect_1">
                  <div class="content_bg">
                    <img class="small"  src="/file/images/faces/face1.jpg">
                  </div>
                  <!--
                  <div class="caption">
                    <div class="caption_title">크게보기</div>                     
                  </div>
                  -->
                  <div class="cut-time">
                    시간2
                  </div>
                </div>   
                <div class="hover_effect_box hover_effect_1">
                  <div class="content_bg">
                    <img class="small"  src="/file/images/faces/face2.jpg">
                  </div>
                  <!--
                  <div class="caption">
                    <div class="caption_title">크게보기</div>                     
                  </div>
                  -->
                  <div class="cut-time">
                    시간2
                  </div>
                </div>                
                

               </div>

               <div class="cut-main">
                <div class="bimages">
                  <img id="big" src="/file/images/faces/face3.jpg" width="500px">
              </div>

               </div>
               <div class="cut-rside">
               
              <div class="steal-cut-images">
                  <img src="/file/images/faces/face3.jpg">
              </div> 
              <div class="steal-cut-images">
                  <img src="/file/images/faces/face3.jpg">
              </div> 
              <div class="steal-cut-images">
                  <img src="/file/images/faces/face3.jpg">
              </div> 
              <div class="steal-cut-images">
                  <img src="/file/images/faces/face3.jpg">
              </div> 
              <div class="steal-cut-images">
                  <img src="/file/images/faces/face3.jpg">
              </div> 
              <div class="steal-cut-images">
                  <img src="/file/images/faces/face3.jpg">
              </div> 
              <div class="steal-cut-images">
                  <img src="/file/images/faces/face3.jpg">
              </div> 
              <div class="steal-cut-images">
                  <img src="/file/images/faces/face3.jpg">
              </div> 
              

               </div>
                

                <!-- CCTV 영상들 아래로-->
                
            
     
               









            </div>
        </div>

    </section>
</div> 
<script src="resources/admin/js/jquery-3.6.0.js"></script>


<script>
  var bigPic = document.querySelector("#big");
  var smallPics = document.querySelectorAll(".small");
  
  for(var i = 0; i< smallPics.length; i++){
      smallPics[i].addEventListener("click",changepic);
      
  }
  function changepic(){
      var smallPicAttribute = this.getAttribute("src");
      bigPic.setAttribute("src",smallPicAttribute);
  } 
  </script>
  
<script>
$(document).ready(()=>{	
	loadUlList();
	loadTimeList();
});

function loadUlList(){
	$.ajax({
		url : "ulAjaxList.do", 
		type : "get", 
		
		dataType: "json",  
		success : function(list){
			console.log(list);
		},
		error : function(){
			alert("error");
		}		
	});
}

function loadTimeList(){
	$.ajax({
		url : "timeAjaxList.do",
		type : "get",
		dataType: "json",
		success : function(list){
			console.log(list);
		},
		error: function(){
			alert("error!");
		}		
	});
}
</script>



<script>
  $(function(){
  const acoAco = $('.aco_list li a');

  acoAco.on('click',function(){
    const item = $(this);
    let speed = 400;

    acoAco.parent().find('.text_box').stop().slideUp(speed);

    if(item.hasClass('active')){
      item.find('.text_box').stop().slideUp(speed);
      item.removeClass('active');      
    }else{
      item.parent().find('.text_box').stop().slideDown(speed);
      acoAco.removeClass('active');
      item.addClass('active');
    }

  });

})
</script>

    


</body>
</html>