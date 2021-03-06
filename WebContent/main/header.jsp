<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
</head>
<link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/font-awesome.min.css" rel="stylesheet">
    <link href="../css/animate.min.css" rel="stylesheet"> 
    <link href="../css/lightbox.css" rel="stylesheet"> 
	<link href="../css/main.css" rel="stylesheet">
	<link href="../css/responsive.css" rel="stylesheet">

    <!--[if lt IE 9]>
	    <script src="js/html5shiv.js"></script>
	    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="../images/ico/favicon2.png">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../images/ico/apple-touch-icon-57-precomposed.png">
</head>
<body>
<header id="header">      
        <div class="container">
             <div class="row">
                 <div class="pull-right">
                        <ul class="nav nav-pills">
                         	<c:if test="${loginUser==null }">
        						<li><a href="../mypage/MemberLogin.jsp">로그인</a></li>
        						<li><a href="../mypage/MemberJoin.jsp">회원가입</a></li>
        					</c:if>
        					<c:if test="${loginUser!=null }">
        						<li><a href="../mypage/MemberLogout.jsp">로그아웃</a></li>
        						<li><a href="../mypage/Mypage.jsp">마이페이지</a></li>
        					</c:if>
                        </ul>
                    </div>
            	 </div>
          	</div>
          	
          	  <div class="navbar navbar-inverse" role="banner">
		        <div class="container">
		            <div class="navbar-header">
		                <a class="navbar-brand" href="../main/main.jsp">
		                	<h1><img src="../images/logo.png"  alt="logo"></h1>
		          		</a>
           		</div>
           		 <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active"><a href="../main/main.jsp">Home</a></li>
                        <li class="dropdown"><a href="../movie/movie_list.jsp">영화</a></li>                  
                        <li class="dropdown"><a href="../reservation/reservationView.jsp">예매<i class="fa fa-angle-down"></i></a>
                          <ul role="menu" class="sub-menu">
                            <li><a href="../reservation/reservationView.jsp">빠른 예매</a></li>
                            <li><a href="../movie/movie_time_day1.jsp">상영 시간표</a></li>
                          </ul>
                        </li>
                      	<li class="dropdown"><a href="../theater/theater.jsp">극장 </a></li>                         
                        <li class="dropdown"><a href="../event/eventmain.jsp">이벤트</a></li>                         
                        <li class="dropdown"><a href="#">SNS <i class="fa fa-angle-down"></i></a>  
                          <ul role="menu" class="sub-menu">
                            <li><a href="https://www.facebook.com/ezenac.co.kr/" target="_blank"><i class="fa fa-facebook">&nbsp;&nbsp;&nbsp;&nbsp;Facebook</i></a></li>
                            <li><a href="http://www.twitter.com" target="_blank"><i class="fa fa-twitter">&nbsp;&nbsp;&nbsp;&nbsp;Twitter</i></a></li>
                            <li><a href="https://www.instagram.com/ezen_ac/" target="_blank"><i class="fa fa-instagram">&nbsp;&nbsp;&nbsp;&nbsp;Instagram</i></a></li>
                            <li><a href="https://www.youtube.com/channel/UCSmmLUH4x14hzJNpLshJIGA" target="_blank"><i class="fa fa-youtube">&nbsp;&nbsp;&nbsp;&nbsp;YouTube</i></a></li>
                          </ul>
                          </li>
                        <li class="dropdown"><a href="../service/service_main.jsp">고객센터<i class="fa fa-angle-down"></i></a>
                        <ul role="menu" class="sub-menu">
                                <li><a href="../service/service_notice.jsp">공지사항</a></li>
                                <li><a href="../service/service_QnA.jsp">자주찾는질문</a></li>
                                <li><a href="../service/service_question.jsp">1:1 문의</a></li>
                                <li><a href="../service/service_LnF.jsp">분실물 문의</a></li>
                            </ul>
                        
                        </li>                         
                    	</ul>
                    </div>
               </div>
          </div>
    </header>
</body>
</html>