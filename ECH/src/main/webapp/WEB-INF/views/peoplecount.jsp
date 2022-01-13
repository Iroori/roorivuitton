<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    
    <link rel="stylesheet" href="resources/admin/css/basic.css"> 
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
    

    </section>
    
    
    <section class="section section-visual">
        <div class="content-wrap">
            <div class="content-title">
                <h3>적정인원</h3>
                <p>People count</p>
                <hr class="line">
            </div>
            <div class="chart-container">
                <div class="content-chart">
                    <div class="chart">chart</div>
                    
                    <div class="people-count">
                        <h3>2 강의장</h3>
                        <p>설정 인원 : 20</p>
                        <button  class="btn" type="button" onclick="">CCTV</button>
                    </div>
                </div>
                <div class="content-chart">
                    <div class="chart">chart</div>
                    
                    <div class="people-count">
                        <h3>2 강의장</h3>
                        <p>설정 인원 : 20</p>
                        <button  class="btn" type="button" onclick="">CCTV</button>
                    </div>
                </div>
                <div class="content-chart">
                    <div class="chart">chart</div>
                    
                    <div class="people-count">
                        <h3>2 강의장</h3>
                        <p>설정 인원 : 20</p>
                        <button  class="btn" type="button" onclick="">CCTV</button>
                    </div>
                </div>
                <div class="content-chart">
                    <div class="chart">chart</div>
                    
                    <div class="people-count">
                        <h3>2 강의장</h3>
                        <p>설정 인원 : 20</p>
                        <button  class="btn" type="button" onclick="">CCTV</button>
                    </div>
                </div>
                <div class="content-chart">
                    <div class="chart">chart</div>
                    
                    <div class="people-count">
                        <h3>2 강의장</h3>
                        <p>설정 인원 : 20</p>
                        <button  class="btn" type="button" onclick="">CCTV</button>
                    </div>
                </div>
                <div class="content-chart">
                    <div class="chart">chart</div>
                    
                    <div class="people-count">
                        <h3>2 강의장</h3>
                        <p>설정 인원 : 20</p>
                        <button  class="btn" type="button" onclick="">CCTV</button>
                    </div>
                </div>
            </div>
        </div>

        

    </section>
</div>   
    
</body>
</html>