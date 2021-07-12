<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../main/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>service_QnA</title>
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
</head><!--/head-->
<body> 
    <section id="page-breadcrumb">
        <div class="vertical-center sun">
             <div class="container">
                <div class="row">
                    <div class="action">
                        <div class="col-sm-12">
                            <h1 class="title">자주찾는질문</h1>
                            <p>회원님들께서 가장 자주하시는 질문을 모았습니다. 궁금하신 내용에 대해 검색해보세요.</p>
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
                                    <h2 class="page-header">자주 찾는 질문 Best5</h2>
                                    <div style="padding-top:20px;">
					                <div class="panel-group" id="accordion">
					                    <div class="panel panel-default">
					                        <div class="panel-heading">
					                            <h4 class="panel-title">
					                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
					                                    Q1. &nbsp;아이디를 바꾸고 싶은데 수정할 수 있나요?
					                                </a>
					                            </h4>
					                        </div>
					                        <div id="collapseOne" class="panel-collapse collapse in">
					                            <div class="panel-body">
					                            	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="arrow.gif">&nbsp;&nbsp;<span style=color:red;>A</span>. &nbsp;회원가입시 입력한 아이디는 변경이 불가하며,<br>
					                            	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;탈퇴 후 재가입(신규가입)을 통해 새로운 아이디로 지정할 수 있습니다.<br> 
					                            	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;단, 탈퇴 시 재가입은 30일이후부터 가능합니다.
					                            </div>
					                        </div>
					                    </div>
					                    <div class="panel panel-default">
					                        <div class="panel-heading">
					                            <h4 class="panel-title">
					                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
					                                    Q2. &nbsp;이름을 개명했는데 어디서 바꾸나요?
					                                </a>
					                            </h4>
					                        </div>
					                        <div id="collapseTwo" class="panel-collapse collapse">
					                            <div class="panel-body">
					                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="arrow.gif">&nbsp;&nbsp;<span style=color:red;>A</span>. &nbsp;홈페이지 로그인 후 [마이페이지] - [개인정보 수정]에서 변경 가능합니다.
					                            </div>
					                        </div>
					                    </div>
					                    <div class="panel panel-default">
					                        <div class="panel-heading">
					                            <h4 class="panel-title">
					                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
					                                    Q3. &nbsp;외부음식 반입이 가능한가요?
					                                </a>
					                            </h4>
					                        </div>
					                        <div id="collapseThree" class="panel-collapse collapse">
					                            <div class="panel-body">
					                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="arrow.gif">&nbsp;&nbsp;<span style=color:red;>A</span>. &nbsp;상영관 내 외부 음식 반입은 가능하나
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;영화 관람 시 다른 고객님에게 방해가 되지않은 품목에 한하여 반입 가능합니다.<br><br>
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;강한 냄새 및 지속적인 소음이 발생하는 품목은 취식 후 입장해주시길 부탁드리며,<br>
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;쾌적한 관람 환경을 위해 많은 양해 부탁드립니다.<br>
					                            </div>
					                        </div>
					                    </div>
					                    <div class="panel panel-default">
					                        <div class="panel-heading">
					                            <h4 class="panel-title">
					                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour">
					                                    Q4. &nbsp;인터넷 예매 시 취소는 어떻게 하나요?
					                                </a>
					                            </h4>
					                        </div>
					                        <div id="collapseFour" class="panel-collapse collapse">
					                            <div class="panel-body">
					                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="arrow.gif">&nbsp;&nbsp;<span style=color:red;>A</span>. &nbsp;상영시간 20분 전까지 홈페이지, 어플, 웹을 통해 취소 가능합니다.<br>
  													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;단, 상영시간 20분 미만으로 남았을 경우 현장 매표소를 통해 상영시간 전까지 취소 가능합니다.
					                            </div>
					                        </div>
					                    </div>
					                    <div class="panel panel-default">
					                        <div class="panel-heading">
					                            <h4 class="panel-title">
					                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseFive">
					                                    Q5. &nbsp;[이벤트] 용기내 이벤트에는 어떤 용기까지 가능한가요?
					                                </a>
					                            </h4>
					                        </div>
					                        <div id="collapseFive" class="panel-collapse collapse">
					                            <div class="panel-body">
					                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="arrow.gif">&nbsp;&nbsp;<span style=color:red;>A</span>. &nbsp;뚜껑이 있는 다회용 용기는 모두 가능합니다.
					                            </div>
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