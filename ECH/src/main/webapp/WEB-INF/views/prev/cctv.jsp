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
                        CCTV
                        <select id="category" class="select">
                            <option value="b1">새싹반</option>
                            <option value="b2">병아리반</option>
                            <option value="b3">반2</option>
                            <option value="b4">반3</option>
                                                
                          </select>
                    
                    </div>
                    
                    <div class="cctv-container">
                        <fieldset id="b1">
                            <legend class="cctv-title">새싹반</legend>
                            
                            <video class="cctv-content" src="video/pexels-mark-soetebier-10672177.mp4" loop autoplay width="1200px" height="590px"></video>
                        </fieldset >
                        <fieldset id="b2" style="display:none">
                            <legend class="cctv-title">병아리반</legend>
                            
                            <video class="cctv-content" src="video/pexels-mark-soetebier-10672177.mp4" loop autoplay width="1200px" height="590px"></video>
                        </fieldset>
                        <fieldset id="b3" style="display:none">
                            <legend class="cctv-title">반2</legend>
                            
                            <video class="cctv-content" src="video/pexels-mark-soetebier-10672177.mp4" loop autoplay width="1200px" height="590px"></video>
                        </fieldset>
                        <fieldset id="b4" style="display:none">
                            <legend class="cctv-title">반3</legend>
                            
                            <video class="cctv-content" src="video/pexels-mark-soetebier-10672177.mp4" loop autoplay width="1200px" height="590px"></video>
                        </fieldset>
                      
                      
                    </div>
                </div>
            </div>
        </div>
        
        
    </section>


</div>

<script type="text/javascript" src="resources/main/js/jquery-3.6.0.js"></script>
<script>


$(document).ready(function(){
	$('#category').on('change',function(){
		if(this.value == 'b1'){
			$("#"+this.value+"").css("display","block")
			$('#b2').css("display", "none");
			$('#b3').css("display", "none");
			$('#b4').css("display", "none");
			$('#b5').css("display", "none");
			$('#b6').css("display", "none");	
			alert(this.value);
		}else if(this.value == 'b2'){
			$("#"+this.value+"").css("display","block")
			$('#b1').css("display", "none");
			$('#b3').css("display", "none");
			$('#b4').css("display", "none");
			$('#b5').css("display", "none");
			$('#b6').css("display", "none");
			alert(this.value);
		}else if(this.value == 'b3'){
			$("#"+this.value+"").css("display","block")
			$('#b1').css("display", "none");
			$('#b2').css("display", "none");
			$('#b4').css("display", "none");
			$('#b5').css("display", "none");
			$('#b6').css("display", "none");
			alert(this.value);
		}else if(this.value == 'b4'){
			$("#"+this.value+"").css("display","block")
			$('#b1').css("display", "none");
			$('#b2').css("display", "none");
			$('#b3').css("display", "none");
			$('#b5').css("display", "none");
			$('#b6').css("display", "none");
			alert(this.value);
		}
		
		
		
	});
});


</script>










</body>
</html>