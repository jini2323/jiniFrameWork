<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@include file="../temp/header.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="rPath" value="${pageContext.request.contextPath }/resources"/>
    <!-- 메인 크라우드펀딩 (박원빈 수정) -->
    <!-- ##### Hero Area Start ##### -->
     <div class="hero-area">
        <!-- Hero Slides Area -->
        <div class="hero-slides owl-carousel">
            <!-- Single Slide -->
            <!-- 0711_메인이미지_펀딩리스트로 연결_phj -->
            <div class="single-hero-slide bg-img" style="background-image: url(${rPath }/img/bg-img/movie_n.png);" onclick="location='fboardList'">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12">
                            <div class="slide-content text-center">
                            	<h2 data-animation="fadeInUp" data-delay="250ms">
                     			<a href="#">조 클라인 소설 원작</a>
                     			<!-- <hr class="cp_line"> -->
                                </h2>
                                <div class="post-tag">
                                    <a href="#" data-animation="fadeInUp">민주당 후보 자리를 놓고 빌 클린턴이 펼쳤던 캠페인 재현 현장속으로!</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Single Slide -->
            <div class="single-hero-slide bg-img" style="background-image: url(${rPath}/img/bg-img/movie_l.png);"  onclick="location='fboardList'">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12">
                            <div class="slide-content text-center">
                                <!-- <div class="post-tag">
                                     <a href="#" data-animation="fadeInUp">이달의 추천 펀딩!</a>
                                </div>
                                <h2 data-animation="fadeInUp" data-delay="250ms">
                                	<a href="single-post.html">마감 임박!!<br>목표금액 달성률 2000%!</a>
                                </h2> -->
                            </div> 
                        </div>
                    </div>
                </div>
            </div>
            <!-- Single Slide -->
            <div class="single-hero-slide bg-img" style="background-image: url(${rPath}/img/bg-img/movie_v.png);"  onclick="location='fboardList'">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12">
                            <div class="slide-content text-center">
                                 <div class="post-tag">
                                    <!--<a href="#" data-animation="fadeInUp">개봉 확정</a>-->
                                </div>
                                <h2 data-animation="fadeInUp" data-delay="250ms">
                                	<!--<a href="single-post-fund1.html">영화가 곧 개봉됩니다</a>-->
                                </h2>
                            </div> 
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 메인 크라우드펀딩 (박원빈 수정 완료) -->
    <!-- ##### Hero Area End ##### -->
	
	<!-- A101 메인화면 콘텐츠 구역(박원빈 수정) -->
    <!-- ##### Blog Wrapper Start ##### -->
    <div class="blog-wrapper">
        <div class="container">
            <div class="row align-items-end">
                <!-- Single Blog Area -->
                <div class="col-12 col-lg-4">
                    <div class="single-blog-area clearfix mb-100">
                        <!-- Blog Content -->
                        <div class="single-blog-content">
                            <div class="line"></div>
                            <a href="#" class="post-tag">Actor 101</a>
                            <h4>
                            	<a href="#" class="post-headline">'국민프로듀서님을 기다립니다'</a>
                            </h4>
                            <p>관객과 평단 모두가 선택한 <br>웰메이드 창작 뮤지컬을 원작으로,<br> 작품과 대중성을 고루 갖춘 <br>'어쩌면 해피엔딩'에 출연할 배우를 뽑아주세요! <br>작품 선정부터 출연할 배우까지,<br> 직접 만들어가는 문화콘텐츠<br> 지금 바로 참여해주세요!</p>
                            <a href="#" class="btn original-btn"><span style = "position: relative;top: 10px;">투표하기</span></a>
                        </div>
                    </div>
                </div>
                <!-- A101 포스터 이미지(박원빈 수정) -->
                <!-- Single Blog Area -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-catagory-area clearfix mb-100">
                        <img src="${rPath }/img/blog-img/mhe.png" alt="">
                        <!-- Catagory Title -->
                        <!--<div class="catagory-title">
                            <a href="#">Lifestyle posts</a> 
                        </div> -->
                    </div>
                </div>
                <!-- Single Blog Area -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-catagory-area clearfix mb-100">
                        <img src="${rPath }/img/blog-img/A101.png" alt="">
                        <!-- Catagory Title
                        <div class="catagory-title">
                            <!-- <a href="#">latest posts</a> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- A101 메인화면 콘텐츠 구역(박원빈 수정 완료) -->

		<!-- 뉴스 메인화면 콘텐츠 구역(박형지 수정) -->
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-9">

                    <!-- Single Blog Area  -->
                    <div class="single-blog-area blog-style-2 mb-50 wow fadeInUp" data-wow-delay="0.2s" data-wow-duration="1000ms">
                        <div class="row align-items-center">
                            <div class="col-12 col-md-6">
                                <div class="single-blog-thumbnail">
                                    <a href="newsList"><img src="${rPath }/img/articles/moive_poster.png" alt=""></a>
                                    <!-- <div class="post-date">
                                        <a href="#">12 <span>march</span></a>
                                    </div>  -->
                                </div>
                            </div>
                            <div class="col-12 col-md-6">
                                <!-- Blog Content -->
                                <div class="single-blog-content">
                                    <div class="line"></div>
                                    <a href="newsList" class="post-tag">News</a>
                                    <h4><a href="newsList" class="post-headline">추천! 독립영화</a></h4>
                                    <p>대작이 될 독립영화를 소개합니다</p>
                                    <div class="post-meta">
                                        <p>2023/07/07</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Single Blog Area  -->
                    <div class="single-blog-area blog-style-2 mb-50 wow fadeInUp" data-wow-delay="0.3s" data-wow-duration="1000ms">
                        <div class="row align-items-center">
                            <div class="col-12 col-md-6">
                                <div class="single-blog-thumbnail">
                                    <a href="newsList"><img src="${rPath }/img/articles/news_m4.png" alt=""></a>
                                    <!-- <div class="post-date">
                                        <a href="#">12 <span>march</span></a>
                                    </div> -->
                                </div>
                            </div>
                            <div class="col-12 col-md-6">
                                <!-- Blog Content -->
                                <div class="single-blog-content">
                                    <div class="line"></div>
                                    <a href="newsList" class="post-tag">News</a>
                                    <h4><a href="newsList" class="post-headline">범죄도시3..900만 눈앞!</a></h4>
                                    <p>나쁜 놈들 잡는 데 이유 없고 제한 없다</p>
                                    <div class="post-meta">
                                        <p>2023/07/07</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 뉴스 메인화면 콘텐츠 구역(박형지 수정 완료) -->
					
					
					<!-- 공지사항(박원빈 수정) -->
                    <!-- Single Blog Area  -->
                    <div class="single-blog-area blog-style-2 mb-50 wow fadeInUp" data-wow-delay="0.4s" data-wow-duration="1000ms">
                        <div class="row">
                            <div class="col-12">
                                <div class="single-blog-thumbnail">
                                    <img src="${rPath }/img/blog-img/schedule01.png" alt="">
                                    <div class="post-date">
                                        <a href="#">10 <span>march</span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12">
                                <!-- Blog Content -->
                                <div class="single-blog-content mt-50">
                                    <div class="line"></div>
                                    <a href="#" class="post-tag">Notice</a>
                                    <h4><a href="#" class="post-headline">공지사항</a></h4>
                                    <p>안녕하세요. 영화 크라우드 펀딩 사이트 LAURA입니다.<br>LAURA는 도전을 통해 새로운 가치를 증명하고 우리 일상의 변화를 만들어나가는 예술인들을 지원합니다.
                                    <br>통합적인 차세대 예술가 육성을 위해 예술가의 창작 및 기획 역량을 높이고, 소재 확장과 아이디어 실현 과정을<br>지원하고자 크라우드 펀딩을 통하여
                                    	다양한 인프라 혜택을 제공하고 금융을 지원합니다.<p>
                                    <div class="post-meta">
                                        <p>By <a href="#">관리자</a></p>
                                        <p>2023/07/07</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 공지사항(박원빈 수정 완료) -->

                    <!-- Single Blog Area  -->
                    <div class="single-blog-area blog-style-2 mb-50 wow fadeInUp" data-wow-delay="0.5s" data-wow-duration="1000ms">
                        <div class="row align-items-center">
                            <div class="col-12 col-md-12">
                                <div class="single-blog-thumbnail">
                                     <img src="${rPath }/img/bg-img/project.jpg" alt="">
                                    <!-- <div class="post-date">
                                        <a href="#">12 <span>march</span></a>
                                    </div> -->
                                </div>
                            </div>
                            <!-- <div class="col-12 col-md-6">
                                Blog Content
                                <div class="single-blog-content">
                                    <div class="line"></div>
                                    <a href="#" class="post-tag">Lifestyle</a>
                                    <h4><a href="#" class="post-headline">Party people in the house</a></h4>
                                    <p>Curabitur venenatis efficitur lorem sed tempor. Integer aliquet tempor cursus. Nullam vestibulum convallis risus vel condimentum. Nullam auctor lorem in libero luctus, vel volutpat quam tincidunt.</p>
                                    <div class="post-meta">
                                        <p>By <a href="#">james smith</a></p>
                                        <p>3 comments</p>
                                    </div>
                                </div>
                            </div> -->
                        </div>
                    </div>

                    <!-- Single Blog Area  -->
                    <div class="single-blog-area blog-style-2 mb-50 wow fadeInUp" data-wow-delay="0.6s" data-wow-duration="1000ms">
                        <div class="row align-items-center">
                            <div class="col-12 col-md-6">
                                <div class="single-blog-thumbnail">
                                    <img src="${rPath }/img/blog-img/6.jpg" alt="">
                                    <div class="post-date">
                                        <a href="#">12 <span>march</span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-6">
                                <!-- Blog Content -->
                                <div class="single-blog-content">
                                    <div class="line"></div>
                                    <a href="#" class="post-tag">Lifestyle</a>
                                    <h4><a href="#" class="post-headline">We love colors in 2018</a></h4>
                                    <p>Curabitur venenatis efficitur lorem sed tempor. Integer aliquet tempor cursus. Nullam vestibulum convallis risus vel condimentum. Nullam auctor lorem in libero luctus, vel volutpat quam tincidunt.</p>
                                    <div class="post-meta">
                                        <p>By <a href="#">james smith</a></p>
                                        <p>3 comments</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- ##### Sidebar Area ##### -->
                <div class="col-12 col-md-4 col-lg-3">
                    <div class="post-sidebar-area">

                        <!-- Widget Area -->
                       <!--  <div class="sidebar-widget-area">
                            <form action="#" class="search-form">
                                <input type="search" name="search" id="searchForm" placeholder="Search">
                                <input type="submit" value="submit">
                            </form>
                        </div> -->

                        <!-- Widget Area -->
                       <!--  <div class="sidebar-widget-area">
                            <h5 class="title subscribe-title">Subscribe to my newsletter</h5>
                            <div class="widget-content">
                                <form action="#" class="newsletterForm">
                                    <input type="email" name="email" id="subscribesForm" placeholder="Your e-mail here">
                                    <button type="submit" class="btn original-btn">Subscribe</button>
                                </form>
                            </div>
                        </div> -->
						
						<!-- 이벤트 시작 -->
                        <!-- Widget Area -->
                        <div class="sidebar-widget-area">
                            <a href="#"><img src="${rPath }/img/bg-img/event.gif" alt=""></a>
                        </div>
                        <!-- 이벤트 끝 -->
						
						<!-- 사이드 뉴스 (박원빈 수정) -->
                        <!-- Widget Area -->
                        <div class="sidebar-widget-area">
                            <!-- <h5 class="title">Latest Posts</h5> -->

                            <div class="widget-content">

                                <!-- Single Blog Post -->
                                <div class="single-blog-post d-flex align-items-center widget-post">
                                    <!-- Post Thumbnail -->
                                    <div class="post-thumbnail">
                                        <img src="${rPath }/img/blog-img/snews_01.png" alt="">
                                    </div>
                                    <!-- Post Content -->
                                    <div class="post-content">
                                        <a href="#" class="post-tag">News</a>
                                        <h4><a href="https://isplus.com/article/view/isp202306220154"
                                        class="post-headline">‘정동진독립영화제’ 8월 개최 확정</a></h4>
                                        <div class="post-meta">
                                            <p><a href="#">2023/06/23</a></p>
                                        </div>
                                    </div>
                                </div>

                                <!-- Single Blog Post -->
                                <div class="single-blog-post d-flex align-items-center widget-post">
                                    <!-- Post Thumbnail -->
                                    <div class="post-thumbnail">
                                        <img src="${rPath }/img/blog-img/snews_02.png" alt="">
                                    </div>
                                    <!-- Post Content -->
                                    <div class="post-content">
                                        <a href="#" class="post-tag">News</a>
                                        <h4><a href="https://enews.imbc.com/News/RetrieveNewsInfo/387357" class="post-headline">제27회 부천국제판타스틱영화제 작품상</a></h4>
                                        <div class="post-meta">
                                            <p><a href="#">2023/07/08</a></p>
                                        </div>
                                    </div>
                                </div>

                                <!-- Single Blog Post -->
                                <div class="single-blog-post d-flex align-items-center widget-post">
                                    <!-- Post Thumbnail -->
                                    <div class="post-thumbnail">
                                        <img src="${rPath }/img/blog-img/snews_03.png" alt="">
                                    </div>
                                    <!-- Post Content -->
                                    <div class="post-content">
                                        <a href="#" class="post-tag">News</a>
                                        <h4><a href="https://star.ohmynews.com/NWS_Web/OhmyStar/at_pg.aspx?CNTN_CD=A0002943220&CMPT_CD=P0010&utm_source=naver&utm_medium=newsearch&utm_campaign=naver_news"
                                        class="post-headline">봉준호 '열차'에 탑승한 할리우드 배우들</a></h4>
                                        <div class="post-meta">
                                            <p><a href="#">2023/07/09</a></p>
                                        </div>
                                    </div>
                                </div>

                                <!-- Single Blog Post -->
                                <div class="single-blog-post d-flex align-items-center widget-post">
                                    <!-- Post Thumbnail -->
                                    <div class="post-thumbnail">
                                        <img src="${rPath }/img/blog-img/snews_04.png" alt="">
                                    </div>
                                    <!-- Post Content -->
                                    <div class="post-content">
                                        <a href="#" class="post-tag">News</a>
                                        <h4><a href="https://news.kmib.co.kr/article/view.asp?arcid=0018444511&code=61121111&cp=nv"
                                        class="post-headline">부산국제어린이청소년영화제 10일 개막</a></h4>
                                        <div class="post-meta">
                                            <p><a href="#">2023/07/09</a></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 사이드 뉴스 (박원빈 수정 완료) -->

                        <!-- Widget Area -->
                         <div class="sidebar-widget-area">
                            <h5 class="title">Tags</h5>
                            <div class="widget-content">
                                <ul class="tags">
                                    <li><a href="#">영화제</a></li>
                                    <li><a href="#">펀딩</a></li>
                                    <li><a href="#">등급</a></li>
                                    <li><a href="#">News</a></li>
                                    <li><a href="#">봉준호</a></li>
                                    <li><a href="#">영화</a></li>
                                    <li><a href="#">배우</a></li>
                                    <li><a href="#">감독</a></li>
                                </ul>
                            </div>
                        </div> 
                    </div>
                </div>
            </div>
        </div>
    <!-- ##### Blog Wrapper End ##### -->
<%@include file="../temp/footer.jsp" %>