<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@include file="../temp/memberHead.jsp" %>
<link rel="stylesheet" href="<%=application.getContextPath() %>/resources/css/joinForm.css">

<div class="join-wrap">
        <div class="join_in">
        	<form action="joinComplete" method="post" enctype="multipart/form-data" id="loginInfo" autocomplete="on">
	           	<input type="hidden" name="reip" value="<%=request.getRemoteAddr()%>">
	           	<h2 style = "">회원가입</h2>
	           	
	           	<!-- Join Form -->
	           	<div class = "basic-info" style = "margin:70px auto;">
		           	<h5 style = "font-weight: bold;">기본 정보 입력</h5>
		           	
		           	<!-- email 체크 -->
		            <div class="join_email mb20">
			            <div class = "text-box">
			            	<span>이메일</span>
			             </div>	
		             <div class = "input-box">
		                <input type="text" id = "email-box" name="email" id="email" placeholder = "이메일 계정" style = "">
		                <button type="button" class="button" id="emailChkBtn">중복체크</button>
		                <br>
						<span id="target"></span>
							<div id="messageBox" class="message-box">
							  <p id="errorMessage" class="error-message"></p>
							</div>
						</div>
		            </div>
		           
		            <!-- pwd 체크 -->
		            <div class="join_pw mb20">
			            <div class = "text-box">
			            	<span>비밀번호</span>
			             </div>	
			            <div class = "input-box" style = "">
			                <input type="password" name="pwd" id="pwd" placeholder="비밀번호 입력" style = "">
			                
			                <input type="password" name="pwd2" id="pwd2" placeholder="비밀번호 확인" style = ""> 
			                
			             </div>
			             <span id = "passwordErrorMessage2"></span>
			             <span id = "passwordErrorMessage"></span>
			             
		            </div>
	            </div> 
	            
	            
	         
	            
	            <div class = "personal-info">
		            <h5 style = "font-weight: bold;">개인 정보 입력</h5>
		          
		           	<!-- name 체크 -->
		            <div class="join_name mb20">
		            	<div class = "text-box">
			            	<span>이름</span>
			             </div>	
			             <div class = "input-box">
			                <input type="text" name="name" id="name" placeholder="이름 입력" style = "">
		                </div>
		            </div>
		            
		            <!-- nickname 체크 -->
		             <div class="join_nname mb20">
			             <div class = "text-box">
				           <span>닉네임</span>
				         </div>
						<div class = "input-box">
			                <input type="text" name="nickname" id="nickname" placeholder="닉네임 입력" style = "text-indent: 7px; border: 1px solid #a4a4a4; border-radius: 4px;">
			                <button type="button" class="button" id="nnameChkBtn">중복체크</button>
			                <br>
			            	<span id="target2"></span>
		            	</div>
		            </div>
		            
		            <!-- img 체크 -->
		            <div class="join_img mb20">
		               <div class="group-img">
		               	
		                   <span style = "color: red; font-size: 13px; margin-right: 5px;">* (선택)</span>
		                   <span>프로필 이미지 등록</span>
		                   <input type="hidden" name="profilepic" id="profilepic">
						   <input type="file" class="form-control" id="prfile" name="prfile">
		               </div>
		              <div class="group">
		                   <span class="highlight"></span>
		                   <span class="bar"></span>
		                   <img src="${rPath}/img/profile-img/profile.png" id="imgx" style="width: 230px; border: dotted 1px;">
		              </div>
		            </div>
		            
		             <!-- birth 체크 -->
		            <div class = "join_birth mb20">
		            	<div class = "text-box">
		            		<span>생년월일</span>
		            	</div>
		            	<div class = "input-box">
		            		<input type="date" name="birthday" id="birthday" style =" border-radius: 4px; border: 1px solid #a4a4a4; text-indent: 7px;">
		            	</div>
		            </div>
		            
		             <!-- gender 체크 -->
		             <div class="join_gender mb20">
		             	<div class = "text-box">
		             		<span>성별을 선택해주세요</span>
		             	</div>
		             	<div class = "radio-box">
		                	<input type="radio" name="memgender" id="memgenderW" value = "여자">여자
		                	<input type="radio" name="memgender" id="memgenderM" value = "남자">남자
		                </div>
		            </div>
	
		            
		            <!-- tel 체크 -->
		            <div class="join_tel mb20">
		            	<div class = "text-box">
		            		<span>핸드폰 번호</span>
		            	</div>
		            	<div class = "input-box">
			            	<input type="tel" name="tel" id="tel" placeholder="전화번호 입력" style = "text-indent: 7px; border: 1px solid #a4a4a4; border-radius: 4px;">
			            	<div id="telErrorMessage" style="color: #fe5147; font-size: 13px; display: none;">'-'을 제외한 숫자만 입력해주세요.</div>
			            	<button type="button" class="button" id="telChkBtn">인증하기</button>
			            	 <br>
			            	<span id="target3"></span>
		            	</div>
		            </div>
		            
		            <!-- 회원가입 시 기본 포인트 300 -->
		            <div class="join_point mb20">
			             <div class = "input-box">
			                <input type="hidden" name="mempoint" id="mempoint" value="300" >
		                </div>
		            </div>
	            </div>
	            
	            
	            <!-- 가입 버튼 -->
	            <div class="submit">
	              <input type="submit" class = "submit-button" value="가입">
	            </div>
	            <!--  -->
	            <div class="to_join" style = "text-indent: 67px; font-weight: bold; margin-top: 10px;">
	                <a href="loginForm">이미 라우라 회원이신가요?</a>
	            </div>
             </form>
        </div>
    </div>
