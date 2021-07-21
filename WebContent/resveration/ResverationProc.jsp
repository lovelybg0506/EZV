<%@page import="com.ezv.Dto.ResverationVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../main/header.jsp"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>reservationProc</title>
<style>
.portfolio-filter{
    margin: 10px 20px;
    padding: 0;
}
h2{
	color: #A5732A;
}
#tdh{
	color: #A5732A;
	back-ground:#EFEFEF;
} 
</style>
  <body>
  <%
	request.setCharacterEncoding("utf-8");
%>
	 <jsp:useBean id="ReservationVO" class="com.ezv.Dto.ResverationVO">
		<jsp:setProperty name="ReservationVO" property="*"/>
	</jsp:useBean> 
	
	<%
		ResverationVO rdao=new ResverationVO();
		//rdao.(ReservationVO);
		
		//response.sendRedirect("#.jsp"+ReservationVO.getarea()+ReservationVO.getmovie()+ReservationVO.gettime()+ReservationVO.getplace());
%>	
    <%@ include file="../main/footer.jsp" %>
  </body>
</html>
