<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>

	<link rel="apple-touch-icon" sizes="76x76" href="/resources/img/apple-icon.png">
	<link rel="icon" type="image/png" href="/resources/img/favicon.png">	

		<!-- GLOBAL MANDATORY STYLES -->
        <link href="http://fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet" type="text/css">
        <link href="/resources/HTML/vendor/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css"/>
        <link href="/resources/HTML/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

        <!-- PAGE LEVEL PLUGIN STYLES -->
        <link href="/resources/HTML/css/animate.css" rel="stylesheet">
        <link href="/resources/HTML/vendor/swiper/css/swiper.min.css" rel="stylesheet" type="text/css"/>

        <!-- THEME STYLES -->
        <link href="/resources/HTML/css/layout.min.css" rel="stylesheet" type="text/css"/>

        <!-- Favicon -->
        <link rel="shortcut icon" href="favicon.ico"/>
</head>
<body class="profile-page">

	<c:import url="../includes/header.jsp"></c:import>
	
	<!--========== PARALLAX ==========-->
        <div class="parallax-window" data-parallax="scroll" data-image-src="/resources/HTML/img/1920x1080/01.jpg">
            <div class="parallax-content container">
                <h1 class="carousel-title">글쓰기</h1>
                <p>여기다<br/> 글을 쓰면 됨</p>
            </div>
        </div>
        
        <div class="bg-color-sky-light">
        	<div class="content-lg container">
       			<div class="row">
               		<div class="col-sm-5 sm-margin-b-30">
               		<h2 class="color-white">Send Us A Note</h2>
                        <form action="/oneday/insert" method="post">
                            
                            <input type="text" class="form-control footer-input margin-b-20" name="title" placeholder="title" required>
                            <input type="text" class="form-control footer-input margin-b-20" name="writer" placeholder="writer" required>
                            <textarea class="form-control footer-input margin-b-30" rows="6" name="content" placeholder="content" required></textarea>
                            <button type="submit" class="btn-theme btn-theme-sm btn-base-bg text-uppercase">글쓰기</button>
                   		</form>
                  	</div>
              	</div>     		
			</div>
        </div>

	<c:import url="../includes/footer.jsp"></c:import>
	
	<!-- Back To Top -->
        <a href="javascript:void(0);" class="js-back-to-top back-to-top">Top</a>

        <!-- JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
        <!-- CORE PLUGINS -->
        <script src="/resources/HTML/vendor/jquery.min.js" type="text/javascript"></script>
        <script src="/resources/HTML/vendor/jquery-migrate.min.js" type="text/javascript"></script>
        <script src="/resources/HTML/vendor/bootstrap//resources/HTML/js/bootstrap.min.js" type="text/javascript"></script>

        <!-- PAGE LEVEL PLUGINS -->
        <script src="/resources/HTML/vendor/jquery.easing.js" type="text/javascript"></script>
        <script src="/resources/HTML/vendor/jquery.back-to-top.js" type="text/javascript"></script>
        <script src="/resources/HTML/vendor/jquery.smooth-scroll.js" type="text/javascript"></script>
        <script src="/resources/HTML/vendor/jquery.wow.min.js" type="text/javascript"></script>
        <script src="/resources/HTML/vendor/jquery.parallax.min.js" type="text/javascript"></script>
        <script src="/resources/HTML/vendor/swiper//resources/HTML/js/swiper.jquery.min.js" type="text/javascript"></script>

        <!-- PAGE LEVEL SCRIPTS -->
        <script src="/resources/HTML/js/layout.min.js" type="text/javascript"></script>
        <script src="/resources/HTML/js/components/swiper.min.js" type="text/javascript"></script>
        <script src="/resources/HTML/js/components/wow.min.js" type="text/javascript"></script>
	</script>
</body>
</html>