<%@page import="java.util.Vector"%>
<%@page import="com.ezv.Dto.ReviewVO"%>
<%@page import="com.ezv.Dao.MovieDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../main/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Review_UpdateForm</title>
<style>
.portfolio-filter {
	margin: -50px 0 50px 0;
	padding: 0;
}

.row3 {
	margin-right: -200px;
	margin-left: 200px;
	align: center;
}
#tdh, h2 {
	color: #A5732A;
}
</style>
</head>
<body>
	<%
		MovieDAO mdao = new MovieDAO();
		HttpSession Session = request.getSession();
		int rno = Integer.parseInt(request.getParameter("rno"));
		ReviewVO rvo = mdao.getReviewCont(rno);
		String rid = (String)Session.getAttribute("id");
/* 		ReviewVO rvo = mdao.getOneUpdateReview(rid); */
	%>
	<!-- 리뷰 목록 -->
	<div align="center">
	<h2>리뷰 수정</h2>
		<form action="Review_UpdateProc.jsp" method="post">
			<input type="hidden" name="rmovie" value="<%=rvo.getRmovie() %>">
			<table width="600" border="1">
				<tr height="40">
					<td id="tdh" width="100" align="center">작성자</td>
					<td width="200" align="center">&nbsp;<%=rvo.getRid() %></td>
					<td id="tdh" width="100" align="center">작성일</td>
					<td width="200" align="center">&nbsp;<%=rvo.getRdate() %></td>
				</tr>
				<tr height="40">
					<td id="tdh" width="200" align="center">평점</td>
					<td width="400" colspan="4">&nbsp;
						<%
										pageContext.setAttribute("rvo", rvo);
						%>
					<select name="rgrade" class="input-md" style="border-color: #A5732A;">
							<option value="0">
							<c:forEach begin="1" end="${rvo.rgrade}">★</c:forEach>
							<c:forEach begin="1" end="${5-rvo.rgrade}">☆</c:forEach>
							</option>
							<option value="1">★☆☆☆☆</option>
							<option value="2">★★☆☆☆</option>
							<option value="3">★★★☆☆</option>
							<option value="4">★★★★☆</option>
							<option value="5">★★★★★</option>
					</select> 
					</td>
				</tr>
				<tr height="40">
					<td id="tdh" width="200" align="center">리뷰 내용</td>
					<td width="400" colspan="4">
					&nbsp;<textarea rows="10" cols="60" name="rcontent" style="margin-top:10px;"><%=rvo.getRcontent() %></textarea></td>
				</tr>
				<tr height="40">
					<td colspan="4" align="center">
					<input type="hidden" name="rno" value="<%= rvo.getRno() %>">
					<input type="submit" id="tdh" value="리뷰 수정">&nbsp;&nbsp;
					<input type="reset" id="tdh" value="다시 작성"></td>
				</tr>
			</table>
		</form>
		</div>
	<%@ include file="../main/footer.jsp"%>
</body>
</html>