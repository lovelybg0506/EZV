<%@page import="java.awt.event.WindowEvent"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../main/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemberLogout</title>
</head>
<body>
<%
	session.invalidate(); //세션 삭제
	response.sendRedirect("../main/main.jsp");
%>
<%@ include file="../main/footer.jsp" %>
</body>
</html>