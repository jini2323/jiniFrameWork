<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 게시판댓글 페이징처리용 -->
<c:set var="pageurl" value="?partynum=${pvo.partynum}&cPage"/> 



<tr>
	<th colspan="9" style="text-align: center;">
		<ul class="pagination" style="margin: 10px auto 20px;justify-content: center;">
			<%-- 이전페이지 --%>
			<c:choose>
				<c:when test="${startPage <= page.pagePerBlock }">
				<li class="page-item disabled"><a class="page-link" href="#" >이전</a></li>
				</c:when>
				<c:otherwise>
				
					<li class="page-item active">
					<a class="page-link" href="${pageurl}=${startPage -1}">이전</a>
					</li>
				</c:otherwise>
			</c:choose>
			
			<%--nowPage 에 해당이 되지 않으면 링크를 걸어서 페이지 메뉴  --%>
			<c:forEach varStatus="i" begin="${startPage}" end="${endPage}">
				<c:choose>
					<c:when test="${i.index == page.nowPage }"><!-- 현재페이지다 -->
						<li class="page-item active">
						<a class="page-link" href="#" style = "background-color: #00c4c4; border:1px solid #dee2e6;">
						${i.index }
						</a>
						</li>
					</c:when>
					<c:otherwise>
						<li class="page-item">
						<a class="page-link" id="page_link" href="${pageurl }=${i.index }" data-page="${i.index}">[${i.index }]</a>
						</li>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<%-- 다음페이지 --%>
			<c:choose>
				<c:when test="${endPage >= page.totalPage }">
				<li class="page-item"><a class="page-link" href="#" style = "color: #00c4c4">
				다음
				</a></li>
				</c:when>
				<c:otherwise>
					<li class="page-item active">
					<a href="${pageurl }=${endPage + 1 }" style = "color: #00c4c4"> 다음 </a></li>
				</c:otherwise>
			</c:choose>
		</ul>
	</th>
</tr>

<script>
// 비동기식처리가 안되는 버전 동기식
    var page_links = document.querySelectorAll("#page_link"); // 모든 페이지 링크를 선택
	
    page_links.forEach(function (page_link) {
        page_link.addEventListener("click", function (event) {
            event.preventDefault(); // 기본 동작(링크 클릭)을 막음
            var xhr = new XMLHttpRequest(); // 요청을 생성
            var data = {};
            console.log(page_link);
            data.partynum = parseInt("<c:out value='${pvo.partynum}'/>");
            data.cPage = parseInt(page_link.getAttribute("data-index")); // data-index 속성을 가져옴
			console.log(data.partynum);
			console.log(data.cPage);
            var contextPath = "${pageContext.request.contextPath}";
            var url = contextPath + "/partyDetail" + "?partynum=" + data.partynum + "&cPage=" + data.cPage;
			console.log(url)
            xhr.onreadystatechange = function () {
                if (xhr.readyState === 4 && xhr.status === 200) {
                	// 서버로부터의 응답을 처리하는 코드
                	var response = xhr.responseText;
                    console.log("ajax 확인");
                    //주소를 넘겨줌
                    window.location.href = url;
                }
            };

            xhr.open("GET", url, true); // 요청을 설정
            xhr.send(); // 요청을 보냄
        });
    });
    /*
    var pageLinks = document.querySelectorAll(".page-link");
    pageLinks.forEach(function(pageLink) {
        pageLink.addEventListener("click", function(event) {
            event.preventDefault(); // 기본 동작(링크 이동) 방지

            // 페이지 번호를 가져와서 URL 파라미터 변경  id="content"
            var newPage = parseInt(pageLink.getAttribute("data-page"));
            var newURL = window.location.href.replace(/[\?&]cPage=\d+/, "") + "&cPage=" + newPage;
			console.log(typeof newPage);
			console.log(newURL);
            // AJAX 요청 보내기
            var xhr = new XMLHttpRequest();
            xhr.onreadystatechange = function() {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    // 서버 응답을 처리하여 페이지 업데이트
                    var response = xhr.responseText;
                    document.getElementById("content").innerHTML = response;
                }
            };
            xhr.open("GET", newURL, true);
            xhr.send();
        });
    });
    */
    
</script>