<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Edge Computing Web Service">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Document</title>
    <!-- 반응형 -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, maximum-scale=1, minimum-scale=1">
    <!-- Open Graph : 외부에 정의할수 있는 내용 -->
    <meta property="og:type" content="website">
    <meta property="og:title" content="Edge Computing">
    <!-- 이미지경로 -->
    <meta property="og:image" content="">

    <!-- Twitter Card -->
    <meta property="twitter:title" content="Endge Computing">
    <meta property="twitter:image" content="">
    <!-- 아이콘 설정 + 스마트폰-->
    <!--아이콘 파일이 있는 경우 
        <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">-->
    <link rel="icon" href="">
    <link rel="apple-touch-icon" href="">
    
    <!--폰트 -->
    <link href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700&display=swap" rel="stylesheet">
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
    <link rel="stylesheet" href="resources/main/css/cctv.css">

    <link rel="stylesheet" href="resources/main/css/tabbed.css">

    <link rel="stylesheet" type="text/css" href="resources/main/css/normalize.css" />
	<link rel="stylesheet" type="text/css" href="resources/main/css/demo.css" />


    <script>
        document.documentElement.className = 'js';
        function browserCanUseCssVariables() { return window.CSS && window.CSS.supports && window.CSS.supports('--fake-var', 0); }
        if (!browserCanUseCssVariables()) alert('Your browser does not support CSS Variables. Please use a modern browser to view this demo.');
      </script>
    
    
</head>
<body>
<div class="body__container">
    <!-- Header -->
    <header class="section">
        <div class="wrapper">
            <div class ="menu-group">
                <div class="logo">
                    <a href="#">logo</a>
                </div>
                <div class="user-message">
                    <div class="user-name">관리자님 반갑습니다.</div>
                    <div class="user-info">
                        <div class="user-role">Manager</div>
                        <div class="dash">˙</div>
                        <div class="user-location">00 유치원</div>

                    </div>
                    <div class="btn logout">
                        <a href="#">logout</a></div>    
                </div>
            </div>

        </div>


    </header>

    <!--visual-->
    <section class="section section-visual">
        <div class="wrap">
            <div class="menu">
           		<div class="menu-list1">            
                    <div class="menu-img">
                        <a href="main"><img src="resources/main/images/dashboard.png"></a>
                    </div>
                    <div class="menu-title">
                        <a href="main">Dashboard</a>
                    </div>
                </div>
                <div class="menu-list2">
                    <div class="menu-img">
                        <a href="#"><img src="resources/main//images/notification.png"></a>
                    </div>
                    <div class="menu-title">
                        <a href="#">Notifications</a>
                    </div>
                </div>
                <div class="menu-list3">
                    <div class="menu-img">
                        <a href="stillcut"><img src="resources/main//images/still-cut.png"></a>
                    </div>
                    <div class="menu-title">
                        <a href="stillcut">Still-cut</a>
                    </div>
                </div>
                <div class="menu-list4">
                    <div class="menu-img">
                        <a href="cctv"><img src="resources/main//images/cctv.png"></a>
                    </div>
                    <div class="menu-title">
                        <a href="cctv">CCTV</a>
                    </div>
                </div>
                <div class="menu-list5">
                    <div class="menu-img">
                        <a href="peoplechart"><img src="resources/main//images/people.png"></a>
                    </div>
                    <div class="menu-title">
                        <a href="peoplechart">Number of People</a>
                    </div>
                </div>
                <div class="menu-list6">
                    <a href="setting"><img src="resources/main//images/settings.png"></a>
                    <div class="menu-title">
                        <a href="setting">Settings</a>
                    </div>
                </div>
            </div>
            <div class="wrap-main" id="cctv">
                <div class="main-cctv">                    
                    <div class="main-title">
                        StealCut
                        <select name="fruits" class="select">
                            <option value="b1">새싹반</option>
                            <option >병아리반</option>
                            <option >반2</option>
                            <option >반3</option>
                            <option >반4</option>
                            <option >반5</option>
                            <option >반6</option>
                          </select>
                    
                    </div>
                    
                    <div class="cctv-container">
                        <fieldset>
                            <div class="tabbed">
                                <ul>
                                  <li>Third tab</li>
                                  <li>Second tab</li>
                                  <li class="active">First tab</li>
                                </ul>
                              </div> 
                            <svg class="hidden">
			
			
			
                                <symbol id="icon-folderback" viewBox="0 0 20 16">
                                  <title>folder-back</title>
                                  <path d="M7.5,0C7.4,0,2,0,2,0C0.9,0,0,0.9,0,2l0,12c0,1.1,0.9,2,2,2h16c1.1,0,2-0.9,2-2V4c0-1.1-0.9-2-2-2c0,0-7.5,0-8,0C9,2,9.9,0,7.5,0z"/>
                                </symbol>
                                <symbol id="icon-foldercover" viewBox="0 0 20 16">
                                  <title>folder-cover</title>
                                  <path d="M2,2h16c1.1,0,2,0.9,2,2v10c0,1.1-0.9,2-2,2H2c-1.1,0-2-0.9-2-2V4C0,2.9,0.9,2,2,2z"/>
                                </symbol>
                                
                                
                                
                                
                              </svg>
                                <main>
                                  <section class="content content--ardra">
                                    <div class="grid">					
                                      <div class="grid__item">
                                        <div class="folder folder--ardra">
                                          <div class="folder__feedback"></div>
                                          <div class="folder__preview folder__preview--thumbs">
                                            <img class="folder__thumb" src="resources/main/images/faces/face1.jpg" />
                                            <img class="folder__thumb" src="resources/main/images/faces/face2.jpg" />
                                            <img class="folder__thumb" src="resources/main/images/faces/face3.jpg" />
                                          </div>
                                          <div class="folder__icon">
                                            <div class="folder__icon-img folder__icon-img--back">
                                              <svg class="folder__icon-svg"><use xlink:href="#icon-folderback"></use></svg>
                                            </div>
                                            <div class="folder__icon-img folder__icon-img--cover">
                                              <svg class="folder__icon-svg"><use xlink:href="#icon-foldercover"></use></svg>
                                              <svg class="folder__icon-svg folder__icon-svg--deco"></svg>
                                            </div>
                                          </div>
                                          <h3 class="folder__caption">Ardra</h3>
                                        </div>
                                      </div>					
                                    </div><!-- /grid-->
                                  </section>
                                </main>
                        </fieldset>
                        
                        
                        




                        
                    </div>
                </div>
            </div>
        </div>
        
        
    </section>


</div>

<script src="resources/main/js/anime.min.js"></script>
<script src="resources/main/js/charming.min.js"></script>
<script src="resources/main/js/main.js"></script>

<script type="text/javascript">
    document.addEventListener("DOMContentLoaded", function() {
      var tabs = document.querySelectorAll('.tabbed li');

      for (var i = 0, len = tabs.length; i < len; i++) {
        tabs[i].addEventListener("click", function() {
          if (this.classList.contains('active'))
            return;

          var parent = this.parentNode,
            innerTabs = parent.querySelectorAll('li');

          for (var index = 0, iLen = innerTabs.length; index < iLen; index++) {
            innerTabs[index].classList.remove('active');
          }    
          this.classList.add('active');
        });
      }    
      
    });
  </script>

  
  <script>
    (function() {
      
      new ArdraFx(document.querySelector('.content--ardra .folder--ardra'));
      
    })();
</script>





</body>
</html>