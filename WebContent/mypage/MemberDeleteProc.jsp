<%@page import="com.ezv.Dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemberDeleteProc</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	%>
	<jsp:useBean id="mvo" class="com.ezv.Dto.MemberVO">
		<jsp:setProperty name="mvo" property="*" />
	</jsp:useBean>
	<%
		String id = request.getParameter("id");
		String pwd1 = request.getParameter("pwd1");

		MemberDAO mdao = MemberDAO.getInstance();

		int check = mdao.deleteMember(id, pwd1);
		
		if(check==1){
			session.invalidate();
			
	%>
		<script>
			window.alert("회원 탈퇴 되었습니다");
			document.location.href="../main/main.jsp";
		</script>
	<%
		}else{
	%>
	<script type="text/javascript">
		alert("비밀번호가 맞지 않습니다.");
		history.go(-1);
	</script>
	<%
		}
	%>
</body>
</html>