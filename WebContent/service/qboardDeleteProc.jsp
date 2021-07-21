<%@page import="com.ezv.Dao.QBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sboardDeleteProc</title>
</head>
<body>
<%
	int num=Integer.parseInt(request.getParameter("num"));
	
	QBoardDAO bdao=new QBoardDAO();
	
	bdao.deleteBoard(num);
	response.sendRedirect("service_question.jsp");
%>
</body>
</html>