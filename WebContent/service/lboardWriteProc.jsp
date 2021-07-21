<%@page import="com.ezv.Dao.LBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>lboardWriteProc</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="boardBean" class="com.ezv.Dto.LBoardBean">
	<jsp:setProperty name="boardBean" property="*"/>
</jsp:useBean>

<%
	LBoardDAO bdao=new LBoardDAO();
	bdao.insertBoard(boardBean);
	
	response.sendRedirect("service_LnF.jsp");
%>
</body>
</html>