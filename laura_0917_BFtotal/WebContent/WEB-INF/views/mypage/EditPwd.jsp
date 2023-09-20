<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../temp/header.jsp"%>
<link rel="stylesheet" href="<%=application.getContextPath() %>/resources/css/EditPwd.css">

<div class = "contentWrapper">
	<div class = "container">
		<div class = "profile">
			<div class = "profile-box">
				<div class ="profile-img">
					<a href = "<%=application.getContextPath()%>/mypage?email=${sessionScope.sessionID}"><img src="${rPath }/img/profile-img/profile_img.jpg"></a>
				</div>
				<div class = "profile_info">
					<div class ="profile_userName"><span>${sessionScope.sessionNNAME}</span><b>님</b></div>
					<div class = "profile_userEmail"><p>${vo.email }</p></div>
					<span class = "profile_custom">
						<p class = "profile_customType">개인회원</p> <!-- 개인회원인지 기업회원인지 변경 -->
						<p>·</p> 
						<p class = "profile_customGrade">등급</p> <!-- 등급 변경 -->
					</span>
				</div><!-- profile_info -->
				<hr class="Divider_divider__ToZaf Divider_horizontal__3W5eD Divider_lightBG__3bAAk Divider_spacing5__C3W8V Divider_caption2__3b6Dr MyWadizSupporterProject_accumulateDivider__3h-EB" style = "margin: 12px 18px;height: 1px;">
				<div class = "profileSide_bar">
					<ul class = "profileSide_bar_list">
						<li>
							<a href= "myDetailInfo?email=${sessionScope.sessionID}" class="active">
								<span>내 정보 확인 · 변경</span>
							</a>
						</li>
						<li>
							<a href= "editpwd">
								<span>비밀번호 설정</span>
							</a>
						</li>
						<li>
							<a href= "#">
								<span>회원 탈퇴</span>
							</a>
						</li>
					</ul><!-- profileSide_bar_list -->
				</div><!-- profileSide_bar -->
				<hr class="Divider_divider__ToZaf Divider_horizontal__3W5eD Divider_lightBG__3bAAk Divider_spacing5__C3W8V Divider_caption2__3b6Dr MyWadizSupporterProject_accumulateDivider__3h-EB" style = "margin: 12px 18px;height: 1px;">
				<div class = "login_method" style = "font-size: 12px;">
					<img src = "${rPath }/img/myInfo/img.png" style = "width:15px;">
					<span>네이버로 로그인 중</span>
				</div>
				<div class = "logout">
					<a href = "logout">
						<button type = "button">
							<span>로그아웃</span>
						</button>
					</a>
				</div><!-- logout -->
			</div><!-- profile-box -->
		</div><!-- profile -->
			<div class = "InfoDetailContent">	
				<div class = "contents-box" >
					<div class = "contents">
						<h4>비밀번호 재설정</h4>
							<form method="post" action="edit" autocomplete="off" id=pwdchkform>
								<input type="hidden" name="num" value="${vo.num }">
								<input type="hidden" name="email" value="${vo.email }">
									<div class = "content_list">
										<div class= "content_list_item">
											<a href = "#">
												<dl class = "profileImg">
													<dt>
														<div class ="profile-img">
															<img src="${rPath }/img/profile-img/profile_img.jpg"><!-- 이미지 연결해야 하는 부분  -->
														</div>
														
													</dt>
													<dd>
														<strong>${sessionScope.sessionNNAME}</strong><b>님</b>
													</dd>
												</dl>
											</a>
											<hr class="Divider_divider__ToZaf Divider_horizontal__3W5eD Divider_lightBG__3bAAk Divider_spacing5__C3W8V Divider_caption2__3b6Dr MyWadizSupporterProject_accumulateDivider__3h-EB">
											<a href = "#">
												<dl>
													<dt>
														<span>현재 비밀번호</span>
													</dt>
													<dd>
														<input type = "password" id = "pwd" name="pwd">
													</dd>
												</dl>
											</a>
											<hr class="Divider_divider__ToZaf Divider_horizontal__3W5eD Divider_lightBG__3bAAk Divider_spacing5__C3W8V Divider_caption2__3b6Dr MyWadizSupporterProject_accumulateDivider__3h-EB">
											<a href="#" style="display: flex; align-items: center;">
											  <dl id="emailInput">
											    <dt>
											      <span>변경할 비밀번호</span>
											    </dt>
											      <dd>
													<input type = "password" id = "pwd1" name="pwd">
												</dd>
											  </dl>
											</a>
											<hr class="Divider_divider__ToZaf Divider_horizontal__3W5eD Divider_lightBG__3bAAk Divider_spacing5__C3W8V Divider_caption2__3b6Dr MyWadizSupporterProject_accumulateDivider__3h-EB">	
											<a href = "#" style = "display: flex;align-items: center;">
												<dl id = "idInput">
													<dt>
														<span>변경할 비밀번호 확인</span>
													</dt>
													  <dd>
														<input type = "password" id = "pwd2" name="pwd">
													</dd>
												</dl>
											</a>
										</div><!-- content_list -->
									</div><!-- content_list_item -->
									<div class = "modi_btns">
							<button type="submit" class="button2"><span>수정</span></button>
						</div>
					</form>		
				</div><!-- contents -->
			</div><!-- contents-box -->
				<!-- AD -->
				<div class ="eventBanner-start">
					<div class = "eventBanner" style = "background-color: rgb(165, 229, 230); height:76px; margin:30px 0; border-radius: 8px;">
						<a href = "#">
							<div class="bannerInner" style="margin: 0 auto; width: 320px; height: 100%;">
    							<div class="banner-content" style="padding: 15px 14px 0 9px; width: 100%; height: 100%; box-sizing: border-box;">
							        <div class="banner-text" style="display: flex; align-items: center;">
							            <img src="${rPath}/img/myInfo/business-funding.jpg" alt="이미지" style="max-width: 100px; height: auto; margin-right: 10px;">
							            <div>
							                <p style="margin-bottom: 0; color: black;">LAURA 광고센터에서</p>
							                <b>펀딩 홍보를 시작해보세요</b>
							            </div>
							        </div>
							    </div>
							</div>
						</a>
					</div>
				</div> <!-- AD-end -->
				<!--  <div class="event_AD" style = "display:flex;">
					<img src = "${rPath }/img/myInfo/attend.jpg" style = "width:200px; hieght:100px;">
					<img src = "${rPath }/img/blog-img/A101.png" style = "width:200px; hieght:100px;">
				</div>-->
			</div><!-- InfoDetailContent -->
		</div><!-- container -->
	</div><!-- contentWrapper -->



