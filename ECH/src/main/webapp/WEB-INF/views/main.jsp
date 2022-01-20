<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>main</title>
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
            <a href="settings" class="nav-link py-3 border-bottom" style="padding-top:1.5rem!important;
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
            	<c:if test="${!empty users}">
                <p>안녕하세요. ${users.user_name}님</p>
                </c:if>
                <div class="side-line"></div>
                <div class="dropdown">
                    <a href="#" class="d-flex align-items-center link-dark text-decoration-none dropdown-toggle" id="dropdownUser2" data-bs-toggle="dropdown" aria-expanded="false">
                      <img src="https://github.com/mdo.png" alt="" width="32" height="32" class="rounded-circle me-2">
                      <c:if test="${!empty users}">               
                      <strong style="color:#333;margin-left:10px;">${users.user_name}님</strong>
                       </c:if>
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
            <div class="content">
                <p>CCTV</p>

                <!-- CCTV 영상들 아래로-->
                <div class="cctv-container">                        
                  <fieldset>                             
                      <figure>
                      <video id="b1" onclick="newPage()" class="cctv-content" src="/file/video/pexels-byron-sullivan-10672887.mp4" loop autoplay ></video>
                      <figcaption>반1</figcaption>
                      </figure>
                  </fieldset>                  
                  <fieldset>
                      <figure>
                          <video id="b2" onclick="newPage()" class="cctv-content" src="/file/video/pexels-joseph-redfield-10662934.mp4"  ></video>
                          <figcaption>반2</figcaption>
                      </figure>
                  </fieldset>
                  <fieldset>
                      <figure>
                          <video id="b3" onclick="newPage()" class="cctv-content" src="/file/video/pexels-joseph-redfield-10662936.mp4" ></video>
                          <figcaption>반3</figcaption>
                      </figure>
                  </fieldset>
                  <fieldset>
                    <figure>
                        <video id="b4" onclick="newPage()"  class="cctv-content" src="/file/video/pexels-joseph-redfield-10662936.mp4" ></video>
                        <figcaption>반4</figcaption>
                    </figure>
                  </fieldset>
                  <fieldset>
                    <figure>
                        <video class="cctv-content" src="/file/video/pexels-joseph-redfield-10662936.mp4" ></video>
                        <figcaption>반3</figcaption>
                    </figure>
                  </fieldset>
                  <fieldset>
                    <figure>
                        <video class="cctv-content" src="/file/video/pexels-joseph-redfield-10662936.mp4" ></video>
                        <figcaption>반3</figcaption>
                    </figure>
                  </fieldset>
                  <fieldset>
                    <figure>
                        <video class="cctv-content" src="/file/video/pexels-joseph-redfield-10662936.mp4" ></video>
                        <figcaption>반3</figcaption>
                    </figure>
                  </fieldset>
                  <fieldset>
                    <figure>
                        <video class="cctv-content" src="/file/video/pexels-joseph-redfield-10662936.mp4" ></video>
                        <figcaption>반3</figcaption>
                    </figure>
                  </fieldset>
                  <fieldset>
                    <figure>
                        <video class="cctv-content" src="/file/video/pexels-joseph-redfield-10662936.mp4" ></video>
                        <figcaption>반3</figcaption>
                    </figure>
                  </fieldset>
                  <fieldset>
                    <figure>
                        <video class="cctv-content" src="/file/video/pexels-joseph-redfield-10662936.mp4" ></video>
                        <figcaption>반3</figcaption>
                    </figure>
                  </fieldset>
                  <fieldset>
                    <figure>
                        <video class="cctv-content" src="/file/video/pexels-joseph-redfield-10662936.mp4" ></video>
                        <figcaption>반3</figcaption>
                    </figure>
                  </fieldset>
                  
                  
              </div>









            </div>
        </div>

    </section>
</div>  

<script src="resources/admin/js/jquery-3.6.0.js"></script>
<script>
 function newPage()  {
  window.location.href = 'cctv';
}
 
 
 </script>
    


</body>
</html>