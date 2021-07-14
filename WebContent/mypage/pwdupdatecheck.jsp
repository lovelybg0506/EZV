<%@page import="com.ezv.Dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pwdupdatecheck</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="mvo" class="com.ezv.Dto.MemberVO">
	<jsp:setProperty name="mvo" property="*"/>
</jsp:useBean>
	<h1>비밀번호 변경 확인</h1>
	<%
		String input_pw=request.getParameter("now_pw");
		String session_pwd1=session.getAttribute("pwd1").toString();
		
		if(!input_pw.equals(session_pwd1)){
			%> 
			<script> window.alert("현재 비밀번호가 안 맞습니다"); history.go(-1);</script>
			<% 
		}
		else{
			String new_pw= request.getParameter("change_pw");
			mvo.setPwd1(new_pw);
			String id=(String)session.getAttribute("id");
			mvo.setId(id);
			
			MemberDAO mbao = MemberDAO.getInstance();
			mbao.changePw(mvo);
			
			session.invalidate();
			%> 
			<script>
			window.alert("비밀번호가 변경됬습니다");
			document.location.href="../sign/MemberLogin.jsp";
			</script>
			<% 	 
		}
	%>
</body>
</html>