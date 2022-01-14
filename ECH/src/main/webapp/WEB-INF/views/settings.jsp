<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>V:Monitor</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    
    <link rel="stylesheet" href="resources/admin/css/basic.css"> 
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

    <script>
        
        $(document).ready(function(){
            $(document).on("click", "button[name='btnplus']",
            function(){
                console.log('야');
                $(".plus").remove();
                $(".minus").remove();
                $(".settings-input-name").css("margin-bottom","30px");
                $(".settings-form").append("<input class= 'settings-input-name' type='text' placeholder='장소명' name='cctv_location'>");
                $(".settings-form").append("<input class= 'settings-input-count' type='text' placeholder='적정 인원' name='cctv_total_user'>");
                $(".settings-form").append("<input class= 'settings-input-model' type='text' placeholder='모델 일련번호' name='cctv_serial'>");
                $(".settings-form").append("<button  id ='plusBtn' class='btnsettings plus' name='btnplus' type='button' >추가</button>");
                $(".settings-form").append("<button  id='deleteBtn' class='btnsettings minus' type='button' >삭제</button>");
                
                   
                   
                    
            })
        });
    </script>
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
     <section class="section section-visual">
        <div class="content-wrap">
            <div class="content-title">
                <h3>환경설정</h3>
                <p>Settings</p>
                <hr class="line">
            </div>
            <div class="settings-title">
                <span class="settings-title1">장소명</span>
                <span class="settings-title2">적정 인원</span>
                <span class="settings-title3">모델 일련번호</span>
            </div>
            <form action="setting.do" method="POST">
                <div class="settings-form">
                    <input class= "settings-input-name" type="text" placeholder="장소명" name="cctv_location">
                    <input class= "settings-input-count" type="text" placeholder="적정 인원" name="cctv_total_user">
                    <input class= "settings-input-model" type="text" placeholder="모델 일련번호" name="cctv_serial">
                    <button  id ="plusBtn" class="btnsettings plus" name="btnplus" type="button" >추가</button>
                    <button  id="deleteBtn" class="btnsettings minus" type="button" >삭제</button>
                </div>
                      
                <div class="settings-btn">
                    <button  class="settings-btn2 cancel" type="button" >취소</button>
                    <input  class="settings-btn2"type="submit" value="저장">
                </div>

            </form>
        </div>

    </section>
    
    
    
    
    </div>
    
</body>
</html>