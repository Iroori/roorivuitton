<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- 들어가자 -->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Title -->
    <title>JMTBOX - Contents is ALL in JMTBOX</title>
    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">
    <!-- stylesheet연결 안했음!  -->
    <style>
        /* 검색창*/
    .search-container {
	    padding-top: 0px;
        margin-bottom: 2%;
    }
	    .search-title{
	    font-size: 10px;
	    font-weight:900;
	    text-align: center;
	    color:#000000;}

	    .search-input{
		position:relative;
		
		left:15%;
		width:66%;
		
		padding: 10px 10px 10px;
		margin-top: 25px;
		background-color: transparent;
        transition: transform 250ms ease-in-out;
        font-size: 20px;
        line-height: 18px;
        color: #575756;
        background-color: transparent;
        border-radius:50px;
        border: 1.5px solid #575756;
        
	    }
		.search-input::placeholder{
		text-algin:center;
		font-size:30px;
		}

        /* 영화 사진, 정보 */
        .section-padding-100 .movie-detail{

            position:relative;
            margin-left:15%;
        }
        .section-padding-100 .movie-detail .movie-img-container{
            position:relative;
            display: block;
            top:0;
            left: 0;
            width: 80%;
            height: 400px;
            overflow: hidden;
        }
        
        .section-padding-100 .movie-detail .movie-img-container .movie-img-area img {
            display: inline-block;
            min-width: 100%;
            height: auto;
            position:absolute;
            top:0;
            left: 0;
            z-index: 1;

        }
        .section-padding-100 .movie-detail .movie-img-container .movie-img-gradient{
            display: inline-block;
            min-width: 100%;
            height:100%;
            position:absolute;
            top:0;
            left: 0;
            background : linear-gradient(
                to bottom,
                rgba(20,20,20,0.3) 10%,
                rgba(20,20,20,0.40) 25%,
                rgba(20,20,20,0.7) 50%,
                rgba(20,20,20,0.95) 80%,
                rgba(20,20,20,1) 100%

            );
            z-index: 2;
        }
        .section-padding-100 .movie-detail .movie-detail-text{
            position : absolute;
            top:230px;
            left:3%;
            color:whitesmoke;
            z-index: 3;
        }
        .section-padding-100 .movie-detail .movie-img-container .movie-img-smallarea img{
            display:inline-block;
            max-width: 130px;
            width: auto;
            height: auto;
            position: absolute;
            bottom: 10%;
            left: 85%;
            border-radius:4%;
            border : 1px solid;
            border-image:linear-gradient(
                to right,
                rgba(20,20,20,0.3) 10%,
                rgba(20,20,20,0.40) 25%,
                rgba(20,20,20,0.7) 50%,
                rgba(20,20,20,0.95) 80%,
                rgba(20,20,20,1) 100%
            );

            box-shadow:  2px 2px 2px #252525;
            z-index: 4;
            
        }

        p{
            margin-bottom:0;
        }
       
    


    


    #whole{
      border-bottom: black solid 1px;
      width: 1100px;
      height: 600px;
      margin: 0 auto;
      position: relative;
      overflow: hidden;
      
    }
    #left{
      float: left;
      margin-top: 10%;
      margin-left: 5%;
    }
    #right{
      float: right;
      margin-top: 10%;
      margin-right: 20%;
      margin-left: 20%;
      
    }
    #video1{
      width: 150%;
    }
    #video2{
      width: 150%;
    }



    /*리뷰 */

    .section-padding-100 .movie-review{
        position:relative;
        margin-left:15%;
        
    }
    .section-padding-100 .movie-review-list-container{
        width:70%;
        height:30%;
        
       
    }
    .section-padding-100 .movie-review-list-container .movie-review-list{
        border:1px solid;
        margin-bottom:10px;
        
    }
    .section-padding-100 .movie-review-list-container .movie-review-list .user-info{
    
        margin-top:10px;
        padding-left:20px;
        padding-bottom:5px;
        
    }
    .section-padding-100 .movie-review-list-container .movie-review-list .user-info span#b{
    
        text-align: right;
    }
    .section-padding-100 .movie-review-list-container .movie-review-list .movie-rate{
        padding-left:20px;
        border-bottom:1px solid;
    }
    /*리뷰 내용*/
    .section-padding-100 .movie-review-list-container .movie-review-list .movie-review-contents-wrap .review-content{
        height:100px;
        border-bottom: 1px solid;
        padding-left:20px;    
    }
    
    .section-padding-100 .movie-review-list-container .movie-review-list .movie-review-contents-wrap .review-action-info-wrap{
    /* action 버튼 */
        padding-left:20px;
        padding-top:8px;
        padding-bottom:8px;
        text-align:center;
    }

    .section-padding-100 .movie-review-list-container .movie-review-list .movie-review-contents-wrap .review-action-info-wrap span{
        margin-right:30px;
    }

    /*월드컵 목록*/
    .section-padding-100 .movie-games-wrap{
        width:70%;
        height:200px;
        margin-left:15%;
    }
    .section-padding-100 .movie-games-list{
        position: relative;
        
    }
    .section-padding-100 .img-container{
        position:relative;
        width:20%;
        overflow:hidden;
        float:left;
        margin-right:20px;
        text-align: center;
    }
    img{
        position:relative;
        max-width: 100%;
    }
        
    
    /* 버튼 , 플랫폼*/
    .user-btn{
        width:1100px;
        margin-left: 15%;
        
    }
    .btn{
        position:relative;
        float:left;
        margin:2% 0% 3%;
        padding-right:10%;
        
    }

    #btn_head {
      min-width:100%;
      margin: 0 auto;
      position: absolute;
      overflow: hidden;
    }

    #btn_body {
      border-bottom: black solid 1px;
      min-width: 1100px;
      height: 200px;
      margin: 0 auto;
      position: relative;
      text-align: center;
    }

    .btn_cl {
      font-size: 20px;
      border: none;
      padding: 10px 40px;
      margin-left: 5%;
      margin-right: 5%;
      display: inline-block;
      border-radius: 20px;
      background-color: beige;
      box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    }

    .btn_cl:hover {
      background-color: rgba(143, 228, 247, 0.604);
    }

    /* 여기서부터 플랫폼 CSS*/

    #header {
      width: 1500px;
      justify-content: center;
      margin-top: 100px;
    }

    #body {
      border-bottom: black solid 1px;
      display : inline-block;
      min-width : 100%;
      height: 100%;
      margin: 0 auto;
      position: absolute;
      top : 500;

      
      overflow: hidden;
    }

    #inner {
      width: 800px;
      height: 200px;
      margin: 0 auto;
      position: relative;
      text-align: center;
      font-size: 20px;
    }

    .pic {

      margin-left: 5%;
      margin-right: 5%;
      display: inline-block;

    }

    .profile {
      border-radius: 20%;
    }

    ul {
      list-style: none;

    }
    </style>


