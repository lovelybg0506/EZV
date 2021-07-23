<%@page import="com.ezv.Dto.EBoardBean"%>
<%@page import="java.util.Vector"%>
<%@page import="com.ezv.Dao.EBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../main/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>eventmain</title>
<style type="text/css">
.title
    color: #a5732a;
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
                            <h1 class="title" >EZV의 이벤트</h1>
                            <p>EZV에서 여러분들을 위한 이벤트를 준비했습니다~!<br>
								오늘도 행복이 넘치는 이벤트를 잡으세요 ~!</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
   </section>
<!--주제 -->
<%
EBoardDAO bdao=new EBoardDAO();
Vector<EBoardBean> vec=bdao.getAllBoard(1, 4);

EBoardBean empty = new EBoardBean();
empty.setFileName("");
empty.setTitle("");
empty.setSubtitle("");
empty.setContent("");
empty.setTerm("");

vec.add(empty);
vec.add(empty);
vec.add(empty);

EBoardBean bean1=vec.get(0);
EBoardBean bean2=vec.get(1);
EBoardBean bean3=vec.get(2);
EBoardBean bean4=vec.get(3);
    
%>
<section id="blog" class="padding-bottom">
        <div class="container">
            <div class="row">
                <div class="timeline-blog overflow padding-top">
                <c:if test="${result == 2 }">
                                    	<div class="right-box" align="right"><a href="eventWriteForm.jsp">글쓰기</a></div>
                                    </c:if>
                    <div class="timeline-date text-center">
                        <a href="#" class="btn btn-common uppercase">대망의 2021년</a>
                    </div>
                </div>
                <div>
                    <div class="timeline-divider overflow padding-bottom">
                        <div class="col-sm-6 padding-right arrow-right wow fadeInLeft" data-wow-duration="1000ms" data-wow-delay="300ms">
                            <div class="single-blog timeline">
                               <div class="post-thumb">
                                        <img src="${pageContext.request.contextPath }/upload/<%=bean1.getFileName() %>" class="img-responsive" alt="">
                               </div>
                               <div class="post-content overflow">
                                    <h2 class="title"><%=bean1.getTitle() %></h2>
                                    <p><%=bean1.getSubtitle() %> </p>
                                    <a href="eventInfo.jsp?num=<%=bean1.getNum() %>" class="read-more">좀 더 자세히 보기</a>
                                    <div class="post-bottom overflow">
                                        <span class="post-date pull-right"><%=bean1.getTerm() %></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 padding-left padding-top arrow-left wow fadeInRight" data-wow-duration="1000ms" data-wow-delay="300ms">
                            <div class="single-blog timeline">
                                <div class="single-blog-wrapper">
                                    <div class="post-thumb">
                                        <img src="${pageContext.request.contextPath }/upload/<%=bean2.getFileName() %>" class="img-responsive" alt="">
                               </div>
                               <div class="post-content overflow">
                                    <h2 class="title"><%=bean2.getTitle() %></h2>
                                    <p><%=bean2.getSubtitle() %> </p>
                                    <a href="eventInfo.jsp?num=<%=bean2.getNum() %>" class="read-more">좀 더 자세히 보기</a>
                                    <div class="post-bottom overflow">
                                        <span class="post-date pull-right"><%=bean2.getTerm() %></span>
                                    </div>
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="timeline-blog overflow">
                    <div class="timeline-divider overflow padding-bottom">
                        <div class="col-sm-6 padding-right arrow-right wow fadeInLeft" data-wow-duration="1000ms" data-wow-delay="300ms">
                            <div class="single-blog timeline">
                                <div class="single-blog-wrapper">
                                    <div class="post-thumb">
                                        <img src="${pageContext.request.contextPath }/upload/<%=bean3.getFileName() %>" class="img-responsive" alt="">
                               </div>
                               <div class="post-content overflow">
                                    <h2 class="title"><%=bean3.getTitle() %></h2>
                                    <p><%=bean3.getSubtitle() %> </p>
                                    <a href="eventInfo.jsp?num=<%=bean3.getNum() %>">좀 더 자세히 보기</a>
                                    <div class="post-bottom overflow">
                                        <span class="post-date pull-right"><%=bean3.getTerm() %></span>
                                    </div>
                                </div>
                                </div>
                            </div>   
                        </div>
                        <div class="col-sm-6 padding-left padding-top arrow-left wow fadeInRight" data-wow-duration="1000ms" data-wow-delay="300ms">
                            <div class="single-blog timeline">
                                <div class="single-blog-wrapper">
                                    <div class="post-thumb">
                                        <img src="${pageContext.request.contextPath }/upload/<%=bean4.getFileName() %>" class="img-responsive" alt="">
                               </div>
                               <div class="post-content overflow">
                                    <h2 class="title"><%=bean4.getTitle() %></h2>
                                    <p><%=bean4.getSubtitle() %> </p>
                                    <a href="eventInfo.jsp?num=<%=bean4.getNum() %>" class="read-more">좀 더 자세히 보기</a>
                                    <div class="post-bottom overflow">
                                        <span class="post-date pull-right"><%=bean4.getTerm() %></span>
                                    </div>
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="timeline-date text-center">
                        <a href="#" class="btn btn-common">이벤트는 계~속 됩니다</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
<!-- 이벤트 리스트 -->

<%@ include file="../main/footer.jsp" %>
</body>
</html>