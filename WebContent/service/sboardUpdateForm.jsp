
<%@page import="com.ezv.Dto.SBoardBean"%>
<%@page import="com.ezv.Dao.SBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../main/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sboardUpdateForm</title>
<style>
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
</head>
<body>
<%
	int num=Integer.parseInt(request.getParameter("num").trim());
	
	SBoardDAO bdao=new SBoardDAO();
	SBoardBean bean=bdao.getOneUpdateBoard(num);
%>
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
                                    <h2 class="page-header">공지사항 수정</h2>
					                <form action="sboardUpdateProc.jsp" method="post">
										<table width="800">
											<tr height="40" class="line">
												<td width="200" align="center">제목</td>
												<td>&nbsp;<input type="text" name="subject" value="<%=bean.getSubject() %>" size="100"></td>
											</tr>
											<tr height="40" class="line">
												<td width="200" align="center">지점</td>
												<td>&nbsp;<%=bean.getPlace() %></td>
											</tr>
											<tr height="40" class="line">
												<td width="200" align="center">구분</td>
												<td>&nbsp;<%=bean.getType() %></td>
											</tr>
											<tr height="40" class="line">
												<td width="200" align="center">내용</td>
												<td width="480"><textarea rows="10" cols="100" name="content" align="left"><%=bean.getContent() %></textarea></td>
											</tr>
											<tr height="40" class="line">
												<td colspan="2" align="center">
													<input type="hidden" name="num" value="<%=bean.getNum() %>">
													<input type="submit" value="글수정">&nbsp;&nbsp;
													<input type="button" onclick="location.href='service_notice.jsp'" value="목록">
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