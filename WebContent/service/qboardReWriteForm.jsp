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
<title>qboardWriteForm</title>
</head>
<body>
	<%
		// 게시글 읽기에서 답변글 쓰기를 클릭하면 넘겨주는 데이터들을 받아준다.
		int num=Integer.parseInt(request.getParameter("num"));
		int ref=Integer.parseInt(request.getParameter("ref"));
		int re_step=Integer.parseInt(request.getParameter("re_step"));
		int re_level=Integer.parseInt(request.getParameter("re_level"));
		
		
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
                                    <h2 class="page-header">답글달기</h2>
					                <form action="qboardReWriteProc.jsp" method="post">
										<table width="800">
											<tr height="40">
												<td width="200" align="center">제목</td>
												<td>&nbsp;<input type="text" name="subject" size="100" value="<%=bean.getSubject() %>"></td>
											</tr>
											<tr height="40">
												<td width="200" align="center">아이디</td>
												<td>&nbsp;<%=bean.getId() %></td>
											</tr>
											<tr height="40">
												<td width="200" align="center">지점</td>
												<td>&nbsp;
													<select name="place">
														<option value="노원">노원</option>
													</select>
												</td>
											</tr>
											<tr height="40">
												<td width="200" align="center">분류</td>
												<td>&nbsp;
													<select name="type">
														<option value="영화관" selected="selected">영화관</option>
														<option value="영화">영화</option>
														<option value="예매/결제">예매/결제</option>
														<option value="이벤트">이벤트</option>
													</select>
												</td>
											</tr>
											<tr height="40">
												<td width="200" align="center">내용</td>
												<td width="480"><textarea wrap="hard" rows="10" cols="100" name="content" align="left" required><%=bean.getContent() %></textarea></td>
											</tr>
											<tr height="40">
												<td colspan="2" align="center">
													<input type="hidden" name="id" value="<%=bean.getId() %>">
													<input type="hidden" name="ref" value="<%=ref %>">
													<input type="hidden" name="re_step" value="<%=re_step %>">
													<input type="hidden" name="re_level" value="<%=re_level %>">
								                    <input type="submit" value="글쓰기">&nbsp;&nbsp;
													<input type="reset" value="다시 작성">&nbsp;&nbsp;
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