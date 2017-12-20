<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
	#loginForm{
		border: 1px solid black;
		align : center ;
		width: 45%;
	}
	
	/* checkbox css */
	input[type=checkbox]{
		display: none;
	}
	input[type=checkbox]+ label{
		display: inline-block;
		cursor:pointer;
		position: relative;
		padding-left: 25px;
		margin-right: 15px;
		font-size: 13px;
	}
	
	input[type=checkbox]+ label:before{
		content:"";
		display: inline-block;
		width: 20px;
		height: 20px;
		margin-right: 10px;
		position: absolute;
		left: 0;
		bottom:1px;
		background-color: #ccc;
		border-radius: 2px;
		box-shadow: inset 0px 1px 1px 0px rgba(0,0,0,3,),0px 1px 0px 0px rgba(255,255,255,.8);
	}
	
	input[type=checkbox]:checked + label:before {
	content: "\2713";
	text-shadow: 1px 1px 1px rgba(0,0,0, .2);
	font-size: 18px;
	font-weight: 800;
	color:#fff;
	background: #2f87c1;
	text-align: center;
	line-height: 18px;
} 
	/* checkbox css */
	
	/* select option css  */
	/* ///  DECORATION CSS ///  */
     .cont_select_center {
         position: absolute;
         left: 50%;
         top: 50%;
         margin-top: -30px;
         margin-left: -150px;
     }

     .cont_heg_50 {
         position: absolute;
         height: 50%;
         left: 0;
         top: 0;
         width: 100%;
         background-color: #fd7b52;
     }

     /* ///  END DECORATION CSS  ///  */
     .icon_select_mate {
         position: absolute;
         top: 20px;
         right: 2%;
         font-size: 16px;
         height: 22px;
         transition: all 275ms;
     }

     .select_mate {
         position: relative;
         float: left;
         min-width: 150px;
         width: 130px;
         min-height: 60px;
         font-family: 'Roboto';
         color: #777;
         font-weight: 300;
         background-color: #fff;
         box-shadow: 1px 2px 10px -2px rgba(0, 0, 0, 0.3);
         border-radius: 3px;
         transition: all 375ms ease-in-out;
         /* Oculto el elemento select */
     }
     .select_mate select {
         position: absolute;
         overflow: hidden;
         height: 0px;
         opacity: 0;
     }

     .cont_list_select_mate {
         position: relative;
         float: left;
         width: 100%;
     }

     .cont_select_int {
         position: absolute;
         left: 0px;
         top: 0px;
         z-index: 999;
         overflow: hidden;
         height: 0px;
         width: 100%;
         background-color: #fff;
         padding: 0px;
         margin-bottom: 0px;
         margin-top: 0px;
         border-radius: 0px 0px 3px 3px;
         box-shadow: 1px 4px 10px -2px rgba(0, 0, 0, 0.2);
         transition: all 375ms ease-in-out;
     }
     .cont_select_int li {
         position: relative;
         float: left;
         width: 96%;
         border-bottom: 1px solid #E0E0E0;
         background-color: #F5F5F5;
         list-style-type: none;
         padding: 10px 2%;
         margin: 0px;
         transition: all 275ms ease-in-out;
         display: block;
         cursor: pointer;
     }
     .cont_select_int li:last-child {
         border-radius: 3px;
         border-bottom: 0px;
     }
     .cont_select_int li:hover {
         background-color: #EEEEEE;
     }
     .cont_select_int .active {
         background-color: #EEEEEE;
     }

     /* etiqueta <p> con la opcion selecionada  */
     .selecionado_opcion {
         padding: 20px 2%;
         width: 96%;
         display: block;
         margin: 0px;
         cursor: pointer;
     }
	/* select option css  */
	
	.button{
	   background-color: #4CAF50; /* Green */
	    border: none;
	    color: white;
	    padding: 15px 32px;
	    text-align: center;
	    text-decoration: none;
	    display: inline-block;
	    font-size: 16px;
	    margin: 4px 2px;
	    cursor: pointer;
	}

.Btn {

    background-color: white;
    color: black;
    border: 2px solid #e7e7e7;
}
</style>
<head>
	
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

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />


</head>
<body>
	
		<h2 style="text-align: center">회원가입</h2>

	<!-- <form method="post" id="loginForm"> -->
	
			   <div class="sm-margin-b-30" id="bor">
                   아이디      <input type="text" class="form-control footer-input margin-b-20"  required name='id' id="id" >
                      	<div id="idDiv"></div> <br>
                   비밀번호     <input type="password" class="form-control footer-input margin-b-20" required  name="pw" id="pw"> <br>
      
       <!--             
                   비밀번호 학인  <input type="password" class="form-control footer-input margin-b-20" required name="pwCheck"id="pwCheck"> <br>
                   	   <div id="pwcheckDiv"></div> <br> -->
                   	   
                   <input type="checkbox" name="child" id="m" value="남자"><label for="m">남자</LABEL> 
                   <input type="checkbox" name="child" id="f" value="여자"><label for="f">여자</LABEL> <br>
                     
