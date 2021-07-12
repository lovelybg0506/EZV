<%@page import="com.ezv.Dao.SBoardDAO"%>
<%@page import="com.ezv.Dto.SBoardBean"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../main/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>service_main</title>
<style>
pre{
	font-family:hzStyleFont;
	background-color:white;
	border:1px solid #ececec;
}
.click:hover{
	 background-color:#FFF;
  	 color:#A5732A;
  	 cursor:pointer;
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
                            <h1 class="title">고객센터</h1>
                            <p>Service center</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
   </section>
   
	<section id="blog" class="padding-top">
        <div class="container">
            <div class="row">
				<%@ include file="left.jsp" %>
                <div class="col-md-9 col-sm-7">
                    <div class="row">
                         <div class="col-sm-12 col-md-12">
                            <div class="single-blog single-column">
                                <div class="overflow">
                                    <div class="col-sm-3 wow fadeInUp" data-wow-duration="500ms" data-wow-delay="300ms">
				                        <div class="feature-inner nav nav-pills">
				                        <a href="service_notice.jsp">
				                        	<div class="icon-wrapper">
				                                <i class="fa fa-2x fa-star-o"></i>
				                            </div>
				                            <h2>공지사항</h2>
				                            <h5>공지사항을 확인해보세요.<h5>
				                        </a>
				                        </div>    
				                    </div>
				                    <div class="col-sm-3 wow fadeInUp" data-wow-duration="500ms" data-wow-delay="600ms">
				                        <div class="feature-inner nav nav-pills">
				                        <a href="service_QnA.jsp">
				                            <div class="icon-wrapper">
				                                <i class="fa fa-2x fa-heart-o"></i>
				                            </div>
				                            <h2>자주찾는질문</h2>
				                            <p>자주 찾는 질문을<br> 확인해보세요.</p>
				                        </a>
				                        </div>
				                    </div>
				                    <div class="col-sm-3 wow fadeInUp" data-wow-duration="500ms" data-wow-delay="900ms">
				                        <div class="feature-inner nav nav-pills">
				                        <a href="service_question.jsp">
				                        	<div class="icon-wrapper">
				                                <i class="fa fa-2x fa-envelope-o"></i>
				                            </div>
				                            <h2>1:1 문의</h2>
				                            <p>해결되지않은 문제가 있나요?&nbsp; 1:1문의로 문의주세요</p>
				                        </a>
				                        </div>
				                    </div>
				                    <div class="col-sm-3 wow fadeInUp" data-wow-duration="500ms" data-wow-delay="1200ms">
				                        <div class="feature-inner nav nav-pills">
				                        <a href="service_LnF.jsp">
				                        	<div class="icon-wrapper">
				                                <i class="fa fa-2x fa-comments-o"></i>
				                            </div>
				                            <h2>분실물문의</h2>
				                            <p>잃어버린 물건을<br> 신속히 찾아드리겠습니다.</p>
				                        </a>
				                        </div>
				                    </div>
				                    
				                    <div id="accordion-container">
					                <h2 class="page-header">공지사항</h2>
						                <div class="panel-group" id="accordion">
						        <%
					                int pageSize=3;   
					                
					                String pageNum=request.getParameter("pageNum");
					                
					                if(pageNum ==null){
					                   pageNum="1";
					                }
					                
					                int count=0; 
					                int currentPage=Integer.parseInt(pageNum);
					                
					                SBoardDAO bdao=new SBoardDAO();
					                
					                count=bdao.getAllCount();
					                
					                int startRow=(currentPage-1)*pageSize+1;
					                int endRow=currentPage*pageSize;
					                
					                Vector<SBoardBean> vec=bdao.getAllBoard(startRow, endRow);
					                
							        SBoardBean bean1=vec.get(0);
							        SBoardBean bean2=vec.get(1);
							        SBoardBean bean3=vec.get(2);
					           	%>
						                    <div class="panel panel-default">
						                        <div class="panel-heading">
						                            <h4 class="panel-title">
						                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
						                                    1. <%=bean1.getSubject() %>
						                                </a>
						                            </h4>
						                        </div>
						                        <div id="collapseOne" class="panel-collapse collapse in">
						                            <div class="panel-body"><pre><%=bean1.getContent() %></pre></div>
						                        </div>
						                    </div>
						                    <div class="panel panel-default">
						                        <div class="panel-heading">
						                            <h4 class="panel-title">
						                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
						                                    2. <%=bean2.getSubject() %>
						                                </a>
						                            </h4>
						                        </div>
						                        <div id="collapseTwo" class="panel-collapse collapse">
						                            <div class="panel-body"><pre><%=bean2.getContent() %></pre></div>
						                        </div>
						                    </div>
						                    <div class="panel panel-default">
						                        <div class="panel-heading">
						                            <h4 class="panel-title">
						                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
						                                    3. <%=bean3.getSubject() %>
						                                </a>
						                            </h4>
						                        </div>
						                        <div id="collapseThree" class="panel-collapse collapse">
						                            <div class="panel-body"><pre><%=bean3.getContent() %></pre></div>
						                        </div>
						                    </div>
						                </div><!--/#accordion-->
					            	</div><!--/#accordion-container-->
				                 
                                </div>
                            </div>
                        </div>
                    </div> 
                 </div>
                 <div class="col-md-9 col-sm-7">
                    <div class="row">
                         <div class="col-sm-12 col-md-12">
                            <div class="single-blog single-column">
                                
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