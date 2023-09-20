<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@include file="../temp/header.jsp" %>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/7b2a602777.js" crossorigin="anonymous"></script>

<!-- 부트스트랩 -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    
<link rel="stylesheet" href="${rPath}/css/join.css">
<script src ="${rPath}/js/ajaxDemo.js"></script>

   <div style="text-align: center;">
   		<h1 style="text-align: center;">회원 정보 수정</h1>
	
	<form method="post" action="infoupdate" autocomplete="off" id=editform>
			<input type="hidden" name="num" value="${sessionScope.sessionNO }">

			<div class="row mb-3">
				<label for="email" class="col-sm-2 col-form-label">아이디(이메일) : </label>
				<div class="infogroup">
				<input type="text" name="email" id="email" value="${vo.email}" readonly="readonly">
				</div>
			</div>
			
			<div class="row mb-3">
				<label for="editpwdBtn" class="col-sm-2 col-form-label">비밀번호 변경 : </label>
				<button type="button" class="btn btn-primary" id="editpwdBtn" onclick="location='pwdedit'">비밀번호 변경하기</button>
			</div>
			
			<div class="row">
				<label for="name" class="col-sm-2 col-form-label">이름 : </label>
				<div class="infogroup">
				<input type="text" name="name" id="name" value="${vo.name}" readonly="readonly"><br>
				<a style="color:gray; font-size: 8px;">※ 개명하신 경우 본인인증 후 이름변경이 가능합니다.</a> <br>
				</div> 
			</div>
			<div class="row mb-3">
				<label for="nickname" class="col-sm-2 col-form-label">닉네임 : </label>
				<div class="col-sm-2">
					<input type="text" name="nickname" class="form-control" id="nickname" value="${vo.nickname}">
					<button type="button" class="btn btn-primary" id="nnameChkBtn">중복체크</button>
					<span id="target2"></span>
				</div>
			</div>
			<div class="row mb-3">
				<label for="tel" class="col-sm-2 col-form-label">전화번호</label>
				<div class="col-sm-2">
					<input type="tel" name="tel" class="form-control" id="tel" value="${vo.tel}">
				</div>
			</div>
			<div class="row mb-3">
				<label for="memgender" class="col-sm-2 col-form-label">성별 : </label>
				<div class="col-sm-2">
					<input type="text" name="memgender" class="form-control" id="memgender" value="${vo.memgender}">
					<!-- <div class = "radio-box">
		                	<input type="radio" name="memgender" id="memgenderW" value = "여자">여자
		                	<input type="radio" name="memgender" id="memgenderM" value = "남자">남자
		                </div> -->
				</div>
			</div>
			<div class="row mb-3">
				<label for="birthday" class="col-sm-2 col-form-label">생년월일 : </label>
				<div class="col-sm-2">
					<input type="text" name="birthday" class="form-control" id="birthday" value="${vo.birthday}" placeholder="생년월일('-'제외 8자)" readonly="readonly">
				</div>
				<%-- <div class = "input-box">
		            <input type="date" name="birthday" id="birthday" value="${vo.birthday} style =" border-radius: 4px; border: 1px solid #a4a4a4; text-indent: 7px;">
		        </div> --%>
			</div>
			
			<button type="submit" class="btn btn-warning">수정</button>
			<a href="<%=application.getContextPath()%>/mypage?email=${sessionScope.sessionID}" class="btn btn-sm btn-danger">취소</a>
			
		</form>
	</div>
	
	<script>
	/*닉네임 중복확인(박원빈0822 수정)*/
	$(function() {
		$('#nnameChkBtn').click(function(e) {
			//alert("Test");
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
						msg = "사용 가능한 닉네임 입니다";
						$('#target2').css({"backgroundColor":"red", "color":"blue" });
					} else {
						msg = "이미 사용중인 닉네임 입니다.!";
						
						$('#target2').css("backgroundColor","red");
						$('#target2').css("color","white");
					}
					$('#target2').html(msg);
					
				}
			});
		});
	});
	

	</script>
	
    <%@include file="../temp/footer.jsp" %>