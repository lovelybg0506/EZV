<%@page import="com.ezv.Dao.QBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>qboardReWriteProc</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>

<!-- 데이터를 한번에 받아오는 빈클래스사용  -->
<jsp:useBean id="boardbean" class="com.ezv.Dto.QBoardBean">
	<jsp:setProperty name="boardbean" property="*"/>
</jsp:useBean>

<%
	QBoardDAO bdao=new QBoardDAO();
	bdao.reWriteBoard(boardbean);
	
	
	response.sendRedirect("service_question.jsp");
%>
</body>
</html>