<!--                  <div class="select_mate" data-mate-select="active" >                  -->

                   <select name="location" onclick="return false;" id="location">
						<option value="강서구">강서구</option>
						<option value="서초구">서초구</option>
						<option value="강동구">강동구</option>
						<option value="강남구">강남구</option>
					</select>
					
						<!-- <p class="selecionado_opcion"  onclick="open_select(this)" ></p><span onclick="open_select(this)" class="icon_select_mate" ><svg fill="#000000" height="24" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg">
   						 <path d="M7.41 7.84L12 12.42l4.59-4.58L18 9.25l-6 6-6-6z"/>
    					 <path d="M0-.75h24v24H0z" fill="none"/></svg></span>
							<div class="cont_list_select_mate">
  								<ul class="cont_select_int">  </ul> 
							</div>					
					</div>
					 -->
<!-- 					<div class="select_mate" data-mate-select="active" > -->

					<select name="time" onclick="return false;" id="time">
						<option value="6시">6시</option>
						<option value="9시">9시</option>
					</select>
					
					<!-- 
					<p class="selecionado_opcion"  onclick="open_select(this)" ></p><span onclick="open_select(this)" class="icon_select_mate" ><svg fill="#000000" height="24" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg">
					    <path d="M7.41 7.84L12 12.42l4.59-4.58L18 9.25l-6 6-6-6z"/>
					    <path d="M0-.75h24v24H0z" fill="none"/></svg></span>
							<div class="cont_list_select_mate">
							  <ul class="cont_select_int">  </ul> 
							</div>				
					</div>
					 -->
				<br><br>
				
                   <button class="button Btn" id="loginBtn">등록</button>
               </div>
	 <!-- 	</form>  -->


	<script src="https://code.jquery.com/jquery-3.2.1.min.js"
		integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
		crossorigin="anonymous"></script>
	
   <script src="/resources/HTML/js/index.js"></script>
   
  
<script src="https://www.gstatic.com/firebasejs/4.8.1/firebase.js"></script>
<script>
  // Initialize Firebase
  var config = {
    apiKey: "AIzaSyAD_qm6cmfsf6dMmTqXPDYlylDq5yGZLSQ",
    authDomain: "oneday-1123.firebaseapp.com",
    databaseURL: "https://oneday-1123.firebaseio.com",
    projectId: "oneday-1123",
    storageBucket: "oneday-1123.appspot.com",
    messagingSenderId: "360329597510"
  };
  firebase.initializeApp(config);
</script>


<script>


function createData(data, callback) {
	
	 var member = data;
     firebase.database().ref("member/" + member.id).set(member);
     
     location.href = "/member/loginhome";
};

$("#loginBtn").on("click" ,function() {
	
    var member = {id:$("#id").val(), pw:$("#pw").val(), m:$("#m").val(), f:$("#f").val() , location : $("#location").val(), time : $("#time").val()};
	 
	createData(member);
	 
		
});


function readAllData() {
    var memoList=firebase.database().ref().child('/info');
    memoList.on("value",function (snapshot) {

        var listData=snapshot.val();
        for(keyStr in listData){
            console.log(keyStr);}
    });
};

</script>


<!-- 
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
 -->


 <!-- Back To Top -->
        <a href="javascript:void(0);" class="js-back-to-top back-to-top">Top</a>

        <!-- JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
        <!-- CORE PLUGINS -->
        <script src="/resources/HTML/vendor/jquery.min.js" type="text/javascript"></script>
        <script src="/resources/HTML/vendor/jquery-migrate.min.js" type="text/javascript"></script>
        <script src="/resources/HTML/vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

        <!-- PAGE LEVEL PLUGINS -->
        <script src="/resources/HTML/vendor/jquery.easing.js" type="text/javascript"></script>
        <script src="/resources/HTML/vendor/jquery.back-to-top.js" type="text/javascript"></script>
        <script src="/resources/HTML/vendor/jquery.smooth-scroll.js" type="text/javascript"></script>
        <script src="/resources/HTML/vendor/jquery.wow.min.js" type="text/javascript"></script>
        <script src="/resources/HTML/vendor/jquery.parallax.min.js" type="text/javascript"></script>
        <script src="/resources/HTML/vendor/swiper/js/swiper.jquery.min.js" type="text/javascript"></script>

        <!-- PAGE LEVEL SCRIPTS -->
        <script src="/resources/HTML/js/layout.min.js" type="text/javascript"></script>
        <script src="/resources/HTML/js/components/swiper.min.js" type="text/javascript"></script>
        <script src="/resources/HTML/js/components/wow.min.js" type="text/javascript"></script>
</body>

</html>