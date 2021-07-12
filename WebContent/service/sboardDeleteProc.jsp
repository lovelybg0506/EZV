<%@page import="com.ezv.Dao.SBoardDAO"%>
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
	
	SBoardDAO bdao=new SBoardDAO();
	
	bdao.deleteBoard(num);
	response.sendRedirect("service_notice.jsp");
%>
</body>
</html>