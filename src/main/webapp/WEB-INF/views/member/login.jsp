<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>

.wrapper {
	background-color: white;
	height: 100%;
	text-align: center;
	margin: 0, auto;
	align: center;
}
div.centerBtn > button{
	align: center;
}
</style>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<link href="/resources/css/material-kit.css" rel="stylesheet" />
<link href="/resources/css/demo.css" rel="stylesheet" />
<link rel="stylesheet" href="/resources/css/style.css">

</head>
<body>
	<div class="wrapper">
		<h2 style="text-align: center">회원가입</h2>

		<form method="post" id="loginForm" style="text-align: center">
			<div class="row">
				<div>
					<div class="form-group">
						아이디 <br> <input type="text" class="form-control" name='id'
							id="id" />
						<p>
						<div id="idDiv"></div>
						</p>
					</div>
				</div>
				<div>
					<div class="form-group label-floating">
						비밀번호<br> <input type="password" name="pw" id="pw"
							class="form-control">
					</div>
				</div>

				<div>
					<div class="form-group label-floating">
						비밀번호 확인<br> <input type="password" name="pwCheck"
							id="pwCheck" class="form-control">
						<div id="pwcheckDiv"></div>
					</div>
				</div>

				<p class="checkbox">
					<label> <input type="checkbox" name="child" id="child"
						value="남자"> 남자
					</label>
				</p>
				<p class="checkbox">
					<label> <input type="checkbox" name="child" id="child"
						value="여자"> 여자
					</label>
				</p>
				<br>
			<div style="align:center">
				<!-- Custom select structure -->
				<div class="select_mate" align="center" data-mate-select="active"
					style="text-align: center">
					<select name="location" onclick="return false;" id="location">
						<option value="강서구">강서구</option>
						<option value="서초구">서초구</option>
						<option value="강동구">강동구</option>
						<option value="강남구">강남구</option>
					</select>
					<p class="selecionado_opcion" onclick="open_select(this)"></p>
					<span onclick="open_select(this)" class="icon_select_mate"><svg
							fill="#000000" height="24" viewBox="0 0 24 24" width="24"
							xmlns="http://www.w3.org/2000/svg"> <path
							d="M7.41 7.84L12 12.42l4.59-4.58L18 9.25l-6 6-6-6z" /> <path
							d="M0-.75h24v24H0z" fill="none" /> </svg></span>
					<div class="cont_list_select_mate">
						<ul class="cont_select_int">
						</ul>
					</div>
				</div>

			<div class="select_mate" data-mate-select="active">
				<select name="time" onclick="return false;" id="time">
					<option value="6시">6시</option>
					<option value="9시">9시</option>
				</select>

				<p class="selecionado_opcion" onclick="open_select(this)"></p>
				<span onclick="open_select(this)" class="icon_select_mate"><svg
						fill="#000000" height="24" viewBox="0 0 24 24" width="24"
						xmlns="http://www.w3.org/2000/svg"> <path
						d="M7.41 7.84L12 12.42l4.59-4.58L18 9.25l-6 6-6-6z" /> <path
						d="M0-.75h24v24H0z" fill="none" /> </svg></span>
				<div class="cont_list_select_mate">
					<ul class="cont_select_int">
					</ul>
				</div>
			</div>
			</div>
	<br>
	<br>
	<div class="centerBtn">
		<button class="btn btn-white" id="loginBtn">등록</button>
	</div>
	</div>
</form>
	<script src="/resources/js/index.js"></script>
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"
		integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
		crossorigin="anonymous">
		
	</script>

	<script>
		var $loginForm = $("#loginForm");

		var chkv = "";

		$("#loginBtn").click(function() {
			var chk = document.getElementByName("child");
			event.preventDefault();

			for (var i = 0; i < chk.len; i++) {
				if (chk[i].checked == true) {
					chkv = chk[i].val();
				}
			}
			var $id = $("#id").val();
			var $pw = $("#pw").val();
			var $pwCheck = $("#pwCheck").val();
			var $location = $("#location").val();
			var $child = chkv;
			var $time = $("#time").val();
			;

			if ($id == "") {
				$("#idDiv").html("아이디를 입력해주세요");
				$("#id").focus();
				return;
			} else if ($pw == "") {
				$("#pwDiv").html("비밀번호를 입력해주세요");
				$("#pw").focus();
				return;
			} else if ($pwCheck == "") {
				$("#pwcheckDiv").html("비밀번호확인을 입력해주세요");
				$("#pwCheck").focus();
				return;
			}

			if ($("#id").attr("data-chk") == "false") {
				alert("사용 불가능 아이디");
				return;
			} else if ($(pw) != $(pwCheck)) {
				alert("비밀번호 불일치");
				return;
			}
			$loginForm.submit();
		});

		var value = "";

		$("#pwCheck").on("keyup", function() {
			var $pw = $("#pw").val();
			var $pwCheck = $("#pwCheck").val();

			if ($pw != $pwCheck) {
				$("#pwcheckDiv").html("비밀번호와 불일치");
				$("#pwcheckDiv").css("color", "red");
			} else {
				$("#pwcheckDiv").html("비밀번호와 일치");
				$("#pwcheckDiv").css("color", "green");
			}

			if ($pwCheck == "") {
				$("#pwcheckDiv").html("");
			}
		});

		$("#id").on("keyup", function() {
			value = $(this).val();
			$.ajax({
				url : "/member/dup",
				data : {
					"id" : value
				},
				type : "POST",
			}).done(function(result) {
				if (result) {
					$("#idDiv").html("사용할 수 없는 아이디 입니다.");
					return;
				}

				$("#idDiv").html("사용 가능한 아이디 입니다.");

				if (value == "") {
					$("#idDiv").html("");
				}
			});
		});
	</script>


	</div>
</body>

<script src="/resources/js/index.js"></script>

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

</script>

</html>