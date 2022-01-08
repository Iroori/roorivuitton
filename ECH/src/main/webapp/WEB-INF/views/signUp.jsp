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
</head>
<body>
    <div class="embox-pd-100">
        <div class="login_bg"></div>
        <div class="signUp">
            <p>E:Monitor</p>
            <h2>Sign-up</h2>
            
            <form  id="Ejoin"  class="signUp_box" method="post">
                <div class="signUp_id">
                    <h4>아이디</h4>
                    <input type="text" name="userId" placeholder="ID">
                </div>
                <div class="signUp_pw">
                    <h4>비밀번호 입력</h4>
                    <input type="password" name="userPwd" placeholder="Password">
                </div>
                <div class="signUp_pwCon">
                    <h4>비밀번호 확인</h4>
                    <input type="password"   placeholder="Password Confirmation">
                </div>
                <div class="signUp_email">
                    <h4>이메일</h4>
                    <input type="text" name="userEmail"  placeholder="Email Address">
                </div>
                <div class="signUp_name">
                    <h4>이름</h4>
                    <input type="text" name="userName" placeholder="Your Name">
                </div>
                <div class="signUp_birth">
                    <h4>생년월일 (8자리 입력)</h4>
                    <input type="text" name="userBirth" id="birth_box" placeholder="Date of Birth">
                    <label><input type="radio" name="userSex"  value="sex_m">남성</label>
                    <label><input type="radio" name="userSex"  value="sex_f">여성</label>
                </div>
                <div class="signUp_phone">
                    <h4>휴대폰</h4>
                    <input type="text" name="userPhone" placeholder="Phone Number">
                </div>
                <div class="signUp_modelkey">
                    <h4>모델 일련번호</h4>
                    <input type="text" name="modelNumber"  placeholder="Model Key Number">
                </div>
                <div class="singUp_submit">
                    <input onclick="goJoin()" type="submit" value="회원가입">
                </div>
               </form>
            </div>

        </div>
        
        <script type="text/javascript" src="resources/user/js/jquery-1.8.3.min.js"></script>
        <script>
        
        
       
        
        function goJoin(){
		
		var jData = $("#Ejoin").serialize();
		
		$.ajax({
			url : "userInsert.do",
			type : "post",
			data : jData,
			success : function(){
				alert("success");
				location.href = "/web/";
			},
			error : function(){
				alert("error!@!");
			}
	
		});
		
	
	}
        </script>
    
</body>
</html>