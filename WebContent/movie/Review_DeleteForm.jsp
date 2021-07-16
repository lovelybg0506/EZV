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
<title>Review_DeleteForm</title>
<style>
.portfolio-filter {
	margin: -50px 0 50px 0;
	padding: 0;
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
	%>
	<!-- 리뷰 목록 -->
	<div align="center">
	<h2>리뷰 삭제</h2>
		<form action="Review_DeleteProc.jsp" method="post">
		<input type="hidden" name="rmovie" value="<%=rvo.getRmovie() %>">
			<table width="600" border="1">
				<tr height="40">
					<td width="100"  id="tdh" align="center">작성자</td>
					<td width="200" align="center">&nbsp;<%=rvo.getRid() %></td>
					<td width="100"  id="tdh" align="center">작성일</td>
					<td width="200" align="center">&nbsp;<%=rvo.getRdate() %></td>
				</tr>
				<tr height="40">
					<td width="200"  id="tdh" align="center">평점</td>
				<td width="400" colspan="4">&nbsp;
						<%
										pageContext.setAttribute("rvo", rvo);
						%>
					<font style="color: #FFBB00;"><c:forEach begin="1" end="${rvo.rgrade}">★</c:forEach></font>
					<font style="color:#808080;"><c:forEach begin="1" end="${5-rvo.rgrade}">☆</c:forEach></font> (${rvo.rgrade }.0)
					</td>
				</tr>
				<tr height="40">
					<td width="200"  id="tdh" align="center">리뷰 내용</td>
					<td width="400" colspan="4">&nbsp;<%=rvo.getRcontent() %></td>
				</tr>
				<tr height="40">
					<td colspan="4" align="center">
					<input type="hidden" name="rno" value="<%= rvo.getRno() %>">
					<input type="submit" id="tdh" value="리뷰 삭제">&nbsp;&nbsp;
					<a href="#" onclick="history.back()"><button type="button">취소</button></a>
				</tr>
			</table>
		</form>
	</div>
	<%@ include file="../main/footer.jsp"%>
</body>
</html>