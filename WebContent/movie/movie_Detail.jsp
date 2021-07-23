<%@page import="com.ezv.Dto.MemberVO"%>
<%@page import="com.ezv.Dto.ReviewVO"%>
<%@page import="com.ezv.Dto.MovieVO"%>
<%@page import="java.util.Vector"%>
<%@page import="com.ezv.Dao.MovieDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

#tdh {
	color: #A5732A;
}
.rvwUpd, .rvwDel {
	display: inline-block;
	border: 1px solid #808080;
	border-radius: 12px;
	background: #FFFFFF;
	color: #808080;
	margin-right: 3px;
	height: 30px;
	line-height: 30px;
	text-align: center;
	cursor: pointer;
}
</style>
<head>
</head>
<body>
	<%
		System.out.println(request.getParameter("mno"));

		int mno = Integer.parseInt(request.getParameter("mno"));

		MovieDAO m = new MovieDAO();
		MovieVO mvo = m.MovieCont(mno);
		Vector<ReviewVO> rev = m.Review(mno);
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
						<li><a class="btn btn-default active"
							href="../movie/movie_list.jsp">영화리스트</a></li>
						<li><a class="btn btn-default" href="movie_time_day1.jsp">상영시간표</a></li>
					</ul>

					<div class="col-sm-3">
						<!-- col-sm-3으로 하면 글씨랑 사진 딱 붙음 -->
						<img src="<%=mvo.getMposter()%>" style="height: 350px;"
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
						    <c:if test="${loginUser!=null }">
								<a href="../reservation/reservationView.jsp" class="btn btn-common uppercase" >예매하기</a>
							</c:if>
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
									<iframe
										src="https://www.youtube.com/embed/<%=mvo.getMvideo1()%>"
										style="height: 300px; width: 400px;"></iframe>
								</div>
								<div class="col-md-6">
									<iframe
										src="https://www.youtube.com/embed/<%=mvo.getMvideo2()%>"
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
									<img src="<%=mvo.getMimg1()%>"
										style="width: 1140px; height: 487px;" alt="">
								</div>
								<div class="item">
									<img src="<%=mvo.getMimg2()%>"
										style="width: 1140px; height: 487px;" alt="">
									<div class="carousel-caption"></div>
								</div>
								<div class="item">
									<img src="<%=mvo.getMimg3()%>"
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
         <form action="../movie/Review_Proc.jsp" method="post">
            <c:if test="${loginUser.id!=null }">
               <div class="row3">
                  <div align="left" class="row2" style="margin: 0; padding-right: 250px;">
                     <hr>
                     <div class="col-md-8" style="height: 120px; width: 880px;">
                        <div class="contact-form bottom">
                           <h2>리뷰</h2>
                           <!-- style="border-color: #A5732A;" -->
                              <select name="rgrade" class="input-lg" style="border-color: #A5732A;">
                              <option value="1">★☆☆☆☆</option>
                              <option value="2">★★☆☆☆</option>
                              <option value="3">★★★☆☆</option>
                              <option value="4">★★★★☆</option>
                              <option value="5" selected="selected">★★★★★</option>
                           </select> 
                           <input type="submit" style="height: 50px; width: 65px; margin-bottom: 10px;" value="작성" class="btn btn-submit"> 
                           <input type="reset" style="height: 50px; width: 65px; margin-bottom: 10px;" value="취소" class="btn btn-submit"> 
                        </div>
                     </div>
                  </div>
                     <textarea name="rcontent" class="form-control" rows="4" cols="500" style="width:900px;"placeholder=" 재미있게 보셨나요? 영화의 어떤 점이 좋았는지 이야기해주세요."></textarea>
                     <input type="hidden" name="rmovie" value="<%=mvo.getMno()%>">
                     <input type="hidden" name="rid" value="${loginUser.getId() }">
               </div>
            </c:if>
         </form>
			<!-- 리뷰 목록 -->
			<div class="row3">
				<div align="left" class="row2"
					style="margin: 0; padding-right: 250px;">
					<hr>
					<div class="comment-row">
						<div class="col-md-12">
							<h4 class="page-header" style="padding-top: 100px;">
								<strong><%=mvo.getMname()%></strong>에 대한 리뷰입니다!
							</h4>
							<!-- 리뷰 내용 -->
							<div style="text-align: left">
								<%
									for (int j = 0; j < rev.size(); j++) {
										ReviewVO rvo = rev.get(j);
										pageContext.setAttribute("rvo", rvo);
								%>
								<img src="../movie/images/user.png">&nbsp;&nbsp;<%=rvo.getRid()%>&nbsp;&nbsp;
								<font style="color: #FFBB00;"><c:forEach begin="1" end="${rvo.rgrade}">★</c:forEach></font>
								<font style="color:#808080;"><c:forEach begin="1" end="${5-rvo.rgrade}">☆</c:forEach></font> (${rvo.rgrade }.0)
								<p><%=rvo.getRcontent()%></p>
								<h5 style="text-align: right">
									<%=rvo.getRdate()%><br>
								<c:if test="${loginUser.id != null && loginUser.id == rvo.rid && loginUser.id!='admin'}">
								<button type="button" class="rvwUpd" onclick="location.href='Review_UpdateForm.jsp?rno=<%=rvo.getRno()%>&&<%=rvo.getRgrade() %>'" >수정</button>&nbsp;
								<button type=button class="rvwDel" onclick="location.href='Review_DeleteForm.jsp?rno=<%=rvo.getRno()%>'">삭제</button>
								</c:if>
									</h5>
								<c:if test="${loginUser.id=='admin'}">
									<h5 style="text-align: right">
										<button type=button class="rvwDel" onclick="location.href='Review_DeleteForm.jsp?rno=<%=rvo.getRno()%>'">삭제</button>
									</h5>
								</c:if>
								<hr>
								<%
									}
								%>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--/#portfolio-information-->
	<%@ include file="../main/footer.jsp"%>
</body>
</html>
