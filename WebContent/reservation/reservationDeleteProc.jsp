<%@page import="com.ezv.Dao.ReservationDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>reservationDeleteProc</title>
</head>
<body>
<%
	int num=Integer.parseInt(request.getParameter("num"));
	
	ReservationDAO rdao=new ReservationDAO();
	
	rdao.deleteBoard(num);
%>
<script type="text/javascript">
	alert("예매가 삭제되었습니다.");
	window.location.href = '../main/main.jsp';
</script>
</body>
</html>