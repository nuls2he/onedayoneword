<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<link
	href="https://fonts.googleapis.com/css?family=Abril+Fatface|Alfa+Slab+One|Indie+Flower|Lobster|Pacifico|Pangolin|Roboto:900i"
	rel="stylesheet">

<style>
@import url('https://fonts.googleapis.com/css?family=Lato:300,400,700');

.select {
	width: 250px;
	position: relative;
	display: block;
	margin: 4px 0 8px;
	margin-bottom: 20px;
	border-radius: 3px;
	background: #f3f3f3 30%;
	background: -webkit-linear-gradient(top, #f3f3f3 30%, #e1e1e1);
	background: -moz-linear-gradient(top, #f3f3f3 30%, #e1e1e1);
	background: -ms-linear-gradient(top, #f3f3f3 30%, #e1e1e1);
	background: -o-linear-gradient(top, #f3f3f3 30%, #e1e1e1);
	background: linear-gradient(top, #f3f3f3 30%, #e1e1e1);
	-webkit-box-shadow: inset 0 0 0 1px rgba(0, 0, 0, 0.2), inset 0 1px 0
		1px #fff, 0 1px 2px rgba(0, 0, 0, 0.15);
	-moz-box-shadow: inset 0 0 0 1px rgba(0, 0, 0, 0.2), inset 0 1px 0 1px
		#fff, 0 1px 2px rgba(0, 0, 0, 0.15);
	box-shadow: inset 0 0 0 1px rgba(0, 0, 0, 0.2), inset 0 1px 0 1px #fff,
		0 1px 2px rgba(0, 0, 0, 0.15);
}

.select select {
	height: 40px;
	margin-bottom: 0;
	line-height: 20px;
	padding: 6px;
	padding-left: 15px;
	border: 0;
	background: transparent;
	-webkit-appearance: none;
	border-radius: 3px;
	color: #666;
	width: 100%;
}

.select select:focus {
	-webkit-box-shadow: 0 0 3px 1px #2c7fcd, inset 0 0 3px #2c7fcd;
	-moz-box-shadow: 0 0 3px 1px #2c7fcd, inset 0 0 3px #2c7fcd;
	box-shadow: 0 0 3px 1px #2c7fcd, inset 0 0 3px #2c7fcd;
}

.select select option {
	background: #fff;
	color: black;
}

.select select.invalid {
	-webkit-box-shadow: 0 0 3px 1px #e21824, inset 0 0 3px #e21824;
	-moz-box-shadow: 0 0 3px 1px #e21824, inset 0 0 3px #e21824;
	box-shadow: 0 0 3px 1px #e21824, inset 0 0 3px #e21824;
}

.select select:focus {
	outline: none;
	box-shadow: none;
}

.select:before {
	content: "\f0dd";
	font-family: FontAwesome;
	font-weight: normal;
	font-style: normal;
	display: inline-block;
	-webkit-font-smoothing: antialiased;
	font-size: 14px;
	color: #666;
	position: absolute;
	right: 11px;
	top: 8px;
	text-shadow: 0 1px 0 #fff;
	pointer-events: none;
}

.select:after {
	content: '';
	position: absolute;
	top: 1px;
	bottom: 1px;
	right: 28px;
	border-left: 1px solid rgba(0, 0, 0, 0.1);
	border-right: 1px solid #fff;
	pointer-events: none;
}

.select:after, x:-moz-any-link {
	display: none
}

.select select, x:-moz-any-link {
	padding: 8px 7px 7px 6px
}

.select select::-ms-expand {
	display: none;
}

* {
	box-sizing: border-box;
}

html, body {
	margin: 0;
	padding: 0;
	height: 100%;
}

body {
	font-family: 'Lato', sans-serif;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: center;
	-webkit-justify-content: center;
	-ms-flex-pack: center;
	justify-content: center;
	-webkit-box-align: center;
	-webkit-align-items: center;
	-ms-flex-align: center;
	align-items: center;
	overflow: hidden;
/* 	background-color: #464646; */
	background-size: cover;
}

input {
	font-family: inherit;
	-webkit-appearance: none;
	-moz-appearance: none;
	border: 0;
	border-bottom: 1px solid #AAAAAA;
	font-size: 16px;
	color: #000;
	border-radius: 0;
}

input[type="text"], input[type="password"] {
	width: 100%;
	height: 40px;
}

button, input:focus {
	outline: 0;
}

::-webkit-input-placeholder {
	font-size: 16px;
	font-weight: 300;
	letter-spacing: -0.00933333em;
}

label {
	position: absolute;
	top: 0;
	opacity: 1;
	-webkit-transform: translateY(5px);
	transform: translateY(5px);
	color: #aaa;
	font-weight: 300;
	font-size: 13px;
	letter-spacing: -0.00933333em;
	transition: all 0.2s ease-out;
} 

input:placeholder-shown+label {
	opacity: 0;
	-webkit-transform: translateY(15px);
	transform: translateY(15px);
}

.h2 {
	color: #000;
	letter-spacing: -0.00933333em;
	font-weight: 600;
	padding-bottom: 15px;
}

.login-wrapper {
	width: 750px;
	height: 600px;
	background-color: #fff;
	box-shadow: 0px 2px 50px rgba(0, 0, 0, 0.2);
	border-radius: 4px;
	overflow: hidden;
	position: relative;
	border-radius: 10px;
}

.login-right {
	padding: 40px;
	top: 0;
	right: 0;
	width: 400px;
	-webkit-transform: translateX(400px) translateZ(0);
	transform: translateX(400px) translateZ(0);
	transition: all 770ms cubic-bezier(0.51, 0.04, 0.12, 0.99);
}

.open .login-right {
	-webkit-transform: translateX(0px) translateZ(0);
	transform: translateX(0px) translateZ(0);
}

.checkbox-container {
	display: flex;
	margin-top: 5px;
	margin-bottom: 5px;
}

.text-checkbox {
	color: #aaa;
	font-size: 16px;
	letter-spacing: -0.00933333em;
	font-weight: 300;
	margin-left: 15px;
	margin-right: 10px;
}


.button-area {
	display: flex;
	justify-content: space-between;
	margin-top: 30px;
}

.btn {
	font-family: inherit;
	-webkit-appearance: none;
	-moz-appearance: none;
	background-color: transparent;
	border: none;
	border-radius: 2px;
	height: 40px;
	width: 100%;
	display: flex;
	padding: 0 130px;
	cursor: pointer;
	font-size: 16px;
	text-transform: uppercase;
	letter-spacing: -0.00933333em;
	text-align: center;
}

.btn-primary {
	color: #fff;
	background: linear-gradient(198.08deg, #B4458C 45.34%, #E281E7 224.21%);
	box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
}

.btn-secondary {
	color: #C359AA;
}


.pwCheck {
	margin-top: 5px;
	margin-bottom: 5px;
	font-size: 12px;
}

input[id="id"]:disabled{
background : #fff;
}
</style>
</head>

<body>

	<div class="login-wrapper open">
		
		<div class="login-right">
			<div class="h2">My Page</div>
			<div class="form-group">
				<input type="text" id="id" placeholder="Id" disabled="disabled"> 
			</div>
			<div class="form-group">
				<input type="password" id="pw" placeholder="Password"> 
			</div>
			<div class="form-group">
				<input type="password" id="pwCheck" placeholder="Password check">
			</div>
			<div class="pwCheck" id="pwcheckDiv"></div>
	
			<span class="select "> <select name="age"
				onclick="return false;" id="age">
					<option value="10">10대</option>
        			<option value="20">20대</option>
        			<option value="30">30대</option>
			</select>
			</span>
			<span class="select"> <select name="time"
				onclick="return false;" id="time" >
					<option value="12">12시</option>
					<option value="3">3시</option>
					<option value="6">6시</option>
			</select>
		</span>
			<span class="select "> <select name="pwfind"
				onclick="return false;" id="pwfind">
					<option>인상깊게 읽은 책은 ?</option>
        			<option>나의 주량은 ?</option>
        			<option>창피했던 기억은 ?</option>
        			<option>나의 보물 1호는 ?</option>
        			<option>창피했던 기억은 ?</option>
			</select>
		</span>
			
			<div>
				<input type="text" id="answer" placeholder="답변 해주세요"> 
			</div>
			
			<div class="button-area">
				<button class="btn btn-primary" id="updateBtn">등록</button>
			</div>
		</div>
	</div>


	<script src="https://code.jquery.com/jquery-3.2.1.min.js"
	integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
	crossorigin="anonymous"></script>
<script src="/resources/HTML/js/chart.js"></script>

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
	 var id =  "${login}";
	 

	    (function(){
	        var userData = firebase.database().ref("/member/"+id);
	        userData.on("value",function(e){
	            var user = e.val();
	            html = $("#id").val(user.id);
	     
	        });
	    }());
		 $("#updateBtn").on("click",function(){
				var data = firebase.database().ref("/member/"+id);
				
						data.update({
							pw : $("#pw").val() ,
							age : $("#age").val() ,
							time : $("#time").val() ,
							pwfind : $("#pwfind").val() ,
							answer : $("#answer").val() ,
						});
						alert("회원 정보가 수정되었습니다.");
						location.href ="/main/index";
					});
		    
		    $("#pwCheck").on("keyup", function() {
				var $pw = $("#pw").val();
				var $pwCheck = $("#pwCheck").val();

				if ($pw != $pwCheck) {

					$("#pwcheckDiv").html("비밀번호와 불일치");
				} else {
					$("#pwcheckDiv").html("비밀번호와 일치");
				}
				if ($pwCheck == "") {
					$("#pwcheckDiv").html("");
				}
			});


	</script>
</body>
</html>