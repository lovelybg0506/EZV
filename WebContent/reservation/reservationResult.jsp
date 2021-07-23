<%@page import="java.util.Vector"%>
<%@page import="com.ezv.Dto.ReservationBean"%>
<%@page import="com.ezv.Dao.ReservationDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../main/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>reservationResult</title>
<style type="text/css">
.reservation{
width:600px;
padding:100px;
}
table{
border:
}
#tdh{
	color:#A5732A;
	font-size:20px;
}
h2{
	color:#A5732A;
}
</style>
</head>
<body>
<script type="text/javascript">
	function event(num){
		if(confirm("정말 삭제하시겠습니까?")){
			location.href="reservationDeleteProc.jsp?num="+num
		}else{
			return;
		}
	}
</script>
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
   <section>
   <%
   		ReservationDAO rdao=new ReservationDAO();
   		ReservationBean bean=new ReservationBean();
   		
   		String id=(String)session.getAttribute("id");
   		bean=rdao.getMyBoard(id);
   		String mname=rdao.getMovieName(bean.getMno());
 	
   		if(bean.getSeat() == null){
	%>
		<div class="container" align="center">
   			<div class="reservation">
                <div class="contact-form bottom">
                    <h2>예매 내역이 없습니다</h2>
                </div>
            </div>
        </div>
	<%
   		}else{
   			String rseat=bean.getSeat().replace(",","번 &nbsp;");
    %>
   		<div class="container" align="center">
   			<div class="reservation">
                    <div class="contact-form bottom">
                        <h2><%=id %>님의 예매내역</h2> <!-- form-group form-control -->
                       <table width="400" border="1">
                        	<tr height="50">
                        		<td width="150" align="center" id=tdh>예매번호</td>
                        		<td width="250" style="font-size:20px;">&nbsp;<%=bean.getNum() %></td>
                        	</tr>
                        	<tr height="50">
                        		<td width="150" align="center" id=tdh>영화</td>
                        		<td width="250" style="font-size:20px;">&nbsp;<%=mname %></td>
                        	</tr>
                        	<tr height="50">
                        		<td width="150" align="center" id=tdh>상영장소</td>
                        		<td width="250" style="font-size:20px;">&nbsp;<%=bean.getArea()%></td>
                        	</tr>
                        	<tr height="50">
                        		<td width="150" align="center" id=tdh>상영관</td>
                        		<td width="250" style="font-size:20px;">&nbsp;<%=bean.getPlace() %></td>
                        	</tr>
                        	<tr height="50">
                        		<td width="150" align="center" id=tdh>날짜</td>
                        		<td width="250" style="font-size:20px;">&nbsp;<%=bean.getRsdate() %></td>
                        	</tr>
                        	<tr height="50">
                        		<td width="150" align="center" id=tdh>시간</td>
                        		<td width="250" style="font-size:20px;">&nbsp;<%=bean.getRstime() %></td>
                        	</tr>
                        	<tr height="50">
                        		<td width="150" align="center" id=tdh>예매인원</td>
                        		<td width="250" style="font-size:20px;">&nbsp;<%=bean.getInwon() %></td>
                        	</tr>
                        	<tr height="50">
                        		<td width="150" align="center" id=tdh>예매좌석</td>
                        		<td width="250" style="font-size:20px;">&nbsp;<%=rseat %></td>
                        	</tr>
                        	<tr height="50">
                        		<td width="150" align="center" id=tdh>결제 예상 금액</td>
                        		<td width="250" style="font-size:20px;">&nbsp;<%=bean.getPrice() %> 원</td>
                        	</tr>
                        	<tr height="50">
                        		<td colspan="2" align="center">
					                <a href="javascript:event(<%=bean.getNum() %>)" class="btn btn-common">예매 취소</a>
                        		</td>
                        	</tr>
                        </table>
                    </div>
                </div>
         </div>
         <%
   		}
         %>
	</section>
<%@ include file="../main/footer.jsp" %>
</body>
</html>