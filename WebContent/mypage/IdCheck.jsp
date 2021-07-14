<%@ page import="com.ezv.Dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String id = request.getParameter("id");
	System.out.println("IdCheck.jsp의 id ==>"+ id);
	
	MemberDAO mdao = MemberDAO.getInstance();
	boolean check = mdao.checkId(id);
%>
<html>
<head>
<meta charset="UTF-8">
<title>IdCheck</title>
</head>
<body>
<b><%=id %></b>
<%
	if(check){
		out.println("는 이미 존재하는 아이디입니다.<p>");
	}else{
		out.println("는 사용가능한 아이디입니다.<p>");
	}
%>
<a href="#" onclick="self.close()">닫기</a>
</body>
</html>