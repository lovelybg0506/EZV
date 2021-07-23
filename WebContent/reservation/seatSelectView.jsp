<%@page import="com.ezv.Dao.ReservationDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../main/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
portfolio-filter{
    margin: 10px 20px;
    padding: 0;
}
.ba{
margin-left:300px;
margin-top:50px;
}
#tdh{
	color:#A5732A;
	font-size:20px;
}
</style>
</head>
<body>
   <section id="page-breadcrumb">
        <div class="vertical-center sun">
             <div class="container">
                <div class="row">
                    <div class="action">
                        <div class="col-sm-12">
                            <h1 class="title">영화 예매</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
   </section>
   
   <section  id="portfolio">
		<div class="container">
		 <ul class="portfolio-filter">
        </ul>
        <div class="portfolio-items">
		          <div class="page-header mt-3">
		            <h2 id=tdh>인원/좌석 선택</h2>
		            <h4><font color="#A5732A">영화 :</font> ${mname }</h4>
		            <h5><font color="#A5732A">상영장소 :</font> ${area }</h5>
		            <h5><font color="#A5732A">상영관 :</font> ${place }</h5>
		            <h5><font color="#A5732A">날짜 :</font> ${rsdate }</h5>
		            <h5><font color="#A5732A">시간 :</font> ${rstime }</h5>
		          </div>
		          <p class="lead">예매 인원과 좌석을 선택해주세요.</p>
		          <hr>
			          <form action="seatSelectProc.jsp" method="POST" class="pt-3" style="max-width:800px;align:center;">
			          <div style="position:relative; margin:50px;" align="center" class="ba"><img src="screen.jpeg" class="ba"></div>
			          <div style="position:relative;" align="center" class="ba">
				<%
					  int mno=(Integer)session.getAttribute("mno");
					  ReservationDAO rdao=new ReservationDAO();
					  ArrayList<String> list=rdao.getList(mno);
					  
					  loop:
			          for(int i=1;i<=100;i++){
			        	 
						  if(i%10 == 1){
				%>    		  
							  <br>
				<%
			        	  }
						  
						  for(int j=0;j<list.size();j++){
							  if(i == Integer.parseInt(list.get(j))){
				        		  %>
				        		  <%=i %><input type="checkbox" name="seat" value="<%=i %>" disabled="disabled"> 
				        		  <%
				        	  continue loop;
				        	  }
						  }
						  
						  %>
		        		  <%=i %><input type="checkbox" name="seat" value="<%=i %>"> 
		        		  <%
			          }
			    %>
			          
			          </div>
			          <div align="center" class="ba">
			          		<input type="button" id=tdh value="이전으로" onclick="location.href='reservationView.jsp'">
			          		<input type="submit" id=tdh value="선택완료">
			          		<input type="reset"  id=tdh value="다시선택">
			          </div>
			          </form>
		      </div>
		</div>
</section>
<%@ include file="../main/footer.jsp" %>
</body>
</html>