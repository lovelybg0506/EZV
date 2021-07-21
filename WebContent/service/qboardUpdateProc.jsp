<%@page import="com.ezv.Dao.QBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>qboardUpdateProc</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
%>

	<jsp:useBean id="boardbean" class="com.ezv.Dto.QBoardBean">
	<jsp:setProperty name="boardbean" property="*"/>
	</jsp:useBean>
	
<%
	QBoardDAO bdao=new QBoardDAO();

	
	
	bdao.updateBoard(boardbean);
		response.sendRedirect("service_question.jsp");
	
%>	


</body>
</html>













