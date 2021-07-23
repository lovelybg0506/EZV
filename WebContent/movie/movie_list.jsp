<%@page import="com.ezv.Dto.MovieVO"%>
<%@page import="java.util.Vector"%>
<%@page import="com.ezv.Dao.MovieDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../main/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>movie_list</title>
<style>
.btn-sm{
	background-color:#EFEFEF;
	color:#A5732A;
}
.portfolio-filter{
    margin: 10px 20px;
    padding: 0;
}
</style>
</head>
<body>
<%
	MovieDAO mdao = new MovieDAO();
	int mc = mdao.MovieCount();
	Vector<MovieVO> mlist = mdao.MovieList();
%>
    <section id="page-breadcrumb">
        <div class="vertical-center sun">
             <div class="container">
                <div class="row">
                    <div class="action">
                        <div class="col-sm-12">
                            <h1 class="title">영화</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
   </section>
   
    <section id="portfolio">
		<div class="container">
        <ul class="portfolio-filter">
        </ul>
 		<div class="portfolio-items">
 				<% for(int i=0; i<mc; i++){	%>
                        <div class="col-xs-6 col-sm-6 col-md-4 portfolio-item branded logos">
                            <div class="portfolio-wrapper">
                                <div class="portfolio-single">
                                    <div class="portfolio-thumb">
                                        <img src="<%=mlist.get(i).getMposter() %>" style="width:360px; height:350px;" class="img-responsive" alt="">
                                    </div>
                                    <div class="portfolio-view">
                                        <ul class="nav nav-pills">
                                        	<li><button type="button" class="btn btn-sm" onclick ="location.href='../movie/movie_Detail.jsp?mno=<%=mlist.get(i).getMno()%>'">상세보기</button></li><br><br>
                                        	<li><button type="button" class="btn btn-sm" onclick ="location.href='../reservation/reservationView.jsp'">예매하기</button></li><br><br>
                                        </ul>
                                    </div>
                                </div>
                                <div class="portfolio-info ">
                                    <h2><%=mlist.get(i).getMname() %></h2>
                                    <h5><%=mlist.get(i).getMdate() %></h5>
                                </div>
                            </div>
                        </div>
                  <%} %>
            		</div>
            	</div>
    	</section>
    <!--/#projects-->
   
</body>
<%@ include file="../main/footer.jsp" %>
</html>