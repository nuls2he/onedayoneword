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
        
<style>
.fileDrop{
	width: 100%;
	height: 150px;
	border: 1px dotted blue;
}

.testImgBox{
	width: 100%;
	height: 50px;
	border: 1px dotted blue;
}
</style>
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
                        <form id="actionForm" action="/oneday/insert" method="post">
                            <input type="text" class="form-control footer-input margin-b-20" name="title" placeholder="title" required>
                            <!-- <input type="text" class="form-control footer-input margin-b-20" name="writer" placeholder="writer" required> -->
                            <textarea class="form-control footer-input margin-b-30" rows="6" name="content" placeholder="content" required></textarea>
                            <button  id="submit" type="submit" class="btn-theme btn-theme-sm btn-base-bg text-uppercase">글쓰기</button>
                   		</form>
                   		
                  	</div>
                  	<div class="col-sm-2  sm-margin-b-30">
                  		<span id="lalala" style="font-color:red"></span>
                  		<button type="button" id="testBtn">버튼</button>
                  	</div>
                  	<div class="col-sm-6  sm-margin-b-30">
                  		
                  		<div class="row">
							<div class="fileDrop"></div>
							
							<div class="uploadedList"></div>
						</div>
                  	</div>
              	</div>     		
			</div>
        </div>

	<c:import url="../includes/footer.jsp"></c:import>

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

		var dateArr = [];
		var fileNameArr = [];
		
		$(".fileDrop").on("dragenter dragover", function(event) {
			event.preventDefault();
		});

		$(".fileDrop")
				.on(
						"drop",
						function(event) {
							event.preventDefault();

							var files = event.originalEvent.dataTransfer.files;
							
							var $dataList = $(".uploadedList");

							console.log(files);
							console.log(files.length);
							
							if(files.length >= 3 || $dataList.children().length >= 3){
								console.log("그만넣으셈");
								return;
							}
								
							for (var i = 0; i < files.length; i++) {
								var formData = new FormData();

								formData.append("file", files[i]);
								$.ajax({
											url : '/oneday/uploadAjax',
											data : formData,
											dataType : 'text',
											processData : false,
											contentType : false,
											type : 'POST',
											success : function(data) {
												var str = "";
												var date = data.substring(0,
														data.indexOf("s"));
												var fileName = data
														.substring(data
																.indexOf("s") + 2);

												dateArr.push(date);
												fileNameArr.push(fileName);

												console.log(date);
												console.log(fileName);

												if (checkImageType(data)) {
													str = "<span>"
															+ "<img style= 'margin :5px' src='displayFile?fileName="
															+ data
															+ "'/>"
															+ "<small data-src="+data+">X</small></span>";
												} else {
													str = "<sapn>"
															+ data
															+ "<small data-src="+data+">X</small></sapn>";
												}

												$(".uploadedList").append(str);

											}
										});
							}
						});
		function checkImageType(fileName) {

			var pattern = /jpg|gif|png|jpeg/;

			return fileName.match(pattern);

		}

		$(".uploadedList").on(
				"click",
				"small",
				function(event) {

					var that = $(this);
					var date = $(this).attr("data-src").substring(0,
							$(this).attr("data-src").indexOf("s"));
					var fileName = $(this).attr("data-src").substring(
							$(this).attr("data-src").indexOf("s") + 2);

					for(var i = 0; i < dateArr.length; i++) {
						 if(dateArr[i] == date){
							 dateArr.splice(i, 1);
							 fileNameArr.splice(i, 1);
						 }
					 }

					$.ajax({
						url : "/oneday/deleteFile",
						type : "post",
						data : {
							fileName : $(this).attr("data-src")
						},
						dataType : "text",
						success : function(result) {
							//console.log(result);
							//console.log(date);
							if (result == 'deleted') {

								that.parent("span").remove();
							}
						}
					});
				});
		
		// ------------FirebaseDB Test----------------
		
		var $btn = $("#submit");
		var actionForm = $("#actionForm");
		
		var number;
		
		$btn.on('click', function (e) {
			
			e.preventDefault();
			
            firebase.database().ref('/no').once('value', function(snapshot){
				//console.log(snapshot);
        		snapshot.val() == null ? number = 1 : number = snapshot.val().no;
        		number ++;
        		
        		var numData = {
                		no : number	
                	};	
        		
        		console.log("number : " + numData.no);
        		
        		firebase.database().ref('/no').set(numData);
        		
        		//console.log(actionForm.find("textarea[name='content']").val());
        		
	            writeNewPost(number, 
	            		actionForm.find("input[name='title']").val(), 
	            		actionForm.find("textarea[name='content']").val(), 
	            		fileNameArr.length > 0 ? true : false);

	            actionForm.submit();
			});
        });
		// 아이디도 있어야함 
		// 필요한거는 글번호 글제목 글쓴이 글내용이 필요함
		function writeNewPost(no, title, content, picture) {	
			
			console.log(no);
			console.log("title : " + title);
			console.log("content : " + content);
			console.log("picture : " + picture);
			
			var pictures = [];
			
			if(picture) {
				for(var i = 1; i <= dateArr.length; i++){
					pictures.push(dateArr[i - 1] + fileNameArr[i -1]);
				}		
			}
			
			console.log(pictures);
			
			//댓글은 어떻하나....
			var writeData = {
				title : title,
				content : content,
				path : pictures	
			};
						
			firebase.database().ref('/List/' + no).set(writeData);
			//firebase.database().ref('/List/20').set(writeData);
		}

		// ------------FirebaseDB Test----------------
	</script>


</body>
</html>