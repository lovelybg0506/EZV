<%@page import="com.ezv.Dto.MovieVO"%>
<%@page import="com.ezv.Dao.MovieDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="ReviewVO" class="com.ezv.Dto.ReviewVO">
	<jsp:setProperty name="ReviewVO" property="*" />
</jsp:useBean>

<%

	MovieDAO mdao=new MovieDAO();
	mdao.reviewInsert(ReviewVO);
	
	// 게시글 저장후 전체 게시글 보기
	response.sendRedirect("movie_Detail.jsp?mno="+ReviewVO.getRmovie());
%>
</body>
</html>