<script>

	
//-----------------------------email check--------------------------------------------
	window.onload = function() {
    var emailInput = document.getElementById("email");
    var emailChkBtn = document.getElementById("emailChkBtn");
    var errorMessage = document.getElementById("target");
    var errorMsgBox = document.getElementById("messageBox");
    var emailInput = document.getElementById("email-box");
    
    
    emailChkBtn.addEventListener("click", function(e) {
        e.preventDefault();

        var emailValue = emailInput.value;
        if (!isValidEmail(emailValue)) {
            errorMessage.textContent = "올바른 이메일 형식이 아닙니다.";
            errorMessage.style.fontSize = "13px";
            errorMessage.style.color = "#fe5147";
            messageBox.textContent = "'laura@laura.com' 형식에 맞게 다시 입력해주세요!";
            messageBox.style.fontSize = "13px";
            messageBox.style.display = "block"; // 메시지 박스 보이도록 설정
            messageBox.style.color = "#fe5147";
         	// 오류 발생 시, 테두리 스타일을 빨간색으로 변경
            emailInput.style.borderColor = "#fe5147";
            
        } else {
            errorMessage.textContent = "";
            messageBox.style.display = "none"; // 메시지 박스 감추도록 설정
            checkEmailAvailability(emailValue);
         	// 오류가 아닐 경우, 테두리 스타일 초기화
            emailInput.style.borderColor = "";
        }
    });
 
    function isValidEmail(email) {
        var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
        return emailPattern.test(email);
    }

    function checkEmailAvailability(email) {
        var xhr = new XMLHttpRequest();
        var param = "email=" + email;

        xhr.onreadystatechange = function() {
            if (xhr.readyState === 4) {
                if (xhr.status === 200) {
                    var idCnt = parseInt(xhr.responseText);
                    var msg = "";

                    if (idCnt === 0) {
                        msg = "사용 가능한 이메일 주소 입니다.";
                        errorMessage.style.color = '#018945';
                        errorMessage.style.fontSize = "13px";
                    } else {
                        msg = "이미 사용 중인 이메일 주소 입니다.";
                        errorMessage.style.color = '#fe5147';
                        errorMessage.style.fontSize = "13px";
                        
                    }
                    errorMessage.textContent = msg;
                }
            }
        };

        xhr.open("GET", "<%=application.getContextPath()%>/idcheck?" + param, true);
        xhr.send();
    }
};


	
//-----------------------------password check--------------------------------------------
	function validatePassword() {
    var pwd = document.getElementById("pwd");
    var pwd2 = document.getElementById("pwd2");
    var passwordErrorMessage = document.getElementById("passwordErrorMessage");
    var passwordErrorMessage2 = document.getElementById("passwordErrorMessage2");
    
    var pwdValue = pwd.value;
    var pwd2Value = pwd2.value;

    if (pwdValue.length >= 8 && pwd2Value.length >= 8) {
        pwd.setCustomValidity("");
        pwd.style.borderColor = "";
        pwd2.style.borderColor = "";
        pwd2.setCustomValidity("");
        // 오류가 없을 때 오류 메시지 숨김
        passwordErrorMessage.style.display = "none";
        passwordErrorMessage2.style.display = "none";
    } else {
    	pwd.setCustomValidity("비밀번호는 8자리 이상이어야 합니다.");
    	passwordErrorMessage2.textContent = "비밀번호는 8자리 이상이어야 합니다.";
    	passwordErrorMessage2.style.color = "#fe5147";
    	passwordErrorMessage2.style.fontSize = "13px";
        passwordErrorMessage2.style.display = "block";
        // 오류가 발생 시 테두리 스타일 및 오류 메시지 표시 설정
        pwd.style.borderColor = "#fe5147";
        pwd2.style.borderColor = "#fe5147";
        
    }

    if (pwdValue !== "" && pwdValue === pwd2Value) {
        pwd2.setCustomValidity("");
        pwd2.style.borderColor = "";

        // 오류가 없을 때 오류 메시지 숨김
        passwordErrorMessage.style.display = "none";
    } else {
       
        // 오류가 발생 시 테두리 스타일 및 오류 메시지 표시 설정
         pwd.style.borderColor = "#fe5147";
        pwd2.style.borderColor = "#fe5147";

        // 오류 메시지 생성 및 표시
        passwordErrorMessage.textContent = "비밀번호가 맞지 않습니다. 다시 확인해주세요.";
        passwordErrorMessage.style.color = "#fe5147";
        passwordErrorMessage.style.fontSize = "13px";
        passwordErrorMessage.style.display = "block";
    }
}

