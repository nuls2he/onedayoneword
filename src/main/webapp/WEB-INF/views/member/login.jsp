<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.orgsrc/main/webapp/resources/dev-tools/TR/html4/loose.dtd">
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sign Up Page - Material Kit by Creative Tim</title>

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
	background: url('../resources/HTML/img/login.gif');
	background-color: #464646;
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

.form-group {
	position: relative;
	padding-top: 15px;
	margin-top: 5px;
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

.h1 {
	color: #000;
	opacity: 0.8;
	font-size: 20px;
	font-weight: 400;
	text-transform: uppercase;
	letter-spacing: 0.2405em;
	transition: all 770ms cubic-bezier(0.51, 0.04, 0.12, 0.99);
	text-align: center;
	cursor: pointer;
	position: absolute;
	font-family: 'Alfa Slab One', cursive;
}

.open .h1 {
	-webkit-transform: translateX(200px) translateZ(0);
	transform: translateX(200px) translateZ(0);
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

.login-left {
	width: 100%;
	height: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
	transition: all 770ms cubic-bezier(0.51, 0.04, 0.12, 0.99);
	overflow: hidden;
}

.login-left img {
	object-fit: cover;
	width: 500px ;
	height: 100%;
	display: block;
	transition: all 770ms cubic-bezier(0.51, 0.04, 0.12, 0.99);
	object-position: left;
}

.open .login-left img {
	-webkit-transform: translateX(280px) translateZ(0);
	transform: translateX(200px) translateZ(0);
}

.open .login-left {
	-webkit-transform: translateX(-400px) translateZ(0);
	transform: translateX(-400px) translateZ(0);
}

.login-right {
	padding: 40px;
	position: absolute;
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
	margin-top: 10px;
	margin-bottom: 10px;
}

.text-checkbox {
	color: #aaa;
	font-size: 16px;
	letter-spacing: -0.00933333em;
	font-weight: 300;
	margin-left: 15px;
	margin-right: 10px;
}

input[type="checkbox"] {
	cursor: pointer;
	margin: 0;
	height: 22px;
	position: relative;
	width: 22px;
	-webkit-appearance: none;
	transition: all 180ms linear;
}

input[type="checkbox"]:before {
	border: 1px solid #aaa;
	background-color: #fff;
	content: '';
	width: 20px;
	height: 20px;
	display: block;
	border-radius: 2px;
	transition: all 180ms linear;
}

input[type="checkbox"]:checked:before {
	background: linear-gradient(198.08deg, #B4458C 45.34%, #E281E7 224.21%);
	border: 1px solid #C359AA;
}

input[type="checkbox"]:after {
	content: '';
	border: 2px solid #fff;
	border-right: 0;
	border-top: 0;
	display: block;
	height: 4px;
	left: 4px;
	opacity: 0;
	position: absolute;
	top: 6px;
	-webkit-transform: rotate(-45deg);
	transform: rotate(-45deg);
	width: 12px;
	transition: all 180ms linear;
}

input[type="checkbox"]:checked:after {
	opacity: 1;
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

.idCheck {
	margin-top: 10px;
}

.pwCheck {
	margin-top: 10px;
	margin-bottom: 10px;
}
</style>
</head>

<body>

	<div class="login-wrapper open">
		<div class="login-left">
			<!--         <img src="http://res.cloudinary.com/dzqowkhxu/image/upload/v1513679279/bg-login_bxxfkf.png"> -->
			<!--         <img src="../resources/HTML/img/dot.png"> -->
		  <div> <img id="memberlog" src="/resources/HTML/img/memlogo.gif"></div>  <br>
			<br>
		</div>
		<div class="login-right">
			<div class="h2">회원가입</div>

			<div class="form-group">
				<input type="text" id="id" placeholder="Id" required> <label
					for="id">Id</label>
				<!-- <button id="checkid">중복체크</button> -->
			</div>
			<div class="idCheck" id="idCheck"></div>

			<div class="form-group">
				<input type="password" id="pw" placeholder="Password"> <label
					for="pw">Password</label>
			</div>
			<div class="form-group">
				<input type="password" id="pwCheck" placeholder="Password check">
				<label for="pw">Password check</label>
			</div>
			<div class="pwCheck" id="pwcheckDiv"></div>
			<div class="checkbox-container">
				<input type="checkbox" name="child" id="m" value="남자">
				<div class="text-checkbox">남자</div>
				<input type="checkbox" name="child" id="f" value="여자">
				<div class="text-checkbox">여자</div>
			</div>


			<span class="select "> <select name="location"
				onclick="return false;" id="zone">
					<option value="종로구">종로구</option>
        			<option value="중구">중구</option>
        			<option value="용산구">용산구</option>
        			<option value="성동구">성동구</option>
        			<option value="광진구">광진구</option>
        			<option value="동대문구">동대문구</option>
        			<option value="중랑구">중랑구</option>
        			<option value="성북구">성북구</option>
        			<option value="강북구">강북구</option>
        			<option value="도봉구">도봉구</option>
        			<option value="노원구">노원구</option>
        			<option value="은평구">은평구</option>
        			<option value="서대문구">서대문구</option>
        			<option value="마포구">마포구</option>
        			<option value="양천구">양천구</option>
        			<option value="강서구">강서구</option>
        			<option value="구로구">구로구</option>
        			<option value="금천구">금천구</option>
        			<option value="영등포구">영등포구</option>
        			<option value="동작구">동작구</option>
        			<option value="관악구">관악구</option>
        			<option value="서초구">서초구</option>
        			<option value="강남구">강남구</option>
        			<option value="송파구">송파구</option>
        			<option value="강동구">강동구</option>
			</select>
			</span>

			<div class="checkbox-container">
				<input type="checkbox" name="call" id="call">
				<div class="text-checkbox">알림 허용</div>
			</div>

			<span class="select"> <select name="time"
				onclick="return false;" id="time" disabled>
					<option value="6">6시</option>
					<option value="9">9시</option>
			</select>
			</span>
			<div class="button-area">
				<button class="btn btn-primary" id="saveBtn">등록</button>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"
		integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
		crossorigin="anonymous">
		
	</script>

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
		var openLoginRight = document.querySelector('.h1');
		var loginWrapper = document.querySelector('.login-wrapper');

		openLoginRight.addEventListener('click', function() {
			loginWrapper.classList.toggle('open');
		});
	</script>


	<script>
		function createData(data, callback) {
			var member = data;
			firebase.database().ref("member/" + member.id).set(member);
			location.href = '/member/loginhome';
		}

		var m = "false";
		var f = "false";
		var temp = '';
		$("#saveBtn").on("click", function() {
			var token = firebase.database().ref("/temp/token");
			token.on("value", function(e){
				temp = e.val();
				
				var chk = document.getElementsByName("child");
				for (var i = 0; i < chk.length; i++) {
					if (chk[i].checked == true) {
						switch (chk[i].value) {
							case "남자": m = "true"; 	break;
							case "여자": f = "true"; break;
						}
					}
				}
				
				var member = {
					id : $("#id").val(),
					pw : $("#pw").val(),
					m : m,
					f : f,
					zone : $("#zone").val(),
					time : $("#time").val() ,
					token : temp
				};
				
			if (!$("#call").checked) {
				delete member.token;
				delete member.time;
			}
				createData(member);
			});
		});

		$("#id").on("keyup", function() {
			var member = firebase.database().ref().child("/member");
			var id = $("#id").val();

			member.on("value", function(e) {
				var list = e.val();
				console.log(list);
				for (keyStr in list) {
					if (keyStr == id) {
						$("#idCheck").html("이미 존재하는 아이디 입니다.");
						$("div[id=idCheck]").attr("style", "color:red");
						break;
					} else {
						$("#idCheck").html("사용 가능한 아이디 입니다.");
						$("div[id=idCheck]").attr("style", "color:green");
						
					}
				}
			});
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

		$("#call").on(
				"click",
				function() {
					if (this.checked) {
						window.open("https://oneday-1123.firebaseapp.com", "",
								"width=286,height=100");
						openMe()
					} else {
						notopen()
					}
				});
		function openMe() { //셀렉트 박스 활성 함수
			$("select[name=time]").removeAttr("disabled");
		}
	

		function notopen() { //셀렉트 박스 활성 함수
			$("select[name=time]").attr("disabled", "disabled");
			
		}

		/*  function readAllData(){
		     var memberList = firebase.database().ref().child("/member");
		     memberList.on("value", function (snapshot) {

		         var listData = snapshot.val();

		         var html ="";
		         for (keyStr in listData) {
		             //console.log("=====" + keyStr);
		             //console.log(readEach(keyStr));
		         }
		         $(".listUL").html(html);
		     });
		 }

		 function readEach(keyStr){
		     var data = firebase.database().ref("/memo/" + keyStr);
		     data.on('value', function(snapshot){
		         console.log(snapshot.val());
		         var chk = snapshot.val();
		     });
		 }
		 readAllData(); */
	</script>

</body>
</html>