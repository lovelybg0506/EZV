<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../main/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>eventmain</title>
<style type="text/css">
.title3{
    color: #a5732a;
}

</style>
</head>
<body>
<section id="page-breadcrumb">
        <div class="vertical-center sun">
             <div class="container">
                <div class="row">
                    <div class="action">
                        <div class="col-sm-12">
                            <h1 class="title" >EZV의 이벤트</h1>
                            <p>EZV에서 여러분들을 위한 이벤트를 준비했습니다~!<br>
								오늘도 행복이 넘치는 이벤트를 잡으세요 ~!</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
   </section>
<!--주제 -->

<section id="blog" class="padding-bottom">
        <div class="container">
            <div class="row">
                <div class="timeline-blog overflow padding-top">
                    <div class="timeline-date text-center">
                        <a href="#" class="btn btn-common uppercase">대망의 2021년</a>
                    </div>
                    <div class="timeline-divider overflow padding-bottom">
                        <div class="col-sm-6 padding-right arrow-right wow fadeInLeft" data-wow-duration="1000ms" data-wow-delay="300ms">
                            <div class="single-blog timeline">
                               <div class="post-thumb">
                                        <img src="event_box.png" class="img-responsive" alt="">
                               </div>
                               <div class="post-content overflow">
                                    <h2>용!기!내!</h2>
                                    <h3 class="title3">EGV에서도 용 기 내!</h3>
                                    <p>EGV에 오실때에는 뚜껑이 달린 다회용기를 가져오시면 </p>
                                    <p>팝콘이 무려 6000원!</p>
                                    <a href="event_box.jsp" class="read-more">좀 더 자세히 보기</a>
                                    <div class="post-bottom overflow">
                                        <span class="post-date pull-right">2021년 3월 어느날</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 padding-left padding-top arrow-left wow fadeInRight" data-wow-duration="1000ms" data-wow-delay="300ms">
                            <div class="single-blog timeline">
                                <div class="single-blog-wrapper">
                                    <div class="post-thumb">
                                        <img src="event_student_mini.png" class="img-responsive" alt="">
                               </div>
                               <div class="post-content overflow">
                                    <h2 >토닥토닥</h2>
                                    <h3 class="title3">EGV에서도 토!닥!토!닥!</h3>
                                    <p>EVG가 수능을 끝낸 여러분과 함께하겠습니다 </p>
                                    <p>EZV가 쏘겠습니다!</p>
                                    <a href="event_student.jsp" class="read-more">좀 더 자세히 보기</a>
                                    <div class="post-bottom overflow">
                                        <span class="post-date pull-right">2021년 3월 어느날</span>
                                    </div>
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="timeline-blog overflow">

                    <div class="timeline-divider overflow padding-bottom">
                        <div class="col-sm-6 padding-right arrow-right wow fadeInLeft" data-wow-duration="1000ms" data-wow-delay="300ms">
                            <div class="single-blog timeline">
                                <div class="single-blog-wrapper">
                                    <div class="post-thumb">
                                        <img src="event_thanks_mini.png" class="img-responsive" alt="">
                               </div>
                               <div class="post-content overflow">
                                    <h2>고맙습니다</h2>
                                    <h3 class="title3">EGV와 함께 고!맙!습!니!다!</h3>
                                    <p>나라를 위해 힘쓰시는 그대들을 위해 </p>
                                    <p>EZV가 쏘겠습니다!</p>
                                    <a href="event_thanks.jsp" class="read-more">좀 더 자세히 보기</a>
                                    <div class="post-bottom overflow">
                                        <span class="post-date pull-right">2021년 3월 어느날</span>
                                    </div>
                                </div>
                                </div>
                            </div>   
                        </div>
                        <div class="col-sm-6 padding-left padding-top arrow-left wow fadeInRight" data-wow-duration="1000ms" data-wow-delay="300ms">
                            <div class="single-blog timeline">
                                <div class="single-blog-wrapper">
                                    <div class="post-thumb">
                                        <img src="event_family_mini.png" class="img-responsive" alt="">
                               </div>
                               <div class="post-content overflow">
                                    <h2>가족과 함께</h2>
                                    <h3 class="title3">EGV에서도 가!족!과!함!께!</h3>
                                    <p>EGV에서 매달 추첨을 통해!! </p>
                                    <p>까페음료권을!!</p>
                                    <a href="event_family.jsp" class="read-more">좀 더 자세히 보기</a>
                                    <div class="post-bottom overflow">
                                        <span class="post-date pull-right">2021년 3월 어느날</span>
                                    </div>
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="timeline-date text-center">
                        <a href="#" class="btn btn-common">이벤트는 계~속 됩니다</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
<!-- 이벤트 리스트 -->

<%@ include file="../main/footer.jsp" %>
</body>
</html>