var pwd = document.getElementById("pwd");
var pwd2 = document.getElementById("pwd2");

pwd.oninput = validatePassword;
pwd2.oninput = validatePassword;
	 
	 
//-----------------------------nickname check--------------------------------------------
	$(function() {
		$('#nnameChkBtn').click(function(e) {
			e.preventDefault();
			let nnamev = $('#nickname').val();
			
			//Ajax 통신의 캐시 기능을 삭제
			$.ajaxSetup({
				cache:false
			});
			//Ajax 처리
			let path = "<%=application.getContextPath()%>/nickcheck?nickname="+nnamev;
			$.ajax({
				url:path,
				success:function(resData){ //callbac 함수인 xhr.responseText 합친 개념
					let idCnt = parseInt(resData);
					let msg = "";
					if (idCnt === 0) {
						msg = "사용 가능한 닉네임 입니다.";
						$('#target2').css({"color":"#005fbd" });
						$('#target2').css("font-size","13px");
					} else {
						msg = "이미 사용 중인 닉네임 입니다.";
						
						$('#target2').css("font-size","13px");
						$('#target2').css("color","#fe5147");
					}
					$('#target2').html(msg);
					
				}
			});
		});
	});


//-----------------------------tel check--------------------------------------------	
	$(function() {
		$('#telChkBtn').click(function(e) {
			e.preventDefault();
			let telv = $('#tel').val();
			
			//Ajax 통신의 캐시 기능을 삭제
			$.ajaxSetup({
				cache:false
			});
			//Ajax 처리
			let path = "<%=application.getContextPath()%>/telcheck?tel="+telv;
			$.ajax({
				url:path,
				success:function(resData){ //callbac 함수인 xhr.responseText 합친 개념
					let idCnt = parseInt(resData);
					let msg = "";
					if (idCnt === 0) {
						msg = "인증완료!";
						$('#target3').css("font-size","13px");
						$('#target3').css({"color":"#005fbd"});
						
					} else {
						msg = "이미 존재하는 번호 입니다.";
						$('#target3').css("font-size","13px");
						$('#target3').css("color","#fe5147");
					}
					$('#target3').html(msg);
					
				}
			});
		});
	});
	
	
//-----------------------------tel 막대기 있을 경우  check--------------------------------------------	
	var telInput = document.getElementById("tel");
	var telErrorMessage = document.getElementById("telErrorMessage");

	telInput.addEventListener("input", function() {
	    var inputValue = telInput.value;
	    var numericValue = inputValue.replace(/-/g, ''); // '-' 제거한 숫자만 추출
	    
	    if (inputValue !== numericValue) {
	        telErrorMessage.style.display = "block"; // 오류 메시지 표시
	        telErrorMessage.style.borderColor = "#fe5147";
	    } else {
	        telErrorMessage.style.display = "none"; // 오류 메시지 숨김
	        telErrorMessage.style.borderColor = "";
	    }
	});
	
	

//-----------------------------imgfile check--------------------------------------------	
	// 이미지 미리보기 함수 => javascript I/O 기능을 활용
	function readURL(input){
	   // 	input type="file" 의 주소를 가져온다.
	   if(input.files && input.files[0]){
		// 자바스크립트 I/O 
		   var reader = new FileReader();
		// 리스너 
		reader.onload = function(e){
			//console.log("이벤트 발생:"+e.target.result);
			// <img src>선택자 , attr("속성명","값") -><img src="">
			$('#imgx').attr('src', e.target.result); // 이미지를 바이너리로 전달 
		}
		reader.readAsDataURL(input.files[0]);
	   }
	}
	//jQuery 문법 - 축약형 
	$(function () {
		 //jQuery 선택자
		// 대상선택자에서 변화를 감지하는 이벤트 : change()
		//#prfile : 파일업로드 속성을 선택자
		//$('선택자')
		$('#prfile').change(function() {
			// input type의 value 속성의 값 => C:\fakepath\c11.jpg
			//console.log($(this).val());
			if($(this).val().length > 0){
				readURL(this);
			}else{
				console.log("이미지 없음");
			}
		})
	})


	
	
</script>


    <%@include file="../temp/footer.jsp" %>