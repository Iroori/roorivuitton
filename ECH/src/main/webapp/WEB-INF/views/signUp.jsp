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
                    <input type="text" id="id" name="userId" placeholder="ID" required oninput = "checkId()">
                    <span class="id_ok">사용 가능한 아이디입니다.</span>
					<span class="id_already">누군가 이 아이디를 사용하고 있어요.</span>
                </div>
                <div class="signUp_pw">
                    <h4>비밀번호 입력</h4>
                    <input id = "pswd1" type="password" name="userPwd" placeholder="Password">
                    <span class="error_next_box" id="pswd1Msg" style="display:none" aria-live="assertive"></span>
                </div>
                <div class="signUp_pwCon">
                    <h4>비밀번호 확인</h4>
                    <input id = "pswd2" type="password"   placeholder="Password Confirmation">
                    <span class="error_next_box" id="pswd2Msg" style="display:none" aria-live="assertive"></span>
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
        
        
        function checkId(){
	        var userId = $('#id').val(); //id값이 "id"인 입력란의 값을 저장
	        $.ajax({
	            url:'uesrAjaxIdCheck', //Controller에서 인식할 주소
	            type:'post', //POST 방식으로 전달
	            data:{"userId":userId},
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
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        $("#pswd2").blur(function() {
            checkPswd2();
        })
        
        
        
         function checkPswd1() {
        if(pwFlag) return true;

        var id = $("#id").val();
        var pw = $("#pswd1").val();        
        var oMsg = $("#pswd1Msg");
        

        if (pw == "") {
            showErrorMsg(oMsg,"필수 정보입니다.");
            setFocusToInputObject(oInput);
            return false;
        }
        
        
        function checkPswd2() {
            var pswd1 = $("#pswd1");
            var pswd2 = $("#pswd2");
            var oMsg = $("#pswd2Msg");
           

            if (pswd2.val() == "") {
                showPasswd2ImgByDiff(oImg, false);
                showErrorMsg(oMsg,"필수 정보입니다.");
                oBlind.html("설정하려는 비밀번호가 맞는지 확인하기 위해 다시 입력 해주세요.");
                
                return false;
            }
            if (pswd1.val() != pswd2.val()) {
                showPasswd2ImgByDiff(oImg, false);
                showErrorMsg(oMsg,"비밀번호가 일치하지 않습니다.");
                oBlind.html("설정하려는 비밀번호가 맞는지 확인하기 위해 다시 입력 해주세요.");
                
                return false;
            } else {
                showPasswd2ImgByDiff(oImg, true);
                oBlind.html("일치합니다");
                hideMsg(oMsg);
                return true;
            }

            return true;
        }
        
        
        
        
        
        </script>
    
</body>
</html>