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
<title>sboardInfo</title>
<style type="text/css">
.subject{
	font-weight: 300;
   	font-size: 18px;
}
.line {
	border-bottom:1px solid #ececec;
}
@font-face{
	font-family:hzStyleFont;
	src:url("../fonts/fontawesome-webfont.ttf");
}
pre{
	font-family:hzStyleFont;
	border:1px solid #ececec;
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
	int num=Integer.parseInt(request.getParameter("num"));
	
	SBoardDAO bdao=new SBoardDAO();
	
	SBoardBean bean=bdao.getOneBoard(num);
	int bNum=bdao.getbNum(num);
	int nNum=bdao.getnNum(num);
	
	SBoardBean bbean=bdao.getOneBoard(bNum);
	SBoardBean nbean=bdao.getOneBoard(nNum);
	
	HttpSession Session = request.getSession(); //홈페이지가 종료 될때까지는 유지
	
	session.setAttribute("bbean", bbean);
	session.setAttribute("nbean", nbean);
%>
<script type="text/javascript">
	function event(num){
		if(confirm("정말 삭제하시겠습니까?")){
			location.href="sboardDeleteProc.jsp?num="+num
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
					                <form>
										<table width="800" class="line">
											<tr height="80" class="line">
												<td align="left" colspan="2"><span class="subject"><%=bean.getSubject() %></span><br>
													영화관 &nbsp;<%=bean.getPlace() %> &nbsp;|&nbsp; 구분 &nbsp;<%=bean.getType() %> &nbsp;|&nbsp; 등록일 &nbsp;<%=bean.getReg_date() %>
												</td>
											</tr>
											<tr height="300" class="line">
												<td align="left" colspan="2"><pre style="background-color:white;"><%=bean.getContent()%></pre>

												</td>
											</tr>
											<tr height="50" class="line">
												<td width="100">
													이전&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="arr_up.png">
												</td>
												<c:choose>
													<c:when test="${nbean.getSubject() == null}">
														<td></td>
													</c:when>
													<c:otherwise>
														<td><a href="sboardInfo.jsp?num=<%=nbean.getNum() %>"><%=nbean.getSubject() %></a></td>
													</c:otherwise>
												</c:choose>
											</tr>
											<tr height="50" class="line">
												<td width="100">
													다음&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="arr_down.png">
												</td>
												<c:choose>
													<c:when test="${bbean.getSubject() == null }">
														<td></td>
													</c:when>
													<c:otherwise>
														<td><a href="sboardInfo.jsp?num=<%=bbean.getNum() %>"><%=bbean.getSubject() %></a></td>
													</c:otherwise>
												</c:choose>
											</tr>
										</table>
									</form>
					            </div>
					            <div class="action take-tour" align="center">
			                        <div width="800" align="center">
			                        <c:choose>
				                        <c:when test="${result == 2}">
				                        	<a href="service_notice.jsp" class="btn btn-common">목록</a>
					                        <a href="sboardUpdateForm.jsp?num=<%=bean.getNum() %>" class="btn btn-common">수정</a>
					                        <a href="javascript:event(<%=bean.getNum() %>)" class="btn btn-common">삭제</a>
				                        </c:when>
				                        <c:otherwise>
				                        	<a href="service_notice.jsp" class="btn btn-common">목록</a>
				                        </c:otherwise>
				                    </c:choose>
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