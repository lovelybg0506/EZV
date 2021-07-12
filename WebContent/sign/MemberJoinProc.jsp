<%@page import="com.ezv.Dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemberJoinProc</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="mvo" class="com.ezv.Dto.MemberVO">
	<jsp:setProperty name="mvo" property="*"/>
</jsp:useBean>

<%
	MemberDAO mbao = MemberDAO.getInstance();
	int result=mbao.insertMember(mvo);
	
	HttpSession Session=request.getSession();
	String url = null;
	
	if(result == 1) {
		session.setAttribute("id",mvo.getId());
		request.setAttribute("messagejoin","회원 가입에 성공했습니다");
		url="MemberLogin.jsp";
	}else {
		request.setAttribute("messagejoin","회원 가입에 실패했습니다");
		url="MemberJoin.jsp";
	}
	
	RequestDispatcher dispatcher=request.getRequestDispatcher(url);
	dispatcher.forward(request, response);	
%>
</body>
</html>