</head>

<body>
    <!-- 메뉴 창 -->


    <!-- 검색창 -->
    <!--1) input>placeholder 안에 사용자가 검색한 값 그대로 입력 받아져야함-->
    
    <section class ="section-padding-100">
    	<div class ="search-container">
    		
    		<input class ="search-input" type="text" placeholder="제목">
    	</div>
    	
    </section>
    


    <!-- 영화정보 -->
    <!-- 링크 주소 넣는거 script인가..?-->
    <section class="section-padding-100">
        <div class="movie-detail">
            <div class="movie-img-container">
                <div class="movie-img-area">
                    <img class ="movie-img" src="a7.jpg" alt="Loading">
                </div>
                <div class ="movie-img-gradient"></div>
                
                <div class="movie-img-smallarea">
                    <img class="movie-smallimg" src="a7.jpg" alt="Loading"> 
                </div>
            </div>
            
            <!-- 이미지 위에 올라갈 text
                1) h1,p태그 안에 사용자가 검색한값 js로-->
            <div class="movie-detail-text">
                <h2 id ="">제목</h2>
                <p id ="">장르입력 </br>
                        #띵작 #재밌다 #오예</br>
                        월드컵지수</p>
            </div>

        </div>
    
    
    </section>
    
    <!-- 찜하기 좋아요 수-->
    <section>
        <div class="user-btn">
            <div class="btn">
                <span>👍 찜하기</span>
                <span>횟수</span>
            </div>
            <div class="btn">
                <span>👍 좋아요</span>
                <span>횟수</span>
            </div>
        </div>
    </section>
    
    <!-- 버튼 -->
    <section>
        <div id='btn_head'>
            <div id='btn_body'>
              <ul id='btn_ul'>
                <button id='watched' class='btn_cl'>봤어요!</button>
                <button id='choice' class='btn_cl'>찜하기</button>
                <button id='like' class='btn_cl'>좋아요</button>
              </ul>
            </div>
          </div>
    </section>
    
    <section>
        <!--여기서부터 플랫폼-->

        <div id='header'>
            <div id='body'>
                <div id='inner'>여기로 가면 볼 수 있어요
                    <ul>
                        <li class='pic'>
                            <a href='https://www.netflix.com/kr/' target=_blank>
                                <img class='profile' title='Newflix' src='https://images.justwatch.com/icon/207360008/s100'>
                            </a>
                        </li>
                        <li class='pic'>
                            <a href='https://watcha.com/home' target=_blank>
                                <img class='profile' title='watcha' src='https://www.justwatch.com/images/icon/2538290/s100'>
                            </a>
                        </li>
                        <li class='pic'>
                            <a href='https://www.wavve.com/' target=_blank>
                                <img class='profile' title='Wavve' src='https://www.justwatch.com/images/icon/155655742/s100'>
                            </a>
                        </li>
                        <li class='pic'>
                            <a href='https://play.google.com/store/games?hl=en&gl=KR' target=_blank>
                                <img class='profile' title='Google Play Movie'
                                    src='https://www.justwatch.com/images/icon/169478387/s100'>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>


    <!-- 예고편 , 리뷰 영상 -->
    <section>

        <div id='whole'>
          <div id='left'>
            <p id='movie-detail-font'>예고편 영상</p>
            <iframe id='video1' width="560" height="315" src="https://www.youtube.com/embed/XZ4UK31FpRw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
          </div>
    
    
          <div id='right'>
            <p id='movie-detail-font'>리뷰</p>
            <iframe id='video2' width="560" height="315" src="https://www.youtube.com/embed/w6xPRxV6ZMQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
          </div>
          
        </div>
       
        
      </section>

      <!-- 리뷰 -->
      <section class="section-padding-100">

        <div class="movie-review">
            <p class="movie-review-font">리뷰</p>
            
            <!--리뷰 입력-->
            
            <div class="movie-review-userwrite">
                <p>내가 쓴 리뷰</p>
                <form action="" >
                    <textarea name="" rows="7" cols="130" wrap="virtual">
                        짧게라도 좋아요. 작품에 대해 감상을 기록해보세요.
                    </textarea>
                    <input calss = "user-review-btn" type = "submit" value="리뷰입력">
                </form>
             </div>

             <!-- 리뷰 목록 -->

             <article class="movie-review-list-container">
                <p>모든 리뷰 </p>
                <div class="movie-review-list">
                    <div class= "user-info">
                        <span> usernick </span>
                        <span>　　　　　　　　　</span>
                        <span id="b">21-11-12(일자)</span>
                    </div>
                    <div class="movie-rate">
                        ❤ 3.0 
                    </div>
                    <div class="movie-review-contents-wrap">
                        <a href="">
                            <div class="review-content">
                                리뷰가져와야해! a태그는 사용자가 적은 리뷰 전체를 링크타고 갈수 있게! 
                            </div>
                        </a>
                        <div class="review-action-info-wrap">
                            <span>👍 좋아요</span> <span>📑 댓글달기</span> <span>💌 공유하기</span>
                        </div>
                    </div>
                    
                </div>
                <div class="movie-review-list">
                    <div class= "user-info">
                        <span> usernick </span>
                        <span>　　　　　　　　　</span>
                        <span id="b">21-11-12(일자)</span>
                    </div>
                    <div class="movie-rate">
                        ❤ 3.0 
                    </div>
                    <div class="movie-review-contents-wrap">
                        <a href="">
                            <div class="review-content">
                                리뷰가져와야해! a태그는 사용자가 적은 리뷰 전체를 링크타고 갈수 있게! 
                            </div>
                        </a>
                        <div class="review-action-info-wrap">
                            <span>👍 좋아요</span> <span>📑 댓글달기</span> <span>💌 공유하기</span>
                        </div>
                    </div>
                    
                </div>



             </article>
            
        </div>


      </section>

      <!-- 월드컵 목록 -->
      
      <section class="section-padding-100">
          <div class="movie-games-wrap"> 
            <div class="section-heading">
                <p>월드컵 목록</p>
            </div>
            <div class="movie-games-list">
                    <div class="img-container">
                        <img src="a7.jpg" alt="" />
                        <p>제목</p>
                    </div>
                    <div class="img-container">
                        <img src="a7.jpg" alt="" />
                        <p>제목</p>
                    </div>
                    <div class="img-container">
                        <img src="a7.jpg" alt="" />
                        <p>제목</p>
                    </div>
                    <div class="img-container">
                        <img src="a7.jpg" alt="" />
                        <p>제목</p>
                    </div>
                    
                    
                    
                    <!-- 더보기는 js로 구현!-->




            </div>
        </div>




      </section>


</body>
</html>