<script>
<!-- 버튼 클릭 시 글씨 색 변경 기능 -->
//모든 링크와 해당 li 요소들을 가져옵니다.
const tabLinks = document.querySelectorAll('.profileSide_bar ul li a');
// 링크를 클릭할 때 실행될 함수
tabLinks.forEach((link, index) => {
    link.addEventListener('click', function(event) {
        // 모든 li 요소의 border-bottom 스타일을 초기화합니다.
    	tabLinks.forEach(link => {
            link.classList.remove('active');
        });

        link.classList.add('active');
    });
});

<!-- 닉네임 중복 체크 -->
$(function() {
	$('#nnameChkBtn').click(function(e) {
		alert("Test");
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
					$('#target2').css({"color":"#00c4c4" });
				} else {
					msg = "이미 사용중인 닉네임 입니다.";
					$('#target2').css("color","#fe5147");
				}
				$('#target2').html(msg);
				
			}
		});
	});
});


document.getElementById("nnameChkBtn").addEventListener("click", function() {
    var height = document.getElementById("nicknameInput");
    height.style.height = "40px";
});


 var editBtn = document.getElementById("editBtn");
 var saveBtn = document.getElementById("saveBtn");
 var emailDisplay = document.getElementById("emailDisplay");
 var emailInputField = document.getElementById("emailInputField");
 var emailDisplayWrapper = document.getElementById("emailDisplayWrapper");
 var emailEditWrapper = document.getElementById("emailEditWrapper");

 editBtn.addEventListener("click", function() {
   if (editBtn.textContent === "변경") {
     editBtn.textContent = "취소";
     saveBtn.style.display = "inline"; // 저장 버튼 표시
     emailDisplayWrapper.style.display = "none";
     emailEditWrapper.style.display = "block";
   } else {
     editBtn.textContent = "변경";
     saveBtn.style.display = "none"; // 저장 버튼 감춤
     emailDisplayWrapper.style.display = "block";
     emailEditWrapper.style.display = "none";
   }
 });

 saveBtn.addEventListener("click", function() {
   var newEmail = emailInputField.value; // 변경된 이메일 가져오기
   // 여기서 서버로 변경된 이메일을 전송하거나 저장하는 로직을 추가할 수 있습니다.
   emailDisplay.textContent = newEmail; // 화면에 변경된 이메일 표시
   editBtn.textContent = "변경"; // 버튼 텍스트 원래대로 변경
   saveBtn.style.display = "none"; // 저장 버튼 감춤
   emailDisplayWrapper.style.display = "block";
   emailEditWrapper.style.display = "none";
 });
 
 function test() {
	   var p1 = document.getElementById('password1').value;
	   var p2 = document.getElementById('password2').value;
	   if(p1.length < 8) {
	           alert('입력한 글자가 8글자 이상이어야 합니다.');
	           return false;
	       }
	       if( p1 != p2 ) {
	         alert("비밀번호불일치");
	         return false;
	       } else{
	         alert("비밀번호가 일치합니다");
	         return true;
	       }
	 }
 
</script>

<style>
.profileSide_bar ul li a.active{color:#00c4c4;}
</style>




























































<%@include file="../temp/footer.jsp"%>