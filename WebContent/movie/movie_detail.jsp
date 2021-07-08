<%@page import="com.ezv.Dto.MovieVO"%>
<%@page import="com.ezv.Dao.MovieDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../main/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Movie</title>
</head>
<body>
<%
	MovieDAO mdao=new MovieDAO();
	Vector<MovieVO> mov=mdao.Movie();
%>
<div align="center">
<h2>영화 목록</h2>
	<table width="800" border="1">
		<tr height="50">
			<td align="center" width="100">번호</td>
			<td align="center" width="200">제목</td>
			<td align="center" width="200">내용</td>
			<td align="center" width="200">감독</td>
			<td align="center" width="200">배우</td>
			<td align="center" width="200">장르</td>
			<td align="center" width="200">날짜</td>
			<td align="center" width="200">등급</td>
			<td align="center" width="200">이미지</td>
			<td align="center" width="200">파일사이즈</td>
		</tr>
		<%
			for(int i=0;i<mov.size();i++){
				MovieVO mvo=mov.get(i);
		%>
			<tr height="50">
				<td align="center" width="100"><%=mvo.getMno() %>
				<td align="center" width="200"><%=mvo.getMname() %>
				<td align="center" width="200"><%=mvo.getMcontent() %>
				<td align="center" width="200"><%=mvo.getMdirector() %>
				<td align="center" width="200"><%=mvo.getMactor() %>
				<td align="center" width="200"><%=mvo.getMgenre()%></td>
				<td align="center" width="200"><%=mvo.getMdate()%></td>
				<td align="center" width="200"><%=mvo.getMgrade()%></td>
				<td align="center" width="200"><%=mvo.getMimg()%></td>
				<td align="center" width="200"><%=mvo.getMfilesize()%></td>
			</tr>
		<%
			}
		%>
	</table>
</div>
</body>
<%@ include file="../main/footer.jsp" %>
</html>