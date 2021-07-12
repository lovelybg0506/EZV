<%@page import="com.ezv.Dto.ReviewVO"%>
<%@page import="com.ezv.Dto.MovieVO"%>
<%@page import="java.util.Vector"%>
<%@page import="com.ezv.Dao.MovieDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../main/header.jsp"%>
<!DOCTYPE html>
<html>
<style>
.portfolio-filter {
	margin: -50px 0 50px 0;
	padding: 0;
}

.row3 {
	margin-right: -150px;
	margin-left: 150px;
}

.form-control2 {
	border: 1px solid #d99c4e;
	font-weight: 300;
	outline: none;
	box-shadow: none;
	height: 20px;
}

#message2 {
	height: 20px;
	size: 60;
}
.message3 {
	color: gray;
	bottom-margin: 30px;
}
</style>
<body>
	<%
		MovieDAO mdao = new MovieDAO();
		Vector<MovieVO> mov = mdao.Movie(10);
	%>
	<section id="page-breadcrumb">
		<div class="vertical-center sun">
			<div class="container">
				<div class="row">
					<div class="action">
						<div class="col-sm-12">
							<h1 class="title">영화 상세 정보</h1>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--/#action-->

	<section id="portfolio-information" class="padding-top">
		<div class="container">
			<div class="row3">
				<div class="row">
					<ul class="portfolio-filter text-center">
						<li><a class="btn btn-default" href="../movie/movie_list.jsp"
							data-filter=".logos">영화리스트</a></li>
						<li><a class="btn btn-default active"
							href="../movie/movie_detail_orange.jsp" data-filter="*">주요정보</a></li>
						<li><a class="btn btn-default" href="movie_time_day1.jsp"
							data-filter=".logos">상영시간표</a></li>
					</ul>
					<!--/#portfolio-filter-->
					<div class="col-sm-3">
						<!-- col-sm-3으로 하면 글씨랑 사진 딱 붙음 -->
						<img src="../movie/images/orange.jpg" style="height: 350px;"
							class="img-responsive" alt="">
					</div>
					<%
						for (int i = 0; i < mov.size(); i++) {
							MovieVO mvo = mov.get(i);
					%>
					<div class="col-sm-6">
						<div class="project-name overflow">
							<h2 class="bold"><%=mvo.getMname()%></h2>
							<h5 class="bold"><%=mvo.getMsubname()%></h5>
							<ul class="nav navbar-nav navbar-default">
								<li>개봉일&nbsp;&nbsp;&nbsp;<%=mvo.getMdate()%></li>
								<br>
								<li>상영시간&nbsp;&nbsp;&nbsp;<%=mvo.getMtime()%></li>
							</ul>
						</div>
						<div class="project-info overflow">
							<ul class="elements">
								<hr>
								<li><i class="fa fa-angle-right"></i> <b>감독</b> : <%=mvo.getMdirector()%></li>
								<li><i class="fa fa-angle-right"></i> <b>배우</b> : <%=mvo.getMactor()%></li>
								<li><i class="fa fa-angle-right"></i> <b>장르</b> : <%=mvo.getMgenre()%></li>
								<li><i class="fa fa-angle-right"></i> <b>등급</b> : <%=mvo.getMgrade()%></li>
							</ul>
						</div>
						<div class="live-preview">
							<a href="#" class="btn btn-common uppercase">예매하기</a>
						</div>
					</div>
				</div>
				<div align="left" class="row2"
					style="margin: 0; padding-right: 250px;">
					<hr>
					<h3>
						<b>주요정보</b>
					</h3>
					<p><%=mvo.getMcontent()%></p>
				</div>
			</div>
			<div class="row3">
				<div align="left" class="row2"
					style="margin: 0; padding-right: 250px;">
					<hr>
					<h3>
						<b>트레일러</b>
					</h3>
					<div id="progressbar-container">
						<div id="video-container">
							<div class="row">
								<div class="col-md-6">
									<iframe src="https://youtube.com/embed/vN-1Mup0UI0"
										style="height: 300px; width: 400px;"></iframe>
								</div>
								<div class="col-md-6">
									<iframe src="https://www.youtube.com/embed/FI1204n6GZw"
										style="height: 300px; width: 400px;"></iframe>
								</div>
							</div>
						</div>
						<!--/#video-container-->
					</div>
				</div>
			</div>
			<div class="row3">
				<div align="left" class="row2"
					style="margin: 0; padding-right: 250px;">
					<hr>
					<h3>
						<b>스틸컷</b>
					</h3>
					<div id="carousel-container">
						<div id="carousel-example-generic" class="carousel slide"
							data-ride="carousel">
							<ol class="carousel-indicators visible-xs">
								<li data-target="#carousel-example-generic" data-slide-to="0"
									class="active"></li>
								<li data-target="#carousel-example-generic" data-slide-to="1"></li>
								<li data-target="#carousel-example-generic" data-slide-to="2"></li>
							</ol>
							<div class="carousel-inner">
								<div class="item active">
									<img src="../movie/images/orange_cut1.jpg"
										style="width: 1140px; height: 487px;">
								</div>
								<div class="item">
									<img src="../movie/images/orange_cut2.jpg"
										style="width: 1140px; height: 487px;">
									<div class="carousel-caption"></div>
								</div>
								<div class="item">
									<img src="../movie/images/orange_cut3.jpg"
										style="width: 1140px; height: 487px;">
									<div class="carousel-caption"></div>
								</div>
							</div>
							<a class="left carousel-control hidden-xs"
								href="#carousel-example-generic" data-slide="prev"> <span
								class="glyphicon glyphicon-chevron-left"></span>
							</a> <a class="right carousel-control hidden-xs"
								href="#carousel-example-generic" data-slide="next"> <span
								class="glyphicon glyphicon-chevron-right"></span>
							</a>
						</div>
						<!--/#carousel-example-generic-->
					</div>
					<!--/#carousel-container-->
				</div>
				<div align="left" class="row2"
					style="margin: 0; padding-right: 250px;">
					<hr>
					<h3>
						<b>리뷰 작성</b>
					</h3>
					<div align="right" class="row2"
						style="margin: 0; padding-left: 250px; padding-bottom: 10px;">
						<input type="submit" style="width: 100px;" name="submit"
							class="btn btn-submit" value="작성">
						</div>
						<div align="left" class="row2" style="margin: 0; padding-bottom: 10px;">
						<div class="message3">작성자&nbsp;&nbsp;</div>
						<div class="message3">
							별&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;점&nbsp;&nbsp;<input type="text"
								name="rscore" id="message2" required class="form-control2">
						</div>
						<div class="message3">내&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;용&nbsp;&nbsp;</div>
						<textarea name="rcontent" id="message" required
								class="form-control" rows="6"  placeholder="Your text here"></textarea>
						</div>
					</div>
				</div>
			</div>
		<%
			}
		%>
	</section>
	<!--/#portfolio-information-->
	<%@ include file="../main/footer.jsp"%>
</body>
</html>