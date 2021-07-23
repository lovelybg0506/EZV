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
	margin: -30px 0 30px 0;
	padding: 0;
}
#portfolio-information.padding-top {
    padding-top: 50px;
}
.row3 {
    margin-right: 10px;
    margin-left: 10px;
}
</style>
<head>
<meta charset="utf-8">
<title>Grade/Review</title>
<body>
	<section id="page-breadcrumb">
		<div class="vertical-center sun">
			<div class="container">
				<div class="row">
					<div class="action">
						<div class="col-sm-12">
							<h1 class="title">상영시간</h1>
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
					<li><a class="btn btn-default"  href="movie_time_day1.jsp" data-filter="*"><font color=blue>7월 10일&nbsp;(토)</font></a></li>
					<li><a class="btn btn-default" href="movie_time_day2.jsp" data-filter="*"><font color=red>7월 11일&nbsp;(일)</font></a></li>
					<li><a class="btn btn-default"  href="movie_time_day3.jsp" data-filter="*">7월 12일&nbsp;(월)</a></li>
					<li><a class="btn btn-default"  href="movie_time_day4.jsp" data-filter="*">7월 13일&nbsp;(화)</a></li>
					<li><a class="btn btn-default active"  href="movie_time_day5.jsp" data-filter="*">7월 14일&nbsp;(수)</a></li>
					<li><a class="btn btn-default"  href="movie_time_day6.jsp" data-filter="*">7월 15일&nbsp;(목)</a></li>
					<li><a class="btn btn-default"  href="movie_time_day7.jsp" data-filter="*">7월 16일&nbsp;(금)</a></li>
				</ul>
				</div>
				<div class="row3">
				<div align="right" class="row2" style="margin: 0; padding-right: 50px;">
					<img src="../movie/images/sun.png" style="height:30px; width:30px;"><font size=1px>주간 영화</font>
					<img src="../movie/images/moon.png" style="height:30px; width:30px;"><font size=1px>심야 영화</font>
				</div>
				<div class="row3">
				<div align="left" class="row2" style="margin: 0; padding-right: 250px;">
					<hr style="width:1150px;">
						<b>
							<img src="../movie/images/12year.png" style="height: 30px;">&nbsp;&nbsp;Avengers: AndGame&nbsp;&nbsp;<font color=blue>상영중&nbsp;&nbsp;</font>
						</b>
						<font size="2px">SF, 히어로/ 181분/ 2019.04.24개봉</font>
				</div>
				<div class="project-info overflow">
					<ul class="elements">
						<li><i class="fa fa-angle-right"></i>
						<b>&nbsp;2D&nbsp;&nbsp;|&nbsp;&nbsp;1관&nbsp;&nbsp;|&nbsp;&nbsp;4F</b><br>
						</li>
					
					</ul>
					<ul>
						<li>
							<b style="align:center;">08:40</b>&nbsp; &nbsp;
							<img src="../movie/images/sun.png" style="height:20px;  align:center;"><b>&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">10:30&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">13:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">15:40&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">21:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">23:50</b>
							<img src="../movie/images/moon.png" style="height:20px;  align:center;">
						</li>
					</ul>
						<ul class="elements">
						<li><i class="fa fa-angle-right"></i>
						<b>&nbsp;2D&nbsp;&nbsp;|&nbsp;&nbsp;2관&nbsp;&nbsp;|&nbsp;&nbsp;7F</b><br>
						</li>
					
					</ul>
					<ul>
						<li>
							<b style="align:center;">08:40</b>&nbsp; &nbsp;
							<img src="../movie/images/sun.png" style="height:20px;  align:center;"><b>&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">10:30&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">13:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">15:40&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">21:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">23:50</b>
							<img src="../movie/images/moon.png" style="height:20px;  align:center;">
						</li>
					</ul>
				</div>
			</div>
			<div class="row3">
			<div align="left" class="row2" style="margin: 0; padding-right: 250px;">
				<hr style="width:1150px;">
					<b>
						<img src="../movie/images/15year.png" style="height: 30px;">&nbsp;&nbsp;발신제한&nbsp;&nbsp;<font color=blue>상영중&nbsp;&nbsp;</font>
					</b>
						<font size="2px">드라마, 스릴러/ 94분/ 2021.06.23개봉</font>
				</div>
					<div class="project-info overflow">
					<ul class="elements">
						<li><i class="fa fa-angle-right"></i>
						<b>&nbsp;2D&nbsp;&nbsp;|&nbsp;&nbsp;1관&nbsp;&nbsp;|&nbsp;&nbsp;4F</b><br>
						</li>
					</ul>
					<ul>
						<li>
							<b style="align:center;">08:40</b>&nbsp; &nbsp;
							<img src="../movie/images/sun.png" style="height:20px;  align:center;"><b>&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">10:30&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">13:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">15:40&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">21:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">23:50</b>
							<img src="../movie/images/moon.png" style="height:20px;  align:center;">
						</li>
					</ul>
					<ul class="elements">
						<li><i class="fa fa-angle-right"></i>
						<b>&nbsp;2D&nbsp;&nbsp;|&nbsp;&nbsp;2관&nbsp;&nbsp;|&nbsp;&nbsp;7F</b><br>
						</li>
					
					</ul>
					<ul>
						<li>
							<b style="align:center;">08:40</b>&nbsp; &nbsp;
							<img src="../movie/images/sun.png" style="height:20px;  align:center;"><b>&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">10:30&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">13:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">15:40&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">21:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">23:50</b>
							<img src="../movie/images/moon.png" style="height:20px;  align:center;">
						</li>
					</ul>
				</div>
			</div>
			<div class="row3">
					<div align="left" class="row2" style="margin: 0; padding-right: 250px;">
					<hr style="width:1150px;">
						<b>
							<img src="../movie/images/15year.png" style="height: 30px;">&nbsp;&nbsp;다빈치코드&nbsp;&nbsp;<font color=blue>상영중&nbsp;&nbsp;</font>
						</b>
						<font size="2px">미스터리/ 147분/ 2006.05.18개봉</font>
				</div>
				<div class="project-info overflow">
					<ul class="elements">
						<li><i class="fa fa-angle-right"></i>
						<b>&nbsp;2D&nbsp;&nbsp;|&nbsp;&nbsp;1관&nbsp;&nbsp;|&nbsp;&nbsp;4F</b><br>
						</li>
					</ul>
					<ul>
						<li>
							<b style="align:center;">08:40</b>&nbsp; &nbsp;
							<img src="../movie/images/sun.png" style="height:20px;  align:center;"><b>&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">10:30&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">13:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">15:40&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">21:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">23:50</b>
							<img src="../movie/images/moon.png" style="height:20px;  align:center;">
						</li>
					</ul>
					<ul class="elements">
						<li><i class="fa fa-angle-right"></i>
						<b>&nbsp;2D&nbsp;&nbsp;|&nbsp;&nbsp;2관&nbsp;&nbsp;|&nbsp;&nbsp;7F</b><br>
						</li>
					</ul>
					<ul>
						<li>
							<b style="align:center;">08:40</b>&nbsp; &nbsp;
							<img src="../movie/images/sun.png" style="height:20px;  align:center;"><b>&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">10:30&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">13:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">15:40&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">21:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">23:50</b>
							<img src="../movie/images/moon.png" style="height:20px;  align:center;">
						</li>
					</ul>
				</div>
			</div>
			<div class="row3">
					<div align="left" class="row2" style="margin: 0; padding-right: 250px;">
					<hr style="width:1150px;">
						<b>
							<img src="../movie/images/18year.png" style="height: 30px;">&nbsp;&nbsp;지구를 지켜라!&nbsp;&nbsp;<font color=blue>상영중&nbsp;&nbsp;</font>
						</b>
						<font size="2px">SF, 스릴러/ 117분/ 2003.04.04개봉</font>
				</div>
					<div class="project-info overflow">
					<ul class="elements">
						<li><i class="fa fa-angle-right"></i>
						<b>&nbsp;2D&nbsp;&nbsp;|&nbsp;&nbsp;1관&nbsp;&nbsp;|&nbsp;&nbsp;4F</b><br>
						</li>
					</ul>
					<ul>
						<li>
							<b style="align:center;">08:40</b>&nbsp; &nbsp;
							<img src="../movie/images/sun.png" style="height:20px;  align:center;"><b>&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">10:30&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">13:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">15:40&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">21:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">23:50</b>
							<img src="../movie/images/moon.png" style="height:20px;  align:center;">
						</li>
					</ul>
					<ul class="elements">
						<li><i class="fa fa-angle-right"></i>
						<b>&nbsp;2D&nbsp;&nbsp;|&nbsp;&nbsp;2관&nbsp;&nbsp;|&nbsp;&nbsp;7F</b><br>
						</li>
					</ul>
					<ul>
						<li>
							<b style="align:center;">08:40</b>&nbsp; &nbsp;
							<img src="../movie/images/sun.png" style="height:20px;  align:center;"><b>&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">10:30&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">13:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">15:40&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">21:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">23:50</b>
							<img src="../movie/images/moon.png" style="height:20px;  align:center;">
						</li>
					</ul>
				</div>
			</div>
				<div class="row3">
					<div align="left" class="row2" style="margin: 0; padding-right: 250px;">
					<hr style="width:1150px;">
						<b>
							<img src="../movie/images/allyear.png" style="height: 30px;">&nbsp;&nbsp;해리포터와 마법사의 돌&nbsp;&nbsp;<font color=blue>상영중&nbsp;&nbsp;</font>
						</b>
						<font size="2px">판타지, 모험, 액션, 가족/ 152분/ 2001.12.14개봉</font>
				</div>
				<div class="project-info overflow">
				<ul class="elements">
						<li><i class="fa fa-angle-right"></i>
						<b>&nbsp;2D&nbsp;&nbsp;|&nbsp;&nbsp;1관&nbsp;&nbsp;|&nbsp;&nbsp;4F</b><br>
						</li>
					</ul>
					<ul>
						<li>
							<b style="align:center;">08:40</b>&nbsp; &nbsp;
							<img src="../movie/images/sun.png" style="height:20px;  align:center;"><b>&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">10:30&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">13:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">15:40&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">21:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">23:50</b>
							<img src="../movie/images/moon.png" style="height:20px;  align:center;">
						</li>
					</ul>
					<ul class="elements">
						<li><i class="fa fa-angle-right"></i>
						<b>&nbsp;2D&nbsp;&nbsp;|&nbsp;&nbsp;2관&nbsp;&nbsp;|&nbsp;&nbsp;7F</b><br>
						</li>
					</ul>
					<ul>
						<li>
							<b style="align:center;">08:40</b>&nbsp; &nbsp;
							<img src="../movie/images/sun.png" style="height:20px;  align:center;"><b>&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">10:30&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">13:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">15:40&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">21:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">23:50</b>
							<img src="../movie/images/moon.png" style="height:20px;  align:center;">
						</li>
					</ul>
				</div>
			</div>
		<div class="row3">
					<div align="left" class="row2" style="margin: 0; padding-right: 250px;">
					<hr style="width:1150px;">
						<b>
							<img src="../movie/images/15year.png" style="height: 30px;">&nbsp;&nbsp;극한직업&nbsp;&nbsp;<font color=blue>상영중&nbsp;&nbsp;</font>
						</b>
						<font size="2px">코미디/ 111분/ 2019.01.23개봉</font>
				</div>
				<div class="project-info overflow">
					<ul class="elements">
						<li><i class="fa fa-angle-right"></i>
						<b>&nbsp;2D&nbsp;&nbsp;|&nbsp;&nbsp;1관&nbsp;&nbsp;|&nbsp;&nbsp;4F</b><br>
						</li>
					</ul>
					<ul>
						<li>
							<b style="align:center;">08:40</b>&nbsp; &nbsp;
							<img src="../movie/images/sun.png" style="height:20px;  align:center;"><b>&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">10:30&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">13:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">15:40&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">21:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">23:50</b>
							<img src="../movie/images/moon.png" style="height:20px;  align:center;">
						</li>
					</ul>
					<ul class="elements">
						<li><i class="fa fa-angle-right"></i>
						<b>&nbsp;2D&nbsp;&nbsp;|&nbsp;&nbsp;2관&nbsp;&nbsp;|&nbsp;&nbsp;7F</b><br>
						</li>
					</ul>
					<ul>
						<li>
							<b style="align:center;">08:40</b>&nbsp; &nbsp;
							<img src="../movie/images/sun.png" style="height:20px;  align:center;"><b>&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">10:30&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">13:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">15:40&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">21:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">23:50</b>
							<img src="../movie/images/moon.png" style="height:20px;  align:center;">
						</li>
					</ul>
				</div>
			</div>
			<div class="row3">
					<div align="left" class="row2" style="margin: 0; padding-right: 250px;">
					<hr style="width:1150px;">
						<b>
							<img src="../movie/images/12year.png" style="height: 30px;">&nbsp;&nbsp;빛나는 순간&nbsp;&nbsp;<font color=blue>상영중&nbsp;&nbsp;</font>
						</b>
						<font size="2px">드라마/ 95분/ 2021.06.30개봉</font>
				</div>
				<div class="project-info overflow">
					<ul class="elements">
						<li><i class="fa fa-angle-right"></i>
						<b>&nbsp;2D&nbsp;&nbsp;|&nbsp;&nbsp;1관&nbsp;&nbsp;|&nbsp;&nbsp;4F</b><br>
						</li>
					</ul>
					<ul>
						<li>
							<b style="align:center;">08:40</b>&nbsp; &nbsp;
							<img src="../movie/images/sun.png" style="height:20px;  align:center;"><b>&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">10:30&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">13:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">15:40&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">21:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">23:50</b>
							<img src="../movie/images/moon.png" style="height:20px;  align:center;">
						</li>
					</ul>
					<ul class="elements">
						<li><i class="fa fa-angle-right"></i>
						<b>&nbsp;2D&nbsp;&nbsp;|&nbsp;&nbsp;2관&nbsp;&nbsp;|&nbsp;&nbsp;7F</b><br>
						</li>
					</ul>
					<ul>
						<li>
							<b style="align:center;">08:40</b>&nbsp; &nbsp;
							<img src="../movie/images/sun.png" style="height:20px;  align:center;"><b>&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">10:30&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">13:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">15:40&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">21:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">23:50</b>
							<img src="../movie/images/moon.png" style="height:20px;  align:center;">
						</li>
					</ul>
				</div>
		</div>
		<div class="row3">
					<div align="left" class="row2" style="margin: 0; padding-right: 250px;">
					<hr style="width:1150px;">
						<b>
							<img src="../movie/images/allyear.png" style="height: 30px;">&nbsp;&nbsp;모노노케 히메&nbsp;&nbsp;<font color=blue>상영중&nbsp;&nbsp;</font>
						</b>
						<font size="2px">애니메이션, 모험, 액션/ 135분/ 2003.04.25개봉</font>
				</div>
				<div class="project-info overflow">
					<ul class="elements">
						<li><i class="fa fa-angle-right"></i>
						<b>&nbsp;2D&nbsp;&nbsp;|&nbsp;&nbsp;1관&nbsp;&nbsp;|&nbsp;&nbsp;4F</b><br>
						</li>
					</ul>
					<ul>
						<li>
							<b style="align:center;">08:40</b>&nbsp; &nbsp;
							<img src="../movie/images/sun.png" style="height:20px;  align:center;"><b>&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">10:30&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">13:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">15:40&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">21:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">23:50</b>
							<img src="../movie/images/moon.png" style="height:20px;  align:center;">
						</li>
					</ul>
					<ul class="elements">
						<li><i class="fa fa-angle-right"></i>
						<b>&nbsp;2D&nbsp;&nbsp;|&nbsp;&nbsp;2관&nbsp;&nbsp;|&nbsp;&nbsp;7F</b><br>
						</li>
					</ul>
					<ul>
						<li>
							<b style="align:center;">08:40</b>&nbsp; &nbsp;
							<img src="../movie/images/sun.png" style="height:20px;  align:center;"><b>&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">10:30&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">13:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">15:40&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">21:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">23:50</b>
							<img src="../movie/images/moon.png" style="height:20px;  align:center;">
						</li>
					</ul>
				</div>
			</div>
			<div class="row3">
					<div align="left" class="row2" style="margin: 0; padding-right: 250px;">
					<hr style="width:1150px;">
						<b>
							<img src="../movie/images/12year.png" style="height: 30px;">&nbsp;&nbsp;괴물&nbsp;&nbsp;<font color=blue>상영중&nbsp;&nbsp;</font>
						</b>
						<font size="2px">액션, 스릴러, 코미디, SF, 판타지/ 119분/ 2006.07.27개봉</font>
				</div>
					<div class="project-info overflow">
					<ul class="elements">
						<li><i class="fa fa-angle-right"></i>
						<b>&nbsp;2D&nbsp;&nbsp;|&nbsp;&nbsp;1관&nbsp;&nbsp;|&nbsp;&nbsp;4F</b><br>
						</li>
					</ul>
					<ul>
						<li>
							<b style="align:center;">08:40</b>&nbsp; &nbsp;
							<img src="../movie/images/sun.png" style="height:20px;  align:center;"><b>&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">10:30&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">13:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">15:40&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">21:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">23:50</b>
							<img src="../movie/images/moon.png" style="height:20px;  align:center;">
						</li>
					</ul>
					<ul class="elements">
						<li><i class="fa fa-angle-right"></i>
						<b>&nbsp;2D&nbsp;&nbsp;|&nbsp;&nbsp;2관&nbsp;&nbsp;|&nbsp;&nbsp;7F</b><br>
						</li>
					</ul>
					<ul>
						<li>
							<b style="align:center;">08:40</b>&nbsp; &nbsp;
							<img src="../movie/images/sun.png" style="height:20px;  align:center;"><b>&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">10:30&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">13:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">15:40&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">21:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">23:50</b>
							<img src="../movie/images/moon.png" style="height:20px;  align:center;">
						</li>
					</ul>
				</div>
			</div>
			<div class="row3">
				<div align="left" class="row2" style="margin: 0; padding-right: 250px;">
					<hr style="width:1150px;">
						<b>
							<img src="../movie/images/18year.png" style="height: 30px;">&nbsp;&nbsp;시계태엽 오렌지&nbsp;&nbsp;<font color=blue>상영중&nbsp;&nbsp;</font>
						</b>
						<font size="2px">범죄, 드라마/ 136분/ 1971.12.19개봉</font>
				</div>
					<div class="project-info overflow">
					<ul class="elements">
						<li><i class="fa fa-angle-right"></i>
						<b>&nbsp;2D&nbsp;&nbsp;|&nbsp;&nbsp;1관&nbsp;&nbsp;|&nbsp;&nbsp;4F</b><br>
						</li>
					</ul>
					<ul>
						<li>
							<b style="align:center;">08:40</b>&nbsp; &nbsp;
							<img src="../movie/images/sun.png" style="height:20px;  align:center;"><b>&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">10:30&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">13:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">15:40&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">21:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">23:50</b>
							<img src="../movie/images/moon.png" style="height:20px;  align:center;">
						</li>
					</ul>
					<ul class="elements">
						<li><i class="fa fa-angle-right"></i>
						<b>&nbsp;2D&nbsp;&nbsp;|&nbsp;&nbsp;2관&nbsp;&nbsp;|&nbsp;&nbsp;7F</b><br>
						</li>
					</ul>
					<ul>
						<li>
							<b style="align:center;">08:40</b>&nbsp; &nbsp;
							<img src="../movie/images/sun.png" style="height:20px;  align:center;"><b>&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">10:30&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">13:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">15:40&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">21:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">23:50</b>
							<img src="../movie/images/moon.png" style="height:20px;  align:center;">
						</li>
					</ul>
					</div>
				</div>
			<div class="row3">
				<div align="left" class="row2" style="margin: 0; padding-right: 250px;">
					<hr style="width:1150px;">
						<b>
							<img src="../movie/images/12year.png" style="height: 30px;">&nbsp;&nbsp;너의 이름은&nbsp;&nbsp;<font color=blue>상영중&nbsp;&nbsp;</font>
						</b>
						<font size="2px">애니메이션, 드라마, 멜로/로맨스/ 106분/ 2018.01.04개봉</font>
				</div>
					<div class="project-info overflow">
					<ul class="elements">
						<li><i class="fa fa-angle-right"></i>
						<b>&nbsp;2D&nbsp;&nbsp;|&nbsp;&nbsp;1관&nbsp;&nbsp;|&nbsp;&nbsp;4F</b><br>
						</li>
					</ul>
					<ul>
						<li>
							<b style="align:center;">08:40</b>&nbsp; &nbsp;
							<img src="../movie/images/sun.png" style="height:20px;  align:center;"><b>&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">10:30&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">13:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">15:40&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">21:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">23:50</b>
							<img src="../movie/images/moon.png" style="height:20px;  align:center;">
						</li>
					</ul>
					<ul class="elements">
						<li><i class="fa fa-angle-right"></i>
						<b>&nbsp;2D&nbsp;&nbsp;|&nbsp;&nbsp;2관&nbsp;&nbsp;|&nbsp;&nbsp;7F</b><br>
						</li>
					</ul>
					<ul>
						<li>
							<b style="align:center;">08:40</b>&nbsp; &nbsp;
							<img src="../movie/images/sun.png" style="height:20px;  align:center;"><b>&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">10:30&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">13:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">15:40&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">21:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">23:50</b>
							<img src="../movie/images/moon.png" style="height:20px;  align:center;">
						</li>
					</ul>
					</div>
				</div>
			<div class="row3">
				<div align="left" class="row2" style="margin: 0; padding-right: 250px;">
					<hr style="width:1150px;">
						<b>
							<img src="../movie/images/12year.png" style="height: 30px;">&nbsp;&nbsp;블랙 위도우&nbsp;&nbsp;<font color=blue>상영중&nbsp;&nbsp;</font>
						</b>
						<font size="2px">액션, 모험, SF/ 134분/ 2021.07.07개봉</font>
				</div>
					<div class="project-info overflow">
					<ul class="elements">
						<li><i class="fa fa-angle-right"></i>
						<b>&nbsp;2D&nbsp;&nbsp;|&nbsp;&nbsp;1관&nbsp;&nbsp;|&nbsp;&nbsp;4F</b><br>
						</li>
					</ul>
					<ul>
						<li>
							<b style="align:center;">08:40</b>&nbsp; &nbsp;
							<img src="../movie/images/sun.png" style="height:20px;  align:center;"><b>&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">10:30&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">13:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">15:40&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">21:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">23:50</b>
							<img src="../movie/images/moon.png" style="height:20px;  align:center;">
						</li>
					</ul>
					<ul class="elements">
						<li><i class="fa fa-angle-right"></i>
						<b>&nbsp;2D&nbsp;&nbsp;|&nbsp;&nbsp;2관&nbsp;&nbsp;|&nbsp;&nbsp;7F</b><br>
						</li>
					</ul>
					<ul>
						<li>
							<b style="align:center;">08:40</b>&nbsp; &nbsp;
							<img src="../movie/images/sun.png" style="height:20px;  align:center;"><b>&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">10:30&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">13:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">15:40&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">21:20&nbsp; &nbsp;|&nbsp; &nbsp;</b>
							<b style="align:center;">23:50</b>
							<img src="../movie/images/moon.png" style="height:20px;  align:center;">
						</li>
					</ul>
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
