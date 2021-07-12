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
</style>
<head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script>
	$(document).ready(function() {

		loadReview();
	});

	// 리뷰 불러오는 함수
	function loadReview() {
		$.ajax({
			type : "post",
			url : "/EZV/reviewlist.do",
			dataType : "json",
			data : {"no" : 5},
			success : function(data) {
				var Rlist = data.list;
				for (var i = 0; i < Rlist.length; i++) {
					$(".page-header").append(

							"<blockquote style='margin-top:30px;'>"
							+ "<footer>"+ Rlist[i].rid+ "</footer><br>"
							+ "<p>"+ Rlist[i].rcontent + "</p>"
							+ "<div style='text-align:right;'><h6>"+ Rlist[i].rdate + "</h6></div>"
							+ "</blockquote>"
					);

				}

			},
			error : function(request, status, error) {
				alert("error!!!");
			}
		});
	}
	
	/*  리뷰 등록 함수
	$("#add_btn").click(function(){
		// 입력값 유효성검사
		var content=$("#rev_content").val();
		if(content==""){
			$("#rev_content").html("내용을 입력하세요.");
			$("#rev_content").focus();
			return;
		}
		
		// 입력태그 초기화
		$("#rev_content").val("");
		
		//ajax기능으로 요청,응답
		$.ajax({
			type:"post",
			url:"/EZV/insert.do",
			data:"&rev_content="+rev_content,
			dataType:"json",
			success:function(data){
				
				if(=="success"){

				}
			},
			error: function(request,status,error){
		          alert("error!!!");
			}
		});
	}); */
</script>

</head>
<body>
	<%
		MovieVO mvo = (MovieVO)request.getAttribute("info");
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
							href="../movie/movie_detail_harry.jsp" data-filter="*">주요정보</a></li>
						<li><a class="btn btn-default" href="movie_time_day1.jsp"
							data-filter=".logos">상영시간표</a></li>
					</ul>
					<!--/#portfolio-filter-->
					<div class="col-sm-3">
						<!-- col-sm-3으로 하면 글씨랑 사진 딱 붙음 -->
						<img src="../movie/images/harry.jpg" style="height: 350px;"
							class="img-responsive" alt="">
					</div>
					
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
									<iframe src="https://www.youtube.com/embed/5hU0EeBQEZY"
										style="height: 300px; width: 400px;"></iframe>
								</div>
								<div class="col-md-6">
									<iframe src="https://www.youtube.com/embed/vtJ6eZRanHc"
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
									<img src="../movie/images/harry_cut1.jpg"
										style="width: 1140px; height: 487px;" alt="">
								</div>
								<div class="item">
									<img src="../movie/images/harry_cut2.jpg"
										style="width: 1140px; height: 487px;" alt="">
									<div class="carousel-caption"></div>
								</div>
								<div class="item">
									<img src="../movie/images/harry_cut3.jpg"
										style="width: 1140px; height: 487px;" alt="">
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
			</div>

			<!-- 리뷰 작성 칸 -->
			
			<form action="<%=request.getContextPath()%>/insert.do" method="post">
				
				<input type="hidden" value="<%=mvo.getMno() %>" name="mno">
				<input type="hidden" value="admin" name="id">				
				<div class="row3">
					<div align="left" class="row2"
						style="margin: 0; padding-right: 250px;">
						<hr>
						<div class="col-md-8" style="height: 120px; width: 880px;">
							<div class="contact-form bottom">
								<h2>리뷰</h2>
								<div class="form-group">
									<textarea name="rev_content" class="form-control" rows="4" placeholder="<%=mvo.getMname() %> 재미있게 보셨나요? 영화의 어떤 점이 좋았는지 이야기해주세요."></textarea>
								</div>
								<div class="form-group" style="width: 100px; float: right;">
									<input type="submit" id="add_btn" value="리뷰등록" class="btn btn-submit">
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
			<!--  -->

			<!-- 리뷰 목록 -->
			<div class="row3">
				<div align="left" class="row2"
					style="margin: 0; padding-right: 250px;">
					<div class="comment-row">
						<div class="col-md-6">
							<h4 class="page-header" style="padding-top: 80px;">
								<strong><%=mvo.getMname()%></strong>에 대한 리뷰입니다!
							</h4>
							<!-- JSON -->

							<!-- JSON -->
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!--  -->

	</section>
	<!--/#portfolio-information-->
	<%@ include file="../main/footer.jsp"%>
</body>
</html>