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
	<div class="row3">
		<form action="Review_UpdateProc.jsp" method="post">
			<input type="hidden" name="rmovie" value="<%=rvo.getRmovie() %>">
			<table width="600" border="1">
				<tr height="40">
					<td width="120" align="center">작성자</td>
					<td width="180" align="center"><%=rvo.getRid() %></td>
					<td width="120" align="center">작성일</td>
					<td width="180" align="center"><%=rvo.getRdate() %></td>
				</tr>
				<tr height="40">
					<td width="120" align="center">리뷰 내용</td>
					<td width="480" colspan="3"><textarea rows="10" cols="60"
							name="rcontent" align="left"> <%=rvo.getRcontent() %></textarea></td>
				</tr>
				<tr height="40">
					<td colspan="4" align="center">
					<input type="hidden" name="rno" value="<%= rvo.getRno() %>">
					<input type="submit" value="리뷰 수정">&nbsp;&nbsp;
					<input type="reset" value="다시 작성"></td>
				</tr>
			</table>
		</form>
	</div>
	<%@ include file="../main/footer.jsp"%>
</body>
</html>