<%@page import="com.ezv.Dto.ReservationBean"%>
<%@page import="com.ezv.Dao.ReservationDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int mno=(Integer)session.getAttribute("mno");
	String id=(String)session.getAttribute("id");
	String area=(String)session.getAttribute("area");
	String place=(String)session.getAttribute("place");
	String rsdate=(String)session.getAttribute("rsdate");
	String rstime=(String)session.getAttribute("rstime");

	String[] rseat=request.getParameterValues("seat");
	String seat="";
	
	for(int i=0;i<rseat.length;i++){
		seat+=rseat[i]+",";
	}
	
	ReservationDAO rdao=new ReservationDAO();
	ReservationBean bean=new ReservationBean();
	if(rseat == null){
%>
	<script type="text/javascript">
		alert("좌석을 선택해주세요!");
		history.go(-1);
	</script>
<%
	}else{
		int inwon=rseat.length;
		int price= 8000 * inwon;
		
		bean.setArea(area);
		bean.setMno(mno);
		bean.setId(id);
		bean.setArea(area);
		bean.setPlace(place);
		bean.setRsdate(rsdate);
		bean.setRstime(rstime);
		bean.setInwon(inwon);
		bean.setPrice(price);
		bean.setSeat(seat);
		
		rdao.insertBoard(bean);
		session.setAttribute("rbean", bean);
		
		String url="reservationResult.jsp";
		
		RequestDispatcher dispatcher=request.getRequestDispatcher(url);
		dispatcher.forward(request, response);	
	}
%>
</body>
</html>