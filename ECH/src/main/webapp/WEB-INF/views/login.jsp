<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="resources/main/css/login.css">
    <!-- 로그인 배경 이미지 -->
    <style media="screen">
        
    </style>
</head>

<body>
    <div class="embox-pd-100">
        <div class="login_bg"></div>
        <div class="login">
            <p>E:Monitor</p>
            <h2>LOGIN</h2>            
           <a href="signUp">회원가입</a>
            
            <div class="login_wrap"></div>
            <form class="login_box" action="ELogin.do" method="post">
                <div class="login_id">
                    <h4>ID</h4>
                    <input type="text" name="userId"  placeholder="ID">
                </div>
                <div class="login_pw">
                    <h4>PW</h4>
                    <input type="password" name="userPwd" placeholder="Password">
                </div>

                <div class="submit">
                    <input type="submit" value="login">
                </div>
                <a href="signUp">Dashboard</a>  
                <a href="peoplecount">peoplecount</a>              
            </form>

        </div>

    </div>
</body>
</html>