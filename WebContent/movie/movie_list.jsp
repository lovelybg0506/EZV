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
	background-color:#FFF;
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
                <ul class="portfolio-filter text-right">
                    <c:if test="${loginUser.id!=null }">
						<a href="#"><button type="button" class=".btn-sm" >등록</button></a>
					</c:if>
                </ul>
        <!--/#portfolio-filter-->

 		<div class="portfolio-items">
                        <div class="col-xs-6 col-sm-6 col-md-4 portfolio-item branded logos">
                            <div class="portfolio-wrapper">
                                <div class="portfolio-single">
                                    <div class="portfolio-thumb">
                                        <img src="../movie/images/avengers.jpg" style="width:350px; height:350px;" class="img-responsive" alt="">
                                    </div>
                                    <div class="portfolio-view">
                                        <ul class="nav nav-pills">
                                        </ul>
                                    </div>
                                </div>
                                <div class="portfolio-info ">
                                    <h2>Sailing Vivamus</h2>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-4 portfolio-item branded folio">
                            <div class="portfolio-wrapper">
                                <div class="portfolio-single">
                                    <div class="portfolio-thumb">
                                        <img src="../movie/images/call.jpg" style="width:350px; height:350px;"class="img-responsive" alt="">
                                    </div>
                                    <div class="portfolio-view">
                                        <ul class="nav nav-pills">
                                        </ul>
                                    </div>
                                </div>
                                <div class="portfolio-info ">
                                    <h2>Sailing Vivamus</h2>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-4 portfolio-item design logos">
                            <div class="portfolio-wrapper">
                                <div class="portfolio-single">
                                    <div class="portfolio-thumb">
                                        <img src="../movie/images/code.jpg" style="width:350px; height:350px;" class="img-responsive" alt="">
                                    </div>
                                    <div class="portfolio-view">
                                        <ul class="nav nav-pills">
                                        </ul>
                                    </div>
                                </div>
                                <div class="portfolio-info ">
                                    <h2>Sailing Vivamus</h2>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-4 portfolio-item design logos">
                            <div class="portfolio-wrapper">
                                <div class="portfolio-single">
                                    <div class="portfolio-thumb">
                                        <img src="../movie/images/earth.jpg" style="width:350px; height:350px;" class="img-responsive" alt="">
                                    </div>
                                    <div class="portfolio-view">
                                        <ul class="nav nav-pills">
                                        </ul>
                                    </div>
                                </div>
                                <div class="portfolio-info ">
                                    <h2>Sailing Vivamus</h2>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-4 portfolio-item branded mobile">
                            <div class="portfolio-wrapper">
                                <div class="portfolio-single">
                                    <div class="portfolio-thumb">
                                        <img src="../movie/images/harry.jpg" style="width:350px; height:350px;" class="img-responsive" alt="">
                                    </div>
                                    <div class="portfolio-view">
                                        <ul class="nav nav-pills">
                                        </ul>
                                    </div>
                                </div>
                                <div class="portfolio-info ">
                                    <h2>Sailing Vivamus</h2>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-4 portfolio-item branded mockup">
                            <div class="portfolio-wrapper">
                                <div class="portfolio-single">
                                    <div class="portfolio-thumb">
                                        <img src="../movie/images/job.jpg" style="width:350px; height:350px;" class="img-responsive" alt="">
                                    </div>
                                    <div class="portfolio-view">
                                        <ul class="nav nav-pills">
                                        </ul>
                                    </div>
                                </div>
                                <div class="portfolio-info ">
                                    <h2>Sailing Vivamus</h2>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-4 portfolio-item branded folio">
                            <div class="portfolio-wrapper">
                                <div class="portfolio-single">
                                    <div class="portfolio-thumb">
                                        <img src="../movie/images/light.jpg" style="width:350px; height:350px;" class="img-responsive" alt="">
                                    </div>
                                    <div class="portfolio-view">
                                        <ul class="nav nav-pills">
                                        </ul>
                                    </div>
                                </div>
                                <div class="portfolio-info ">
                                    <h2>Sailing Vivamus</h2>
                                </div>
                            </div>
                        </div>
                        <div class="ccol-xs-6 col-sm-6 col-md-4 portfolio-item design logos">
                            <div class="portfolio-wrapper">
                                <div class="portfolio-single">
                                    <div class="portfolio-thumb">
                                        <img src="../movie/images/mono.jpg" style="width:350px; height:350px;" class="img-responsive" alt="">
                                    </div>
                                    <div class="portfolio-view">
                                        <ul class="nav nav-pills">
                                        </ul>
                                    </div>
                                </div>
                                <div class="portfolio-info ">
                                    <h2>Sailing Vivamus</h2>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-4 portfolio-item branded logos">
                            <div class="portfolio-wrapper">
                                <div class="portfolio-single">
                                    <div class="portfolio-thumb">
                                        <img src="../movie/images/monster.jpg" style="width:350px; height:350px;" class="img-responsive" alt="">
                                    </div>
                                    <div class="portfolio-view">
                                        <ul class="nav nav-pills">
                                        </ul>
                                    </div>
                                </div>
                                <div class="portfolio-info">
                                    <h2>Sailing Vivamus</h2>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-4 portfolio-item branded mockup">
                            <div class="portfolio-wrapper">
                                <div class="portfolio-single">
                                    <div class="portfolio-thumb">
                                        <img src="../movie/images/orange.jpg" style="width:350px; height:350px;" class="img-responsive" alt="">
                                    </div>
                                    <div class="portfolio-view">
                                        <ul class="nav nav-pills">
                                        </ul>
                                    </div>
                                </div>
                                <div class="portfolio-info ">
                                    <h2>Sailing Vivamus</h2>
                                </div>
                            </div>
                        </div>
            		</div>
            		</div>
    	</section>
    <!--/#projects-->
   
</body>
<%@ include file="../main/footer.jsp" %>
</html>