<%@page import="com.ezv.Dto.QBoardBean"%>
<%@page import="com.ezv.Dao.QBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../main/header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>qboardUpdateForm</title>
<style>
.line {
	border-bottom:1px solid #ececec;
}
</style>
</head>
<body>
<%
	int num=Integer.parseInt(request.getParameter("num").trim());
	
	QBoardDAO bdao=new QBoardDAO();
	QBoardBean bean=bdao.getOneUpdateBoard(num);
%>
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
                                    <h2 class="page-header">분실물 문의 수정</h2>
					                <form action="qboardUpdateProc.jsp" method="post">
										<table width="800">
											<tr height="40" class="line">
												<td width="200" align="center">제목</td>
												<td>&nbsp;<%=bean.getSubject() %></td>
											</tr>
											<tr height="40">
												<td width="200" align="center">아이디</td>
												<td>&nbsp;${loginUser.getId() }</td>
											</tr>
											<tr height="40" class="line">
												<td width="200" align="center">지점</td>
												<td>&nbsp;<%=bean.getPlace() %></td>
											</tr>
											
											<tr height="40">
												<td width="200" align="center">분류</td>
												<td>&nbsp;
													<select name="type">
														<option value="영화관" selected="selected">영화관</option>
														<option value="영화관">영화</option>
														<option value="예매/결제">예매/결제</option>
														<option value="이벤트">이벤트</option>
													</select>
												</td>
											</tr>
											<tr height="40" class="line">
												<td width="200" align="center">내용</td>
												<td width="480"><textarea rows="10" cols="100" name="content" align="left"><%=bean.getContent() %></textarea></td>
											</tr>
											<tr height="40" class="line">
												<td colspan="2" align="center">
													<input type="hidden" name="id" value="${loginUser.getId() }">
													<input type="hidden" name="num" value="<%=bean.getNum() %>">
													<input type="submit" value="글수정">&nbsp;&nbsp;
													<input type="button" onclick="location.href='service_question.jsp'" value="목록">
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