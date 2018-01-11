<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!--========== HEADER ==========-->
<header class="header navbar-fixed-top">
	<!-- Navbar -->
	<nav class="navbar" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="menu-container">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".nav-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="toggle-icon"></span>
				</button>

				<!-- Logo -->
				<div class="logo">
					<a class="logo-wrap" href="/main/index"> <img
						class="logo-img logo-img-main"
						src="/resources/HTML/img/mainlogo.png" alt="Asentus Logo">
					</a>
				</div>
				<!-- End Logo -->
			</div>


			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse nav-collapse">
				<div class="menu-container">
					<ul class="navbar-nav navbar-nav-right">
						<li class="nav-item"><a class="nav-item-child nav-item-hover"
							href="/main/index">Home</a></li>
						<li class="nav-item"><a class="nav-item-child nav-item-hover"
							id="goChat">채팅</a></li>
						<li class="nav-item"><a class="nav-item-child nav-item-hover"
							href="/main/boardlist">게시판</a></li>
						<li class="nav-item"><a class="nav-item-child nav-item-hover"
							href="/../member/mypage">My Page</a></li>
						<li class="nav-item"><a class="nav-item-child nav-item-hover"
							href="/logout">Log out</a></li>
					</ul>
				</div>
			</div>
			<!-- End Navbar Collapse -->
		</div>
	</nav>
	<!-- Navbar -->
</header>
<!--========== END HEADER ==========-->

<script src="https://code.jquery.com/jquery-3.2.1.min.js"
	integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
	crossorigin="anonymous"></script>


	<script src="https://www.gstatic.com/firebasejs/4.8.1/firebase.js"></script>
	<script>
		// Initialize Firebase
		var config = {
			apiKey : "AIzaSyAD_qm6cmfsf6dMmTqXPDYlylDq5yGZLSQ",
			authDomain : "oneday-1123.firebaseapp.com",
			databaseURL : "https://oneday-1123.firebaseio.com",
			projectId : "oneday-1123",
			storageBucket : "oneday-1123.appspot.com",
			messagingSenderId : "360329597510"
		};
		firebase.initializeApp(config);
	</script>




<script>
	var id = "${login}";

	var userInfo = '';

	$("#goChat").click(function() {
				getMemberInfo(id);
				
			});

	function getMemberInfo(userId) {

		var data = firebase.database().ref("/member/" + userId);

		data.on("value", function(snapshot) {

			userInfo = snapshot.val();
			
			var myUrl = 'http://192.168.0.113:5000/chat.html?id='
				+ userInfo.id + '&age=' + userInfo.age;
		window.open(myUrl, '',
				'scrollbars=1,resizable=1,width=800,height=600');
		});
		

	};
</script>









