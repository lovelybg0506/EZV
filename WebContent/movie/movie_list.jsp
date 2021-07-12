<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../main/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>movie_list</title>
<style>
.btn-sm{
	background-color:#EFEFEF;
	color:#A5732A;
}
.portfolio-filter{
    margin: 10px 20px;
    padding: 0;
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
                            <h1 class="title">영화</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
   </section>
   
    <section id="portfolio">
		<div class="container">
        <ul class="portfolio-filter">
        </ul>
        <!--/#portfolio-filter-->
        
 		<div class="portfolio-items">
                        <div class="col-xs-6 col-sm-6 col-md-4 portfolio-item branded logos">
                            <div class="portfolio-wrapper">
                                <div class="portfolio-single">
                                    <div class="portfolio-thumb">
                                        <img src="../movie/images/avengers.jpg" style="width:360px; height:350px;" class="img-responsive" alt="">
                                    </div>
                                    <div class="portfolio-view">
                                        <ul class="nav nav-pills">
                                        	<li><button type="button" class="btn btn-sm" onclick ="location.href='../movie/movie_detail_avengers.jsp'">상세보기</button></li><br><br>
                                        	<li><button type="button" class="btn btn-sm">예매하기</button></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="portfolio-info ">
                                    <h2>Avengers: EndGame</h2>
                                    <h5>예매율: 20%</h5>
                                    <h5>개봉일: 2019.04.24</h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-4 portfolio-item branded folio">
                            <div class="portfolio-wrapper">
                                <div class="portfolio-single">
                                    <div class="portfolio-thumb">
                                        <img src="../movie/images/call.jpg" style="width:360px; height:350px;"class="img-responsive" alt="">
                                    </div>
                                    <div class="portfolio-view">
                                        <ul class="nav nav-pills">
                                        	<li><button type="button" class="btn btn-sm" onclick ="location.href='../movie/movie_detail_call.jsp'">상세보기</button></li><br><br>
                                        	<li><button type="button" class="btn btn-sm">예매하기</button></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="portfolio-info ">
                                    <h2>발신제한</h2>
                                    <h5>예매율: 10%</h5>
                                    <h5>개봉일: 2021.06.23</h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-4 portfolio-item design logos">
                            <div class="portfolio-wrapper">
                                <div class="portfolio-single">
                                    <div class="portfolio-thumb">
                                        <img src="../movie/images/code.jpg" style="width:360px; height:350px;" class="img-responsive" alt="">
                                    </div>
                                    <div class="portfolio-view">
                                       <ul class="nav nav-pills">
                                        	<li><button type="button" class="btn btn-sm" onclick ="location.href='../movie/movie_detail_code.jsp'">상세보기</button></li><br><br>
                                        	<li><button type="button" class="btn btn-sm">예매하기</button></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="portfolio-info ">
                                    <h2>다빈치코드</h2>
                                    <h5>예매율: 7%</h5>
                                    <h5>개봉일: 2006.05.18</h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-4 portfolio-item design logos">
                            <div class="portfolio-wrapper">
                                <div class="portfolio-single">
                                    <div class="portfolio-thumb">
                                        <img src="../movie/images/earth.jpg" style="width:360px; height:350px;" class="img-responsive" alt="">
                                    </div>
                                    <div class="portfolio-view">
                                        <ul class="nav nav-pills">
                                        	<li><button type="button" class="btn btn-sm" onclick ="location.href='../movie/movie_detail_earth.jsp'">상세보기</button></li><br><br>
                                        	<li><button type="button" class="btn btn-sm">예매하기</button></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="portfolio-info ">
                                    <h2>지구를 지켜라!</h2>
                                    <h5>예매율: 1%</h5>
                                    <h5>개봉일: 2003.04.04</h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-4 portfolio-item branded mobile">
                            <div class="portfolio-wrapper">
                                <div class="portfolio-single">
                                    <div class="portfolio-thumb">
                                        <img src="../movie/images/harry.jpg" style="width:360px; height:350px;" class="img-responsive" alt="">
                                    </div>
                                    <div class="portfolio-view">
                                        <ul class="nav nav-pills">
                                        	<li><button type="button" class="btn btn-sm" >상세보기</button>
                                        	<a href="<%=request.getContextPath()%>/movieCont.do?mno=5">ㅇㅇㅇ</a></li><br><br>
                                        	<li><button type="button" class="btn btn-sm">예매하기</button></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="portfolio-info ">
                                    <h2>해리포터와 마법사의 돌</h2>
                                    <h5>예매율: 20%</h5>
                                    <h5>개봉일: 2001.12.14</h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-4 portfolio-item branded mockup">
                            <div class="portfolio-wrapper">
                                <div class="portfolio-single">
                                    <div class="portfolio-thumb">
                                        <img src="../movie/images/job.jpg" style="width:360px; height:350px;" class="img-responsive" alt="">
                                    </div>
                                    <div class="portfolio-view">
                                         <ul class="nav nav-pills">
                                        	<li><button type="button" class="btn btn-sm" onclick ="location.href='../movie/movie_detail_job.jsp'">상세보기</button></li><br><br>
                                        	<li><button type="button" class="btn btn-sm">예매하기</button></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="portfolio-info ">
                                    <h2>극한직업</h2>
                                    <h5>예매율: 10%</h5>
                                    <h5>개봉일: 2019.01.23</h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-4 portfolio-item branded folio">
                            <div class="portfolio-wrapper">
                                <div class="portfolio-single">
                                    <div class="portfolio-thumb">
                                        <img src="../movie/images/light.jpg" style="width:360px; height:350px;" class="img-responsive" alt="">
                                    </div>
                                    <div class="portfolio-view">
                                        <ul class="nav nav-pills">
                                        	<li><button type="button" class="btn btn-sm" onclick ="location.href='../movie/movie_detail_light.jsp'">상세보기</button></li><br><br>
                                        	<li><button type="button" class="btn btn-sm">예매하기</button></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="portfolio-info ">
                                    <h2>빛나는 순간</h2>
                                    <h5>예매율: 10%</h5>
                                    <h5>개봉일: 2021.06.30</h5>
                                </div>
                            </div>
                        </div>
                        <div class="ccol-xs-6 col-sm-6 col-md-4 portfolio-item design logos">
                            <div class="portfolio-wrapper">
                                <div class="portfolio-single">
                                    <div class="portfolio-thumb">
                                        <img src="../movie/images/mono.jpg" style="width:360px; height:350px;" class="img-responsive" alt="">
                                    </div>
                                    <div class="portfolio-view">
                                        <ul class="nav nav-pills">
                                        	<li><button type="button" class="btn btn-sm" onclick ="location.href='../movie/movie_detail_mono.jsp'">상세보기</button></li><br><br>
                                        	<li><button type="button" class="btn btn-sm">예매하기</button></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="portfolio-info ">
                                    <h2>모노노케 히메</h2>
                                    <h5>예매율: 1%</h5>
                                    <h5>개봉일: 2003.04.25</h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-4 portfolio-item branded logos">
                            <div class="portfolio-wrapper">
                                <div class="portfolio-single">
                                    <div class="portfolio-thumb">
                                        <img src="../movie/images/monster.jpg" style="width:360px; height:350px;" class="img-responsive" alt="">
                                    </div>
                                    <div class="portfolio-view">
                                         <ul class="nav nav-pills">
                                        	<li><button type="button" class="btn btn-sm" onclick ="location.href='../movie/movie_detail_monster.jsp'">상세보기</button></li><br><br>
                                        	<li><button type="button" class="btn btn-sm">예매하기</button></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="portfolio-info">
                                    <h2>괴물</h2>
                                    <h5>예매율: 20%</h5>
                                    <h5>개봉일: 2006.07.27</h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-4 portfolio-item branded mockup">
                            <div class="portfolio-wrapper">
                                <div class="portfolio-single">
                                    <div class="portfolio-thumb">
                                        <img src="../movie/images/orange.jpg" style="width:360px; height:350px;" class="img-responsive" alt="">
                                    </div>
                                    <div class="portfolio-view">
                                        <ul class="nav nav-pills">
                                        <li><button type="button" class="btn btn-sm" onclick ="location.href='../movie/movie_detail_orange.jsp'">상세보기</button></li><br><br>
                                        	<li><button type="button" class="btn btn-sm">예매하기</button></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="portfolio-info ">
                                    <h2>시계태엽 오렌지</h2>
                                    <h5>예매율: 1%</h5>
                                    <h5>개봉일: 1971.12.19</h5>
                                </div>
                            </div>
                        </div>
            		</div>
            	</div>
    	</section>
    <!--/#projects-->
   
<%@ include file="../main/footer.jsp" %>
</body>
</html>