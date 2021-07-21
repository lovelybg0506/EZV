<%@page import="com.ezv.Dao.EBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>eventDeleteProc</title>
</head>
<body>
<%
	int num=Integer.parseInt(request.getParameter("num"));
	
	EBoardDAO bdao=new EBoardDAO();
	
	bdao.deleteBoard(num);
	response.sendRedirect("eventmain.jsp");
%>
</body>
</html>