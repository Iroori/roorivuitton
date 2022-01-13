<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
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
    <link rel="stylesheet" href="resources/main/css/main-style2.css">
    <style>
    	
    </style>
    
    
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
                	<c:if test="${!empty users}">
                    <div class="user-name">${users.userName}관리자님 반갑습니다</div>
                 	
                 	
                    <div class="user-info">
                        <div class="user-role">Manager</div>
                        <div class="dash">˙</div>
                        <div class="user-location">00 유치원</div>

                    </div>
                    <div class="btn logout">
                    	<form action="ELogout.do" method="get">                      
                        <button >logout</button>                      
                        </form>
                	</div>
                	
                	
                	</c:if>	
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
            <div class="wrap-main">
                <div class="main-cctv">
                    <div class="main-title">CCTV</div>
                    <div class="cctv-container">
                        <fieldset>
                            <legend class="cctv-title">새싹반</legend>
                            <!-- 
                            <video class="cctv-content" src="video/pexels-byron-sullivan-10672887.mp4" loop autoplay width="400px"></video>
                             -->
							<video  id="myVideo" width="400" height="300" style="border: 1px solid #ddd;"></video>
							<canvas id="myCanvas" width="160" height="140" style="border: 1px solid #ddd;"></canvas><br>
							
							<input type=button value="get Video" onclick="{getVideo()}">
							<input type=button value="get Pic" onclick="{takeSnapshot()}"><br>
							<input type=number id="myInterval"  value="3000">
							<input type=button value="Auto" onclick="{takeAuto()}">
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                        </fieldset>
                        <fieldset>
                            <legend class="cctv-title">병아리반</legend>
                            <!-- 
                            <video class="cctv-content" src="video/pexels-joseph-redfield-10662929.mp4"   width="400px"></video>
                             -->
                            <div class="section">
						      <video id="video-output" width="400px"></video>
						      <br />
						      <button id="start-btn">녹화 시작</button>
						      <button id="finish-btn">녹화 종료</button>
						    </div>
						    <div class="section">
						      <video id="recorded-video" controls width="400px"></video>
						      <br />
						      <button id="download-btn">다운로드</button>
						    </div>
                            
                            
                            
                        </fieldset>
                              <fieldset>                             
                            <figure>
                            <video class="cctv-content" src="video/pexels-byron-sullivan-10672887.mp4" loop autoplay width="400px"></video>
                            <figcaption>반1</figcaption>
                            </figure>

                        </fieldset>
                        
                        <fieldset>
                            <figure>
                                <video class="cctv-content" src="video/pexels-joseph-redfield-10662934.mp4"  width="400px"></video>
                                <figcaption>반2</figcaption>
                            </figure>
                            
                            
                        </fieldset>
                        <fieldset>
                            <figure>
                                <video class="cctv-content" src="video/pexels-joseph-redfield-10662936.mp4" width="400px"></video>
                                <figcaption>반3</figcaption>
                            </figure>
                          
                            
                        </fieldset>
                        <fieldset>
                            <figure>
                                <video class="cctv-content" src="video/pexels-kostas-exarhos-10654617.mp4"  width="400px"></video>
                                <figcaption>반4</figcaption>
                            </figure>
                            
                           
                        </fieldset>
                        <fieldset>
                            <figure>
                                <video class="cctv-content" src="video/pexels-mark-soetebier-10672177.mp4"  width="400px"></video>
                                <figcaption>반5</figcaption>
                            </figure>
                            
                            
                        </fieldset>
                        
                        
                    </div>
                </div>
            </div>
        </div>
        
        
    </section>


</div>


<script type="text/javascript" src="resources/main/js/jquery-3.6.0.js"></script>
<script>
var myVideoStream = document.getElementById('myVideo')     // make it a global variable
var myStoredInterval = 0

function getVideo(){
navigator.getMedia = navigator.getUserMedia || navigator.webkitGetUserMedia || navigator.mozGetUserMedia || navigator.msGetUserMedia;
navigator.getMedia({video: true, audio: false},
                   
  function(stream) {
    myVideoStream.srcObject = stream   
    myVideoStream.play();
}, 
                   
 function(error) {
   alert('webcam not working');
});
}

function takeSnapshot() {
 var myCanvasElement = document.getElementById('myCanvas');
 var myCTX = myCanvasElement.getContext('2d');
 myCTX.drawImage(myVideoStream, 0, 0, myCanvasElement.width, myCanvasElement.height);
}

function takeAuto() {
  takeSnapshot() // get snapshot right away then wait and repeat
  clearInterval(myStoredInterval)
  myStoredInterval = setInterval(function(){                                                                                         
     takeSnapshot()
 }, document.getElementById('myInterval').value);        
}



</script>



 <script>
      const videoOutput = document.getElementById('video-output');
      const startBtn = document.getElementById('start-btn');
      const downloadBtn = document.getElementById('download-btn');
      const finishBtn = document.getElementById('finish-btn');
      const recordedVideo = document.getElementById('recorded-video');

      let mediaStream = null;
      let mediaRecorder = null;
      let recordedMediaURL = null;

      // 유저의 카메라로 부터 입력을 사용할 수 있도록 요청
      navigator.mediaDevices
        .getUserMedia({ video: true })
        .then(function (newMediaStream) {
          mediaStream = newMediaStream;

          // 카메라의 입력을 실시간으로 비디오 태그에서 확인
          videoOutput.srcObject = mediaStream;
          videoOutput.onloadedmetadata = function (e) {
            videoOutput.play();
          };
        });

      // 녹화 시작 버튼 클릭 시 빌생하는 이벤트 핸들러 등록
      startBtn.addEventListener('click', function () {
        let recordedChunks = [];
        // 1.MediaStream을 매개변수로 MediaRecorder 생성자를 호출
        mediaRecorder = new MediaRecorder(mediaStream, {
          mimeType: 'video/webm; codecs=vp9',
        });

        // 2. 전달받는 데이터를 처리하는 이벤트 핸들러 등록
        mediaRecorder.ondataavailable = function (event) {
          if (event.data && event.data.size > 0) {
            console.log('ondataavailable');
            recordedChunks.push(event.data);
          }
        };

        // 3. 녹화 중지 이벤트 핸들러 등록
        mediaRecorder.onstop = function () {
          // createObjectURL로 생성한 url을 사용하지 않으면 revokeObjectURL 함수로 지워줘야합니다.
          // 그렇지 않으면 메모리 누수 문제가 발생합니다.
          if (recordedMediaURL) {
            URL.revokeObjectURL(recordedMediaURL);
          }

          const blob = new Blob(recordedChunks, { type: 'video/webm;' });
          recordedMediaURL = URL.createObjectURL(blob);
          recordedVideo.src = recordedMediaURL;
        };

        mediaRecorder.start();
      });

      // 녹화 종료 버튼 클릭 시 빌생하는 이벤트 핸들러 등록
      finishBtn.addEventListener('click', function () {
        if (mediaRecorder) {
          // 5. 녹화 중지
          mediaRecorder.stop();
        }
      });

      // 다운로드 버튼 클릭 시 발생하는 이벤트 핸들러 등록
      downloadBtn.addEventListener('click', function () {
        console.log('recordedMediaURL : ', recordedMediaURL);
        if (recordedMediaURL) {
          const link = document.createElement('a');
          document.body.appendChild(link);
          link.href = recordedMediaURL;
          link.download = 'video.webm';
          link.click();
          document.body.removeChild(link);
        }
      });
    </script>






</body>
</html>