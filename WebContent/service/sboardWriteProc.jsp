<%@page import="com.ezv.Dao.SBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sboardWriteProc</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="boardBean" class="com.ezv.Dto.SBoardBean">
	<jsp:setProperty name="boardBean" property="*"/>
</jsp:useBean>

<%
	SBoardDAO bdao=new SBoardDAO();
	bdao.insertBoard(boardBean);
	
	response.sendRedirect("service_notice.jsp");
%>
</body>
</html>