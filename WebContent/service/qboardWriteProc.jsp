<%@page import="com.ezv.Dao.QBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>qboardWriteProc</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="boardBean" class="com.ezv.Dto.QBoardBean">
	<jsp:setProperty name="boardBean" property="*"/>
</jsp:useBean>

<%
	QBoardDAO bdao=new QBoardDAO();
	bdao.insertBoard(boardBean);
	
	response.sendRedirect("service_question.jsp");
%>
</body>
</html>