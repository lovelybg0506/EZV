<%@page import="com.ezv.Dto.SBoardBean"%>
<%@page import="java.util.Vector"%>
<%@page import="com.ezv.Dao.SBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../main/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.left-box {
  float: left;
}
.right-box {
  float: right;
}
.line {
border-bottom:1px solid #ececec;
}
.click:hover{
	 background-color:#FFF;
  	 color:#A5732A;
  	 cursor:pointer;
}
h3{
	padding-top:27px;
}
</style>
</head><!--/head-->
<body>
    <section id="page-breadcrumb">
        <div class="vertical-center sun">
             <div class="container">
                <div class="row">
                    <div class="action">
                        <div class="col-sm-12">
                            <h1 class="title">공지사항</h1>
                            <p>EZV의 주요한 이슈 및 여러가지 소식들을 확인하실 수 있습니다.</p>
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
                                    <h2 class="page-header">공지사항</h2>
					            <%
					                int pageSize=10;   
					                
					            	request.setCharacterEncoding("UTF-8");
					            	
					                String pageNum=request.getParameter("pageNum");
					                String sc=request.getParameter("search");
					                
					                if(pageNum ==null){
					                   pageNum="1";
					                }
					                
					                int count=0; 
					                int number=0;
					                int currentPage=Integer.parseInt(pageNum);
					                
					                SBoardDAO bdao=new SBoardDAO();
					                
					                count=bdao.getSearchCount(sc);
					                
					                int startRow=(currentPage-1)*pageSize+1;
					                int endRow=currentPage*pageSize;
					                
					                Vector<SBoardBean> vec=bdao.getSearchBoard(sc, startRow, endRow);
					                
					                number=count-(currentPage-1)*pageSize;
					           	%>
					           		<div class="left-box">
					           			<div class="search">
						                    <form action="service_search.jsp">
						                        <i class="fa fa-search"></i>
						                        <div class="field-toggle">
						                            <input type="text" class="search-form" autocomplete="off" placeholder="제목 + 내용 검색" name="search">
						                        </div>
						                    </form>
						                </div>
					           		</div>
					           		<div class="left-box">전체 <%=count %>건</div>
                                    <c:if test="${result == 2 }">
                                    	<div class="right-box"><a href="sboardWriteForm.jsp">글쓰기</a></div>
                                    </c:if>
                                    <br><br>
					                <form>
					                	<table width="800" class="line">
					                		<tr class="line">
					                			<td width="50" align="center" ><b>번호</b></td>
					                			<td width="100" align="center"><b>극장</b></td>
					                			<td width="75" align="center"><b>구분</b></td>
					                			<td width="400" align="center"><b>제목</b></td>
					                			<td width="150" align="center"><b>등록일</b></td>
					                		</tr>
					                		
					            <%
							        for(int i=0;i<vec.size();i++){
							            SBoardBean bean=vec.get(i);
							    %>
							        		<tr height="40" class="line">
							        			<td width="50" align="center"><%=number-- %></td>
							        			<td width="100" align="center"><%=bean.getPlace() %></td>
							        			<td width="100" align="center"><%=bean.getType() %></td>
							         		    <td width="400" align="left">
							          		  	<a href="sboardInfo.jsp?num=<%=bean.getNum() %>" style="text-decoration:none">
							               
							    <%
							               		if(bean.getRe_step() > 1){
							               		 	for(int j=0;j<(bean.getRe_step()-1)*5;j++)   {            
							    %>
							              	 	&nbsp;
							    <%
							                   		}
							                     
							                	}
							    %>
							               		<%=bean.getSubject()%>
							               	</a>
									            </td>
									            <td width="150" align="center"><%=bean.getReg_date() %></td>
									            
											</tr>
								<%
									}
								%>
										</table>
										<br><br>
					                </form>
					            </div>
					        </div>
					        <div class="blog-pagination">
		                        <ul class="pagination">
					<%
							if(count > 0){
										
								int pageCount=count/pageSize+(count%pageSize == 0? 0:1);
										
								int startPage=1;
								if(currentPage%10 != 0) {
									startPage=((int)(currentPage/10))*10+1;
								}else{
									startPage=((int)(currentPage/10-1))*10+1;
								}
										
								int pageBlock=10;
								int endPage=startPage+pageBlock-1;
										
								if(endPage > pageCount)
									endPage=pageCount;
										
								if(startPage > 10){
					%>
									<li class="left"><a href="service_notice.jsp?pageNum=<%=startPage-10 %>">left</a></li>
					<%
								}
												
								for(int i=startPage;i<=endPage;i++){
					%>
									<li><a href="service_notice.jsp?pageNum=<%=i %>"><%=i %></a></li>
					<% 
								}
												
								if(endPage < pageCount){
					%>
									<li class="right"><a href="service_notice.jsp?pageNum=<%=startPage+10 %>">right</a></li>
					<%
								}
							}
					%>		
				                </ul>
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