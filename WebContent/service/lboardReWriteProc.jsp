<%@page import="com.ezv.Dao.LBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BoardReWriteProc</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>

<!-- 데이터를 한번에 받아오는 빈클래스사용  -->
<jsp:useBean id="boardbean" class="com.ezv.Dto.LBoardBean">
	<jsp:setProperty name="boardbean" property="*"/>
</jsp:useBean>

<%
	LBoardDAO bdao=new LBoardDAO();
	bdao.reWriteBoard(boardbean);
	
	
	response.sendRedirect("service_LnF.jsp");
%>
</body>
</html>