<%@page import="com.ezv.Dto.QBoardBean"%>
<%@page import="com.ezv.Dao.QBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../main/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>qboardInfo</title>
<style type="text/css">
.subject{
	font-weight: 300;
   	font-size: 18px;
}
.line {
	border-bottom:1px solid #ececec;
}
</style>

</head>
<body>
<%
	int num=Integer.parseInt(request.getParameter("num"));
	
	QBoardDAO bdao=new QBoardDAO();
	QBoardBean bean=bdao.getOneBoard(num);
%>
<script type="text/javascript">
	function event(num){
		if(confirm("정말 삭제하시겠습니까?")){
			location.href="qboardDeleteProc.jsp?num="+num
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
                            <h1 class="title">1 : 1 문의</h1>
                            <p>EZV에게 무언가 문의할 일이 생기신다면!<hr>요기에 문의해 주세요~ </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
   </section>
   
   <section id="blog" class="padding-top">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-5">
                    <div class="sidebar blog-sidebar">
                        <div class="sidebar-item categories">
                            <h3>Categories</h3>
                            <ul class="nav navbar-stacked">
                                <li><a href="service_notice.jsp">공지사항<span class="pull-right"></span></a></li>
                                <li><a href="service_QnA.jsp">자주찾는질문<span class="pull-right"></span></a></li>
                                <li><a href="service_question.jsp">1:1 문의<span class="pull-right"></span></a></li>
                                <li><a href="service_LnF.jsp">분실물 문의<span class="pull-right"></span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-9 col-sm-7">
                    <div class="row">
                         <div class="col-sm-12 col-md-12">
                            <div class="single-blog single-column">
                                <div class="overflow">
                                    <h2 class="page-header">1 : 1 문의</h2>
					                <form>
										<table width="800" class="line">
											<tr height="80" class="line">
												<td align="left" colspan="2"><span class="subject"><%=bean.getSubject() %></span><br>
													지점 &nbsp;<%=bean.getPlace() %> &nbsp;|&nbsp; 분류 &nbsp;<%=bean.getType() %> &nbsp;|&nbsp; 등록일 &nbsp;<%=bean.getReg_date() %>
												</td>
											</tr>
											<tr height="300" class="line">
												<td align="left" colspan="2"><pre><%=bean.getContent()%></pre>

												</td>
											</tr>
											
										</table>
									</form>
					            </div>
					            <div class="action take-tour" align="center">
			                        <div width="800" align="center">
				                       	 <c:if test="${result == 2 }">
											<input type="button" value="답글쓰기"
     								   		onclick="location.href='qboardReWriteForm.jsp?num=<%=bean.getNum()%>&ref=<%=bean.getRef() %>&re_step=<%=bean.getRe_step()%>&re_level=<%=bean.getRe_level()%>'">                                    	
                                    	</c:if>
									<input type="button" value="수정하기" onclick="location.href='qboardUpdateForm.jsp?num=<%=bean.getNum()%>'">
									<input type="button" value="삭제하기" onclick="location.href='qboardDeleteProc.jsp?num=<%=bean.getNum()%>'">
									<input type="button" value="목록보기" onclick="location.href='service_question.jsp?num=<%=bean.getNum()%>'">
			                        </div>
			                    </div>
                            </div>
                         </div>
                    </div> 
                </div>
            </div>
        </div>
    </section>
<%@ include file="../main/footer.jsp" %>
</body>
</html>