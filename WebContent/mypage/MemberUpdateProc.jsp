<%@page import="com.ezv.Dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemberUpdateProc</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="mvo" class="com.ezv.Dto.MemberVO">
	<jsp:setProperty name="mvo" property="*"/>
</jsp:useBean>
<%
	String id=request.getParameter("id"); 
	mvo.setId(id);
	String pwd1 = request.getParameter("pwd1");
	mvo.setPwd1(pwd1);
	
	MemberDAO mdao = MemberDAO.getInstance();
	
	String pwd =mdao.getPass1(id);
	if(pwd1.equals(pwd)){
		mdao.updateMember(mvo);
	HttpSession Session = request.getSession();	
	session.setAttribute("loginUser", mvo);
	response.sendRedirect("Mypage.jsp");	
	}else{
%>
<script type="text/javascript">
	alert("패스워드가 맞지 않습니다. 다시 확인해 주세요!!!!")
	history.go(-1);
</script>
<%
	}
%>
</body>
</html>