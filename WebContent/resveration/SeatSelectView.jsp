<%@page import="com.ezv.Dto.ReviewVO"%>
<%@page import="com.ezv.Dao.MovieDAO"%>
<%@page import="com.ezv.Dto.MovieVO"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../main/header.jsp"%>
<!doctype html>
<html>
<style>
.row3 {
	margin-right: -150px;
	margin-left: 150px;
}

.padding-top {
	margin-top: -80px;
}
</style>
<body>
	<section id="page-breadcrumb">
		<div class="vertical-center sun">
			<div class="container">
				<div class="row">
					<div class="action">
						<div class="col-sm-12">
							<h1 class="title">영화 예매</h1>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section id="portfolio-information" class="padding-top">
		<div class="container">
			<div class="row3">
				<div class="row">
					<div>
						<img src="../resveration/images/screen.png" style="width: 800px; height: 200px; align: center;">
					</div>
					<br>
					<table>
					<tr>
						<td style="border: 2px solid black; width: 30px;">
						<h5 style="text-align: center;">
								<b>A</b>
							</h5>
							</td>
							<td>
							&nbsp;&nbsp;&nbsp;<input type="button" value="A1" onclick="#"  style="height: 40px; align:center;">
							&nbsp;&nbsp;&nbsp;<input type="button" value="A2" onclick="#"  style="height: 40px; align:center;">
							&nbsp;&nbsp;&nbsp;<input type="button" value="A3" onclick="#"  style="height: 40px; align:center;">
							&nbsp;&nbsp;&nbsp;<input type="button" value="A4" onclick="#"  style="height: 40px; align:center;">
							&nbsp;&nbsp;&nbsp;<input type="button" value="A5" onclick="#"  style="height: 40px; align:center;">
							&nbsp;&nbsp;&nbsp;<input type="button" value="A6" onclick="#"  style="height: 40px; align:center;">
							&nbsp;&nbsp;&nbsp;<input type="button" value="A7" onclick="#"  style="height: 40px; align:center;">
							&nbsp;&nbsp;&nbsp;<input type="button" value="A8" onclick="#"  style="height: 40px; align:center;">
							&nbsp;&nbsp;&nbsp;<input type="button" value="A9" onclick="#"  style="height: 40px; align:center;">
							&nbsp;&nbsp;&nbsp;<input type="button" value="A10" onclick="#" style="height: 40px; align:center;">
							&nbsp;&nbsp;&nbsp;<input type="button" value="A11" onclick="#" style="height: 40px; align:center;">
							&nbsp;&nbsp;&nbsp;<input type="button" value="A12" onclick="#" style="height: 40px; align:center;">
							</td>
					</tr>
					<tr>
						<td style="border: 2px solid black; width: 30px;">
						<h5 style="text-align: center;">
								<b>B</b>
							</h5>
							</td>
							<td>
							&nbsp;&nbsp;&nbsp;<input type="button" value="B1" onclick="#"  style="height: 40px; align:center;">
							&nbsp;&nbsp;&nbsp;<input type="button" value="B2" onclick="#"  style="height: 40px; align:center;">
							&nbsp;&nbsp;&nbsp;<input type="button" value="B3" onclick="#"  style="height: 40px; align:center;">
							&nbsp;&nbsp;&nbsp;<input type="button" value="B4" onclick="#"  style="height: 40px; align:center;">
							&nbsp;&nbsp;&nbsp;<input type="button" value="B5" onclick="#"  style="height: 40px; align:center;">
							&nbsp;&nbsp;&nbsp;<input type="button" value="B6" onclick="#"  style="height: 40px; align:center;">
							&nbsp;&nbsp;&nbsp;<input type="button" value="B7" onclick="#"  style="height: 40px; align:center;">
							&nbsp;&nbsp;&nbsp;<input type="button" value="B8" onclick="#"  style="height: 40px; align:center;">
							&nbsp;&nbsp;&nbsp;<input type="button" value="B9" onclick="#"  style="height: 40px; align:center;">
							&nbsp;&nbsp;&nbsp;<input type="button" value="B10" onclick="#" style="height: 40px; align:center;">
							&nbsp;&nbsp;&nbsp;<input type="button" value="B11" onclick="#" style="height: 40px; align:center;">
							&nbsp;&nbsp;&nbsp;<input type="button" value="B12" onclick="#" style="height: 40px; align:center;">
							</td>
					</tr>
					<tr>
						<td style="border: 2px solid black; width: 30px;">
						<h5 style="text-align: center;">
								<b>C</b>
							</h5>
							</td>
							<td>
							&nbsp;&nbsp;&nbsp;<input type="button" value="C1" onclick="#"  style="height: 40px; align:center;">
							&nbsp;<input type="button" value="C2" onclick="#"  style="height: 40px; align:center;">
							&nbsp;<input type="button" value="C3" onclick="#"  style="height: 40px; align:center;">
							&nbsp;&nbsp;&nbsp;<input type="button" value="C4" onclick="#"  style="height: 40px; align:center;">
							&nbsp;&nbsp;&nbsp;<input type="button" value="C5" onclick="#"  style="height: 40px; align:center;">
							&nbsp;&nbsp;&nbsp;<input type="button" value="C6" onclick="#"  style="height: 40px; align:center;">
							&nbsp;&nbsp;&nbsp;<input type="button" value="C7" onclick="#"  style="height: 40px; align:center;">
							&nbsp;&nbsp;&nbsp;<input type="button" value="C8" onclick="#"  style="height: 40px; align:center;">
							&nbsp;&nbsp;&nbsp;<input type="button" value="C9" onclick="#"  style="height: 40px; align:center;">
							&nbsp;&nbsp;&nbsp;<input type="button" value="C10" onclick="#" style="height: 40px; align:center;">
							&nbsp;&nbsp;&nbsp;<input type="button" value="C11" onclick="#" style="height: 40px; align:center;">
							&nbsp;&nbsp;&nbsp;<input type="button" value="C12" onclick="#" style="height: 40px; align:center;">
							</td>
					</tr>
					</table>
					<div>
						<div style="border:2px solid black; height:200px; width:600px;">
							<div></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<%@ include file="../main/footer.jsp"%>
</body>
</html>
