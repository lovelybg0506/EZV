<%@page import="com.ezv.Dto.ReviewVO"%>
<%@page import="com.ezv.Dao.MovieDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../main/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Review_UpdateProc</title>
<style>
.portfolio-filter {
	margin: -50px 0 50px 0;
	padding: 0;
}

.row3 {
	margin-right: -200px;
	margin-left: 200px;
	align:center;
}
</style>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
%>
	<jsp:useBean id="ReviewVO" class="com.ezv.Dto.ReviewVO">
		<jsp:setProperty name="ReviewVO" property="*"/>
	</jsp:useBean>
	
	<%
		MovieDAO mdao=new MovieDAO();
		mdao.DelteMovieReview(ReviewVO);	
		
		response.sendRedirect("movie_Detail.jsp?mno="+ReviewVO.getRmovie());
%>	
<%@ include file="../main/footer.jsp"%>
</body>
</html>