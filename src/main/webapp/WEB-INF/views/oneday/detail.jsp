<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

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
        
        
<style>
.testClass{
  background: linear-gradient(to bottom, #68d8d6, #ffffff);
  color: #454749;
  display: flex;
  align-items: center;
}
.bg-reply-color{
	background:#888888
}
.test-margin{
	margin:auto
}

/* test */
h2 {
  font: 33px sans-serif;
  margin-top: 30px;
  text-align: center;
  text-transform: uppercase;
}
h2.background {
  position: relative;
  z-index: 1;
}
h2.background:before {
  border-top: 2px solid #dfdfdf;
  content: "";
  margin: 0 auto;
  /* this centers the line to the full width specified */
  position: absolute;
  /* positioning must be absolute here, and relative positioning must be applied to the parent */
  top: 50%;
  left: 0;
  right: 0;
  bottom: 0;
  width: 95%;
  z-index: -1;
}
h2.background span {
  /* to hide the lines from behind the text, you have to set the background color the same as the container */
  background: #fff;
  padding: 0 15px;
}
h2.double:before {
  /* this is just to undo the :before styling from above */
  border-top: none;
}
h2.double:after {
  border-bottom: 1px solid blue;
  -webkit-box-shadow: 0 1px 0 0 red;
  -moz-box-shadow: 0 1px 0 0 red;
  box-shadow: 0 1px 0 0 red;
  content: "";
  margin: 0 auto;
  /* this centers the line to the full width specified */
  position: absolute;
  top: 45%;
  left: 0;
  right: 0;
  width: 95%;
  z-index: -1;
}
h2.no-background {
  position: relative;
  overflow: hidden;
}
h2.no-background span {
  display: inline-block;
  vertical-align: baseline;
  zoom: 1;
  *display: inline;
  *vertical-align: auto;
  position: relative;
  padding: 0 20px;
}
h2.no-background span:before,
h2.no-background span:after {
  content: '';
  display: block;
  width: 1000px;
  position: absolute;
  top: 0.73em;
  border-top: 1px solid red;
}
h2.no-background span:before {
  right: 100%;
}
h2.no-background span:after {
  left: 100%;
}
h2.no-span {
  display: table;
  white-space: nowrap;
}
h2.no-span:before,
h2.no-span:after {
  border-top: 1px solid green;
  content: '';
  display: table-cell;
  position: relative;
  top: 0.5em;
  width: 45%;
}
h2.no-span:before {
  right: 1.5%;
}
h2.no-span:after {
  left: 1.5%;
}
</style>
<title>Insert title here</title>
</head>
<body class="profile-page">

	<c:import url="../includes/header.jsp"></c:import>
	
	<!--========== PARALLAX ==========-->
        <div class="parallax-window" data-parallax="scroll" data-image-src="/resources/HTML/img/1920x1080/yellow.png">
            <div class="parallax-content container">
                <h1 class="carousel-title">BOARD</h1>
            </div>
        </div>
        
        <div class="color-white">
        	<div class="content-lg container">
       			<div class="row">
       				<h2 class="color-sky-blue">Send Us A Note</h2>
       				<h2 class="background"></h2>

					<hr>
       				<div class="col-sm-3 sm-margin-b-30">
       				</div>
               		<div id="mark" class="col-sm-5" style="margin-left:10%;margin-right:10%">
	               		
	               		<c:forEach var="data" items="">
	               			
	               		</c:forEach>
	               		<img class="test-margin" width="300px" height="300px" src="">
	               		<img class="test-margin" width="300px" height="300px" src="">
	               		<div class="uploadedList"></div>
                  	</div>
                  	<div class="col-sm-3 sm-margin-b-30">
       				</div>
              	</div>     	
              	<div class="row">
              		<p align="center" id="contentData"></p>
              	</div>
              	<div id="testDiv">
	           		<button id="list" style="float: right">목록</button>
	         		<button id="modify" style="float: right">수정</button>
	         		<button id="remove" style="float: right">삭제</button>
	          	</div>
			</div>
			
        </div>
        <div class="bg-reply-color">
        	<div class="content-lg container">
       			<div class="row">
               		<div class="col-sm-5 sm-margin-b-30">
	               		<h2 class="color-white">Reply</h2>
	               		<input type="text" id="title" name="title">
	                	<input type="text" id="content" name="content">
						<button id="testBtn" type="button">눌러봐</button>
                  	</div>
              	</div>     	
              	<div class="row">
              		<div id="listReply">
              		</div>
             	</div>	
			</div>
        </div>

	<c:import url="../includes/footer.jsp"></c:import>
	
	<form action="/oneday/modify" method=get id="testForm">
		<input type="hidden" name="no">
	</form>

	<!-- Back To Top -->
	<a href="javascript:void(0);" class="js-back-to-top back-to-top">Top</a>

	<!-- JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
	<!-- CORE PLUGINS -->
	<script src="/resources/HTML/vendor/jquery.min.js"	type="text/javascript"></script>
	<script src="/resources/HTML/vendor/jquery-migrate.min.js"	type="text/javascript"></script>
	<script src="/resources/HTML/vendor/bootstrap//resources/HTML/js/bootstrap.min.js"	type="text/javascript"></script>

	<!-- PAGE LEVEL PLUGINS -->
	<script src="/resources/HTML/vendor/jquery.easing.js" type="text/javascript"></script>
	<script src="/resources/HTML/vendor/jquery.back-to-top.js"	type="text/javascript"></script>
	<script src="/resources/HTML/vendor/jquery.smooth-scroll.js"	type="text/javascript"></script>
	<script src="/resources/HTML/vendor/jquery.wow.min.js"	type="text/javascript"></script>
	<script src="/resources/HTML/vendor/jquery.parallax.min.js"	type="text/javascript"></script>
	<script src="/resources/HTML/vendor/swiper//resources/HTML/js/swiper.jquery.min.js"	type="text/javascript"></script>

	<!-- PAGE LEVEL SCRIPTS -->
	<script src="/resources/HTML/js/layout.min.js" type="text/javascript"></script>
	<script src="/resources/HTML/js/components/swiper.min.js"	type="text/javascript"></script>
	<script src="/resources/HTML/js/components/wow.min.js" type="text/javascript"></script>

	<script src="https://www.gstatic.com/firebasejs/4.8.1/firebase.js"></script>

	<script>

		var testForm = $("#testForm");
	
		$("#modify").on("click", function(){
			testForm.find("input[name='no']").val(41);
			testForm.submit();
		});
		
		var testStr = "";
		var arr = [];
		
		(function(){
			
			// ------------Initialize Firebase---------------
			
			var config = {
				apiKey : "AIzaSyCHAm0uDpjUGUPNPptNtoFStgFX3yWsrqs",
				authDomain : "likethis-35671.firebaseapp.com",
				databaseURL : "https://likethis-35671.firebaseio.com",
				projectId : "likethis-35671",
				storageBucket : "likethis-35671.appspot.com",
				messagingSenderId : "637146865404"
			};
			firebase.initializeApp(config);
			
			// ------------Initialize Firebase---------------
			
			$("#remove").on("click", function(){
				firebase.database().ref('/List/38').remove();
			});
			$("#modify").on("click", function(){
				//firebase.database().ref('/List/39').remove();
			});
			
			//---------------------------------------------

			firebase.database().ref('/Board/1/path').once('value', function(snapshot){
				if(snapshot.val() != null){
					// 사진이 있다는 거니 사진 띄우라 알았니?
					console.log(snapshot.val());
					
					if(Array.isArray(snapshot.val())) {
						
						for(var i = 0; i < snapshot.val().length; i++){
							console.log(snapshot.val()[i]);

							testStr += "<img src='displayFile?fileName=";
							testStr += snapshot.val()[i];
							testStr += "' width='300px' height='300px'/><br>";

						}
						$("#mark").html(testStr);
						
					}
					else{
						
						testStr += "<img src='displayFile?fileName=";
						testStr += snapshot.val();
						testStr += "' width='300px' height='300px'/><br>";
						
						$("#mark").html(testStr);
						
					}
				}
			});
			
			var testStr2 = "";
			
			// 이제 글을 띄우면 됨
			firebase.database().ref('/Board/1/content').once('value', function(snapshot){
				console.log("들어오나?");
				if(snapshot.val() != null){
					$("#contentData").text(snapshot.val());
				}
			});
		}());

		//---------------------------------------------
		
		
		// 이미지는 /List/글번호/path

		var num = 0;
		$("#testBtn").click(function(){
			
			var data = {
				replyTitle : $("#title").val(),
				replyContent : $("#content").val()
			};
			
			// 리스트에서 글을 클릭하면 넘겨주는 글번호를 가지고 등록해야함
			// 현재는 그냥 따로 reply를 밖에 만들어서 테스트만 해봄
			num++;
			firebase.database().ref('/reply/' + num).set(data);
			
			firebase.database().ref().child('/reply').once('value', function(snapshot){
				
				var testArr = snapshot.val();
				
				var output = "";
				
				
				// 수정과 삭제를 하기 위해서는 만들면서 이벤트를 등록해줘야함
				for(var i = 1; i < testArr.length; i++){
					console.log(i);
					console.log(testArr[i].replyTitle);
					
					output += "<div class='testClass'>";
					
					output += "		<span>"+ i + "</span><br>";
					output += "		<span>제목 : "+ testArr[i].replyTitle + "</span>";
					output += "		<span>내용 : "+ testArr[i].replyContent + "</span>";
					output += "		<button style='margin:right'>삭제</button>";
						
					output += "</div>";
				}
				
				$("#listReply").html(output);
			});
        });
		
	</script>


</body>
</html>