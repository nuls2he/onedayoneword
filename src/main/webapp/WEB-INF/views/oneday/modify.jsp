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
        
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.fileDrop{
	width: 100%;
	height: 150px;
	border: 1px dotted blue;
}

.select{
  width: 250px;
  position:relative;  
  display:block;
  margin:4px 0 8px;
  margin-bottom:20px;
  border-radius:3px;
  background:#f3f3f3 30%;
  background:-webkit-linear-gradient(top,#f3f3f3 30%,#e1e1e1);
  background:-moz-linear-gradient(top,#f3f3f3 30%,#e1e1e1);
  background:-ms-linear-gradient(top,#f3f3f3 30%,#e1e1e1);
  background:-o-linear-gradient(top,#f3f3f3 30%,#e1e1e1);
  background:linear-gradient(top,#f3f3f3 30%,#e1e1e1);
  -webkit-box-shadow:inset 0 0 0 1px rgba(0,0,0,0.2),inset 0 1px 0 1px #fff,0 1px 2px rgba(0,0,0,0.15);
  -moz-box-shadow:inset 0 0 0 1px rgba(0,0,0,0.2),inset 0 1px 0 1px #fff,0 1px 2px rgba(0,0,0,0.15);box-shadow:inset 0 0 0 1px rgba(0,0,0,0.2),inset 0 1px 0 1px #fff,0 1px 2px rgba(0,0,0,0.15);
}

.select select{
  height:40px;
  margin-bottom:0;
  line-height:20px;
  padding:6px;
  padding-left: 15px;
  border:0;background:transparent;
  -webkit-appearance:none;
  border-radius:3px;
  color:#666;
  width:100%;
}

.select select:focus{
  -webkit-box-shadow:0 0 3px 1px #2c7fcd,inset 0 0 3px #2c7fcd;
  -moz-box-shadow:0 0 3px 1px #2c7fcd,inset 0 0 3px #2c7fcd;
  box-shadow:0 0 3px 1px #2c7fcd,inset 0 0 3px #2c7fcd;
}

.select select option{
  background:#fff;
  color:black;
}

.select select.invalid{
  -webkit-box-shadow:0 0 3px 1px #e21824,inset 0 0 3px #e21824;
  -moz-box-shadow:0 0 3px 1px #e21824,inset 0 0 3px #e21824;
  box-shadow:0 0 3px 1px #e21824,inset 0 0 3px #e21824;
}

.select select:focus{
  outline: none;
  box-shadow: none;
}

.select:before{
  content:"\f0dd";
  font-family: FontAwesome;
  font-weight: normal;
  font-style: normal;
  display: inline-block;
  -webkit-font-smoothing: antialiased;
  font-size:14px;
  color:#666;
  position:absolute;
  right:11px;
  top:8px;
  text-shadow:0 1px 0 #fff;
  pointer-events:none;
}

.select:after{
  content:'';
  position:absolute; 
  top:1px;
  bottom:1px;
  right:28px;
  border-left:1px solid rgba(0,0,0,0.1);
  border-right:1px solid #fff;
  pointer-events:none;
}

.select:after,x:-moz-any-link{
  display:none
}

.select select,x:-moz-any-link{
  padding:8px 7px 7px 6px
}

.select select::-ms-expand {
  display: none;
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
               			
                        <form id="actionForm" action="/main/boardlist" method="get">
                        	<span class="select" >
							    <select name="location" onclick="return false;" id="location" >
							        <option value="강서구">강서구</option>
							        <option value="서초구">서초구</option>
							        <option value="강동구">강동구</option>
							        <option value="강남구">강남구</option>
							    </select>
					    	</span> 
                            <input type="text" class="form-control footer-input margin-b-20" name="title" placeholder="title" required>
                            <!-- <input type="text" class="form-control footer-input margin-b-20" name="writer" placeholder="writer" required> -->
                            <textarea class="form-control footer-input margin-b-30" rows="6" name="content" placeholder="content" required></textarea>
                            <button  id="submit" type="submit" class="btn-theme btn-theme-sm btn-base-bg text-uppercase">글쓰기</button>
                   		</form>
                   		
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
	
	<form action="/oneday/detail" method=get id="testForm">
		<input type="hidden" name="no">
	</form>

	<!-- Back To Top -->
	<a href="javascript:void(0);" class="js-back-to-top back-to-top">Top</a>

	<!-- JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
	<!-- CORE PLUGINS -->
	<script src="/resources/HTML/vendor/jquery.min.js"	type="text/javascript"></script>
	<script src="/resources/HTML/vendor/jquery-migrate.min.js"	type="text/javascript"></script>
	<script src="/resources/HTML/vendor/bootstrap/js/bootstrap.min.js"	type="text/javascript"></script>

	<!-- PAGE LEVEL PLUGINS -->
	<script src="/resources/HTML/vendor/jquery.easing.js" type="text/javascript"></script>
	<script src="/resources/HTML/vendor/jquery.back-to-top.js"	type="text/javascript"></script>
	<script src="/resources/HTML/vendor/jquery.smooth-scroll.js"	type="text/javascript"></script>
	<script src="/resources/HTML/vendor/jquery.wow.min.js"	type="text/javascript"></script>
	<script src="/resources/HTML/vendor/jquery.parallax.min.js"	type="text/javascript"></script>
	<script src="/resources/HTML/vendor/swiper/js/swiper.jquery.min.js"	type="text/javascript"></script>

	<!-- PAGE LEVEL SCRIPTS -->
	<script src="/resources/HTML/js/layout.min.js" type="text/javascript"></script>
	<script src="/resources/HTML/js/components/swiper.min.js"	type="text/javascript"></script>
	<script src="/resources/HTML/js/components/wow.min.js" type="text/javascript"></script>

	<script src="https://www.gstatic.com/firebasejs/4.8.1/firebase.js"></script>

	<script>
	
	var writeNo;
	var dateArr = [];
	var fileNameArr = [];

		(function(){
			
			// ------------Initialize Firebase---------------
			writeNo = ${no};
			
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
			String.prototype.replaceAt=function(index, character) {
			    return this.substr(0, index) + character + this.substr(index + 1);
			}
			
			firebase.database().ref('/Board/' + writeNo).once('value', function(snapshot){
				if(snapshot.val() != null){
					$("#location").val(snapshot.val().location).attr("selected", "selected");
					$("input[name='title']").val(snapshot.val().title);
					$("textarea[name='content']").val(snapshot.val().content);
				}	
			});

			firebase.database().ref('/Board/' + writeNo + '/path').once('value', function(snapshot){
				if(snapshot.val() != null) {
					var str;

					if(Array.isArray(snapshot.val())) {
						
						for(var i = 0; i < snapshot.val().length; i++){
							console.log(snapshot.val()[i].lastIndexOf("/"));
							console.log(snapshot.val()[i].replaceAt(snapshot.val()[i].lastIndexOf("/"), "/s_"));
							
							
							
							str ="";
							str = "<span>"
								+ "<img style= 'margin :5px' src='displayFile?fileName="
								+ snapshot.val()[i].replaceAt(snapshot.val()[i].lastIndexOf("/"), "/s_")
								+ "'/>"
								+ "<small data-src="+snapshot.val()[i].replaceAt(snapshot.val()[i].lastIndexOf("/"), "/s_")+">X</small></span>";
					
							$(".uploadedList").append(str);
							
							dateArr.push(snapshot.val()[i].substring(0, snapshot.val()[i].indexOf("s")))
							fileNameArr.push(snapshot.val()[i]	.substring(snapshot.val()[i].indexOf("s") + 2));
						}
						
					}
					else{

						str ="";
						str = "<span>"
							+ "<img style= 'margin :5px' src='displayFile?fileName="
							+ snapshot.val().replaceAt(snapshot.val().lastIndexOf("/"), "/s_")
							+ "'/>"
							+ "<small data-src="+snapshot.val().replaceAt(snapshot.val().lastIndexOf("/"), "/s_")+">X</small></span>";
				
						$(".uploadedList").append(str);	
						
						dateArr.push(snapshot.val().substring(0, snapshot.val().indexOf("s")))
						fileNameArr.push(snapshot.val()	.substring(snapshot.val().indexOf("s") + 2));
					}
				}

			});
		}());	

		
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
													return;
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
						 console.log(dateArr[i]);
						 console.log(fileNameArr[i]);
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
		var submitForm = $("#testForm");
		
		var number;
		
		$btn.on('click', function (e) {
			
			e.preventDefault();
			
			console.log(writeNo);
            writeNewPost(writeNo, 
            		actionForm.find("input[name='title']").val(), 
            		actionForm.find("textarea[name='content']").val(), 
            		fileNameArr.length > 0 ? true : false);

            submitForm.find("input[name='no']").val(writeNo);
            
            submitForm.submit();
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
				location : $("#location").val(),
				title : title,
				writer : 'imymemine',
				content : content,
				path : pictures	
			};
						
			firebase.database().ref('/Board/' + no).set(writeData);
			//firebase.database().ref('/List/20').set(writeData);
		}

		// ------------FirebaseDB Test----------------
	</script>


</body>
</html>