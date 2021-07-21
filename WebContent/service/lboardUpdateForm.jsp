<%@page import="com.ezv.Dto.LBoardBean"%>
<%@page import="com.ezv.Dao.LBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../main/header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LboardUpdateForm</title>
<style>
.line {
	border-bottom:1px solid #ececec;
}
</style>
</head>
<body>
<%
	int num=Integer.parseInt(request.getParameter("num").trim());
	
	LBoardDAO bdao=new LBoardDAO();
	LBoardBean bean=bdao.getOneUpdateBoard(num);
%>
	<section id="page-breadcrumb">
        <div class="vertical-center sun">
             <div class="container">
                <div class="row">
                    <div class="action">
                        <div class="col-sm-12">
                            <h1 class="title">분실물 문의</h1>
                            <p>EZV극장에서 무언가를 잃어버리시거나 놓고 가셨다면!<hr>문의해 주세요~ </p>
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
                                    <h2 class="page-header">분실물 문의 수정</h2>
					                <form action="lboardUpdateProc.jsp" method="post">
										<table width="800">
											<tr height="40" class="line">
												<td width="200" align="center">제목</td>
												<td>&nbsp;<%=bean.getSubject() %></td>
											</tr>
											
											<tr height="40" class="line">
												<td width="200" align="center">아이디</td>
												<td>&nbsp;<%=bean.getId() %></td>
											</tr>
											<tr height="40" class="line">
												<td width="200" align="center">지점</td>
												<td>&nbsp;<%=bean.getPlace() %></td>
											</tr>
											<tr height="40" class="line">
												<td width="200" align="center">내용</td>
												<td width="480"><textarea rows="10" cols="100" name="content" align="left"><%=bean.getContent() %></textarea></td>
											</tr>
											<tr height="40" class="line">
												<td colspan="2" align="center">
													<input type="hidden" name="num" value="<%=bean.getNum() %>">
													<input type="submit" value="글수정">&nbsp;&nbsp;
													<input type="button" onclick="location.href='service_LnF.jsp'" value="목록">
												</td>
											</tr>
										</table>
									</form>
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