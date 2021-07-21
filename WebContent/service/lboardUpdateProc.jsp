<%@page import="com.ezv.Dao.LBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>lboardUpdateProc</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
%>

	<jsp:useBean id="boardbean" class="com.ezv.Dto.LBoardBean">
	<jsp:setProperty name="boardbean" property="*"/>
	</jsp:useBean>
	
<%
	LBoardDAO bdao=new LBoardDAO();

	
	
		bdao.updateBoard(boardbean);
		response.sendRedirect("service_LnF.jsp");
	
%>	


</body>
</html>













