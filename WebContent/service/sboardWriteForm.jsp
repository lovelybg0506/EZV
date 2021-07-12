<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../main/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sboardWriteForm</title>
<style type="text/css">
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
					                <form action="sboardWriteProc.jsp" method="post">
										<table width="800">
											<tr height="40">
												<td width="200" align="center">제목</td>
												<td>&nbsp;<input type="text" name="subject" size="100" required></td>
											</tr>
											<tr height="40">
												<td width="200" align="center">지점</td>
												<td>&nbsp;<input type="text" name="place" size="100" required></td>
											</tr>
											<tr height="40">
												<td width="200" align="center">구분</td>
												<td>&nbsp;
													<select name="type">
														<option value="공지">공지</option>
														<option value="무대인사">무대인사</option>
														<option value="이벤트">이벤트</option>
													</select>
												</td>
											</tr>
											<tr height="40">
												<td width="200" align="center">내용</td>
												<td width="480"><textarea wrap="hard" rows="10" cols="100" name="content" align="left" required></textarea></td>
											</tr>
											<tr height="40">
												<td colspan="2" align="center">
								                    <input type="submit" value="글쓰기">&nbsp;&nbsp;
													<input type="reset" value="다시 작성">&nbsp;&nbsp;
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