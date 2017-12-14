<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

  <h2>회원가입 </h2>
<form method="post" id="loginForm">
	아이디 : <input type="text" name='id' id="id">
	<p> <div id="idDiv"></div> </p> 
	<br>
	비밀번호 : <input type="password" name="pw" id="pw">
	<br>
	비밀번호 확인 : <input type="password" name="pwCheck" id="pwCheck">
	<p>
		<div id="pwcheckDiv"></div>
	</p> 
	<br>
	<input type="checkbox" name="child" id="child" value="남자">남자
	<input type="checkbox" name="child" id="child" value="여자">여자 
	<br>
	주소 :<select id="location" name = "location" >
			<option value="서초구">서초구</option>
			<option value="강동구">강동구</option>
			<option value="강서구">강서구</option>
			<option value="강남구">강남구</option>
		</select><br>
	알림 시간 설정 <select name="time" id="time">
				<option value="6시" >6시</option>
				<option value="9시" >9시</option>
			</select>
			<br>
			
			<button id="loginBtn">등록</button>
			
</form>

<script
  src="https://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous">
</script>

	<script>
		var $loginForm = $("#loginForm");
		
		var chkv ="";
		
		
		$("#loginBtn").click(function(){
			 var chk = document.getElementByName("child");
			 event.preventDefault(); 
			
			for(var i=0; i< chk.len ; i++){
				if(chk[i].checked ==true){
					chkv = chk[i].val();	
				}
			}
			var $id =$("#id").val();
			var $pw = $("#pw").val();
			var $pwCheck = $("#pwCheck").val();
			var $location = $("#location").val();
			var $child = chkv;
			var $time = $("#time").val();;
			
		
		if($id == "") {
			$("#idDiv").html("아이디를 입력해주세요");
			$("#id").focus();
			return ;
		} else if($pw == ""){
			$("#pwDiv").html("비밀번호를 입력해주세요");
			$("#pw").focus();
			return ;
		} else if($pwCheck == ""){
			$("#pwcheckDiv").html("비밀번호확인을 입력해주세요");
			$("#pwCheck").focus();
			return ;
		} 
		
		if($("#id").attr("data-chk") == "false"){
			alert("사용 불가능 아이디");
			return ;
		} else if($(pw) != $(pwCheck)){
			alert("비밀번호 불일치");
			return ;
		} 
			$loginForm.submit();
	});

	var value = "";
	
	$("#pwCheck").on("keyup", function () {
		var $pw = $("#pw").val();
		var $pwCheck = $("#pwCheck").val();
		
		if($pw != $pwCheck){
			$("#pwcheckDiv").html("비밀번호와 불일치");
			$("#pwcheckDiv").css("color","red");
		} else {
			$("#pwcheckDiv").html("비밀번호와 일치");
			$("#pwcheckDiv").css("color","green");
		}
		
		if($pwCheck == "") {
			$("#pwcheckDiv").html("");
		}
	});
	
	$("#id").on("keyup", function() {
		value = $(this).val();
		$.ajax({
			url : "/login/dup",
			data : {"id": value},
			type : "POST",
		}).done(function(result) {
			if(result) {
				$("#idDiv").html("사용할 수 없는 아이디 입니다.");
				return;
			}
			
			$("#idDiv").html("사용 가능한 아이디 입니다.");
			
			if(value == "") {
				$("#idDiv").html("");
			}
		});
	});
	</script>
</body>
</html>