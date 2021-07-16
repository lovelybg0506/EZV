<%@page import="com.ezv.Dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemberLoginProc</title>
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
	String id=request.getParameter("id");
	String pwd1=request.getParameter("pwd1");
	String admin=request.getParameter("admin");
	
	String url = null;

	int result = mbao.userCheck(id, pwd1, admin);
	
	if(result == 2 || result == 3) {
		mvo=mbao.getMember(id);
		
		HttpSession Session = request.getSession(true); //홈페이지가 종료 될때까지는 유지
		
		session.setAttribute("loginUser", mvo);
		session.setAttribute("id", id);
		session.setAttribute("pwd1", pwd1);
		session.setAttribute("result", result);
		
		url = "../main/main.jsp";
	}else {
		if(result == 1) {
			request.setAttribute("message", "로그인 실패 : 레벨 불일치");
		}else if(result == 0) {
			request.setAttribute("message", "로그인 실패 : 비밀번호 불일치");
		}else {
			request.setAttribute("message", "로그인 실패 : 아이디 불일치");
		}
		url="MemberLogin.jsp";
	}
	RequestDispatcher dispatcher=request.getRequestDispatcher(url);
	dispatcher.forward(request, response);	

%>
</body>
</html>