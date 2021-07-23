<%@page import="java.util.ArrayList"%>
<%@page import="com.ezv.Dao.ReservationDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>reservationProc</title>
  <body>
	<jsp:useBean id="bean" class="com.ezv.Dto.ReservationBean">
		<jsp:setProperty name="bean" property="*"/>
	</jsp:useBean>
	
<%
	request.setCharacterEncoding("utf-8");


	if(session.getAttribute("loginUser") == null){
%>
		<script type="text/javascript">
			alert("먼저 로그인을 해주세요!");
			history.go(-1);
		</script>
<%
	}else{
		String area=request.getParameter("area");
		int mno=Integer.parseInt(request.getParameter("mno"));
		String rsdate=request.getParameter("rsdate");
		String rstime=request.getParameter("rstime");
		String place=request.getParameter("place");
		
		session.setAttribute("area", area);
		session.setAttribute("mno", mno);
		session.setAttribute("rsdate", rsdate);
		session.setAttribute("rstime", rstime);
		session.setAttribute("place", place);
		
		
		ReservationDAO rdao=new ReservationDAO();
		
		ArrayList<String> list = rdao.getList(mno);
		session.setAttribute("list", list);
		
		String mname=rdao.getMovieName(mno);
		session.setAttribute("mname", mname);
		
		
		response.sendRedirect("seatSelectView.jsp");
	}
%>	
  </body>
</html>
