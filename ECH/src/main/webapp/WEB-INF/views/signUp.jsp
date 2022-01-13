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
            <p>V:Monitor</p>
            <h2>Sign-up</h2>
            
            <form  id="Ejoin"  class="signUp_box" method="post">
                <div class="signUp_id">
                    <h4>아이디</h4>
                    <input type="text" id="id" name="user_id" placeholder="ID" required oninput = "checkId()">
                    <span class="id_ok">사용 가능한 아이디입니다.</span>
					<span class="id_already">누군가 이 아이디를 사용하고 있어요.</span>
                </div>
                <div class="signUp_pw">
                    <h4>비밀번호 입력</h4>
                    <input id = "pswd1" type="password" name="user_pwd" placeholder="Password">
                    <span class="error_next_box" id="pswd1Msg" style="display:none" aria-live="assertive"></span>
                </div>
                <div class="signUp_pwCon">
                    <h4>비밀번호 확인</h4>
                    <input id = "pswd2" type="password"   placeholder="Password Confirmation">
                    <span class="error_next_box" id="pswd2Msg" style="display:none" aria-live="assertive"></span>
                </div>
                <div class="signUp_email">
                    <h4>이메일</h4>
                    <input type="text" name="user_email"  placeholder="Email Address">
                </div>
                <div class="signUp_name">
                    <h4>이름</h4>
                    <input type="text" name="user_name" placeholder="Your Name">
                </div>
                <div class="signUp_birth">
                    <h4>생년월일 (8자리 입력)</h4>
                    <input type="text" name="user_birth" id="birth_box" placeholder="Date of Birth">
                    <label><input type="radio" name="user_sex"  value="sex_m">남성</label>
                    <label><input type="radio" name="user_sex"  value="sex_f">여성</label>
                </div>
                <div class="signUp_phone">
                    <h4>휴대폰</h4>
                    <input type="text" name="user_phone" placeholder="Phone Number">
                </div>
                <div class="signUp_modelkey">
                    <h4>사업자 번호</h4>
                    <input type="text" name="company_bno"  placeholder="Model Key Number">
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
        
        
        function checkId(){
	        var user_id = $('#id').val(); //id값이 "id"인 입력란의 값을 저장
	        $.ajax({
	            url:'uesrAjaxIdCheck', //Controller에서 인식할 주소
	            type:'post', //POST 방식으로 전달
	            data:{"user_id":user_id},
	            success:function(cnt){
	            	console.log(cnt)
	            
	            	if(cnt != 1){ //cnt가 1이 아니면(=0일 경우) -> 사용 가능한 아이디 
	                    $('.id_ok').css("display","inline-block"); 
	                    $('.id_already').css("display", "none");
	                } else { // cnt가 1일 경우 -> 이미 존재하는 아이디
	                    $('.id_already').css("display","inline-block");
	                    $('.id_ok').css("display", "none");
	                }
	            	
	            	
	            },
	            error:function(){
	                alert("에러입니다");
	            }
	        });
	    }
        
        </script>
    
</body>
</html>