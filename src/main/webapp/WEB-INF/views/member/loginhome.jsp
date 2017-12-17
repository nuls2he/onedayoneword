<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sign Up Page - Material Kit by Creative Tim</title>

<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />

<!--     Fonts and icons     -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons" />
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />

<!-- CSS Files -->
<link href="/resources/css/bootstrap.min.css" rel="stylesheet" />
<link href="/resources/css/material-kit.css" rel="stylesheet" />

</head>

<body class="signup-page">


<script
  src="https://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous">
</script>

<!-- 
	<nav class="navbar navbar-transparent navbar-absolute">
		<div class="container">
			Brand and toggle get grouped for better mobile display
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#navigation-example">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="http://www.creative-tim.com">Creative
					Tim</a>
			</div>

			<div class="collapse navbar-collapse" id="navigation-example">
				<ul class="nav navbar-nav navbar-right">
					 <li><a href="../components-documentation.html" target="_blank">
							Components </a></li>
					<li><a
						href="http://demos.creative-tim.com/material-kit-pro/presentation.html?ref=utp-freebie"
						target="_blank"> <i class="material-icons">unarchive</i>
							Upgrade to PRO
					</a> -->
					
						<!--  로그인 위에 아이콘  -->
					<!-- </li>
					<li><a href="https://twitter.com/CreativeTim" target="_blank"
						class="btn btn-simple btn-white btn-just-icon"> <i
							class="fa fa-twitter"></i>
					</a></li>
					<li><a href="https://www.facebook.com/CreativeTim"
						target="_blank" class="btn btn-simple btn-white btn-just-icon">
							<i class="fa fa-facebook-square"></i>
					</a></li>
					<li><a href="https://www.instagram.com/CreativeTimOfficial"
						target="_blank" class="btn btn-simple btn-white btn-just-icon">
							<i class="fa fa-instagram"></i>
					</a></li> 
				</ul>
			</div>
		</div>
	</nav>
-->
	<div class="wrapper">
		<div class="header header-filter"
			style="background-image: url('/resources/img/city.jpg'); background-size: cover; background-position: top center;">
			<div class="container">
				<div class="row">
					<div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
						<div class="card card-signup">
							<form class="form" method="" action="">
								<div class="header header-primary text-center">
									<h4>로그인</h4>
									<div class="social-line">
									
									<!--  로그인 밑에 아이콘 (페이스북  ,트위터 , 구글)  -->
										<!-- <a href="#pablo" class="btn btn-simple btn-just-icon"> <i
											class="fa fa-facebook-square"></i>
										</a> <a href="#pablo" class="btn btn-simple btn-just-icon"> <i
											class="fa fa-twitter"></i>
										</a> <a href="#pablo" class="btn btn-simple btn-just-icon"> <i
											class="fa fa-google-plus"></i>
										</a> -->
										
									</div>
								</div>
								<div class="content">

									<div class="input-group">
										<span class="input-group-addon"> <i
											class="material-icons">face</i>
										</span> <input type="text" class="form-control"
											placeholder="ID...">
									</div>

									<div class="input-group">
										<span class="input-group-addon"> <i
											class="material-icons">lock_outline</i>
										</span> <input type="password" placeholder="Password..."
											class="form-control" />
									</div>


									<!-- If you want to add a checkbox to this form, uncomment this code

									<div class="checkbox">
										<label>
											<input type="checkbox" name="optionsCheckboxes" checked>
											Subscribe to newsletter
										</label>
									</div> -->
								</div>
								<div class="footer text-center">
									<a class="btn btn-simple btn-primary btn-lg" > 로그인
										</a>
								</div>
								<div class="footer text-center">
									<a class="btn btn-simple btn-primary btn-lg" id="gologin"> 회원가입
										</a>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
				<!-- footer  -->
			<footer class="footer">
				<div class="container">
					<nav class="pull-left">
						<ul>
							<li><a href="http://www.creative-tim.com"> Creative Tim
							</a></li>
							<li><a href="http://presentation.creative-tim.com">
									About Us </a></li>
							<li><a href="http://blog.creative-tim.com"> Blog </a></li>
							<li><a href="http://www.creative-tim.com/license">
									Licenses </a></li>
						</ul>
					</nav>
					<div class="copyright pull-right">
						&copy; 2016, made with <i class="fa fa-heart heart"></i> by <a
							href="http://www.creative-tim.com" target="_blank">Creative
							Tim</a>
					</div>
				</div>
			</footer>
		<script>
			$('#gologin').click(function() {
				location.href = '/member/login';
			});
		</script>
</body>


<!--   Core JS Files   -->
<script src="/resources/js/jquery.min.js" type="text/javascript"></script>
<script src="/resources/js/bootstrap.min.js" type="text/javascript"></script>
<script src="/resources/js/material.min.js"></script>

<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
<script src="/resources/js/nouislider.min.js" type="text/javascript"></script>

<!--  Plugin for the Datepicker, full documentation here: http://www.eyecon.ro/bootstrap-datepicker/ -->
<script src="/resources/js/bootstrap-datepicker.js"
	type="text/javascript"></script>

<!-- Control Center for Material Kit: activating the ripples, parallax effects, scripts from the example pages etc -->
<script src="/resources/js/material-kit.js" type="text/javascript"></script>

</html>
