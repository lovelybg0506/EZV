<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>main</title>
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
    <link rel="shortcut icon" href="../images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->

<body>
	<header id="header">      
        <div class="container">
            <div class="row">
                <div class="col-sm-12 overflow">
                   <div class="social-icons pull-right">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="active"><a href="#">마이페이지</a></li>
                            <li class="active"><a href="#">로그인</a></li>
                            <li class="active"><a href="#">사이트이용안내</a></li>
                        </ul>
                    </div> 
                </div>
             </div>
        </div>
        <div class="navbar navbar-inverse" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html">
                    	<h1><img src="../images/logo.png" alt="logo"></h1>
                    </a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active"><a href="../main/main.jsp">Home</a></li>
                        <li class="dropdown"><a href="#">영화</a></li>                  
                        <li class="dropdown"><a href="#1">예매 <i class="fa fa-angle-down"></i></a>
                            <ul role="menu" class="sub-menu">
                                <li><a href="#1">빠른 예매</a></li>
                                <li><a href="#">상영시간표</a></li>
                            </ul>
                        </li>
                       <li class="dropdown"><a href="#">극장 </a></li>                         
                        <li class="dropdown"><a href="#">이벤트</a></li>                         
                         <li class="dropdown"><a href="#">SNS <i class="fa fa-angle-down"></i></a>  
                          <ul role="menu" class="sub-menu">
                            <li><a href="http://www.facebook.com"><i class="fa fa-facebook">&nbsp;&nbsp;&nbsp;&nbsp;Facebook</i></a></li>
                            <li><a href="http://www.twitter.com"><i class="fa fa-twitter">&nbsp;&nbsp;&nbsp;&nbsp;Twitter</i></a></li>
                            <li><a href="http://www.instagram.com"><i class="fa fa-instagram">&nbsp;&nbsp;&nbsp;&nbsp;Instagram</i></a></li>
                            <li><a href="http://www.youtube.com/"><i class="fa fa-youtube">&nbsp;&nbsp;&nbsp;&nbsp;YouTube</i></a></li>
                        	 </ul>
                        <li class="dropdown"><a href="#">고객센터</a></li>                         
                    	</ul>  
                </div>
            </div>
        </div>
    </header>
    <!--/#header-->
    <section id="home-slider">
        <div class="container">
            <div class="main-slider">
                <div class="slide-text">
                    <h1>행복이 넘치는 EZV입니다!</h1>
                    <p>Boudin doner frankfurter pig. Cow shank bresaola pork loin tri-tip tongue venison pork belly meatloaf short loin landjaeger biltong beef ribs shankle chicken andouille.</p>
                    <a href="#" class="btn btn-common">SIGN UP</a>
                </div>
                <img src="../images/home/slider/slide1/house.png" class="img-responsive slider-house" alt="slider image">
                <img src="../images/home/slider/slide1/circle1.png" class="slider-circle1" alt="slider image">
                <img src="../images/home/slider/slide1/circle2.png" class="slider-circle2" alt="slider image">
                <img src="../images/home/slider/slide1/cloud1.png" class="slider-cloud1" alt="slider image">
                <img src="../images/home/slider/slide1/cloud2.png" class="slider-cloud2" alt="slider image">
                <img src="../images/home/slider/slide1/cloud3.png" class="slider-cloud3" alt="slider image">
                <img src="../images/home/slider/slide1/sun.png" class="slider-sun" alt="slider image">
                <img src="../images/home/cycle.png" class="slider-cycle" alt="">
            </div>
        </div>
        <div class="preloader"><i class="fa fa-sun-o fa-spin"></i></div>
    </section>
    <!--/#home-slider-->

<div style="height: 30px" >
</div>
    <footer id="footer">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="copyright-text text-center">
                        <p>&copy; EZEN 5강의장 2021 EZVProject. All Rights Reserved.</p>
                        <p>신재용 김준형 정하은 강병규 전대현</p>
                        <p>Designed by <a target="_blank" href="http://www.themeum.com">Themeum</a></p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!--/#footer-->

    <script type="text/javascript" src="../js/jquery.js"></script>
    <script type="text/javascript" src="../js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../js/lightbox.min.js"></script>
    <script type="text/javascript" src="../js/wow.min.js"></script>
    <script type="text/javascript" src="../js/main.js"></script>   
</body>
</html>