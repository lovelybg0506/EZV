<%@page import="com.ezv.Dto.EBoardBean"%>
<%@page import="com.ezv.Dao.EBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../main/header.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>event_box</title>
<style type="text/css">
.title{
    color: #a5732a;
}
.subtitle{
	color:#2ea52a;
}
.img-responsive, pre{
	max-width: 70%;
}
pre{
	font-family:hzStyleFont;
	border:none;
	background-color:white;
}
</style>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	int num=Integer.parseInt(request.getParameter("num"));
	
	EBoardDAO bdao=new EBoardDAO();
	EBoardBean bean=bdao.getOneBoard(num);
	
%>
<script type="text/javascript">
	function event(num){
		if(confirm("정말 삭제하시겠습니까?")){
			location.href="eventDeleteProc.jsp?num="+num
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
	                    <h1 class="title" >EZV의 이벤트</h1>
	                    <p>EZV에서 여러분들을 위한 이벤트를 준비했습니다~!<br>
						오늘도 행복이 넘치는 이벤트를 잡으세요 ~!</p>
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
</section>
  <section id="blog-details" class="padding-top">
        <div class="container">
            <div class="row" align="center">
                <div class="eventsize"> 
                    <div class="row">
                        <div class="single-blog blog-details two-column">
                            <div class="post-content overflow">
                            	<div class="post-thumb">
                                 <img src="${pageContext.request.contextPath }/upload/<%=bean.getFileName() %>" class="img-responsive" width="70%">
                             	</div>
                                <h2 class="title"><%=bean.getTitle() %></h2>
                                <h3 class="subtitle"><%=bean.getSubtitle() %></h3>
                                <pre><%=bean.getContent() %></pre>
                                <c:choose>
			                        <c:when test="${result == 2}">
			                        	<a href="eventmain.jsp" class="btn btn-common">목록</a>
				                        <a href="eventUpdateForm.jsp?num=<%=bean.getNum() %>" class="btn btn-common">수정</a>
			                        </c:when>
			                        <c:otherwise>
			                        	<a href="eventmain.jsp" class="btn btn-common">목록</a>
			                        </c:otherwise>
			                    </c:choose>
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