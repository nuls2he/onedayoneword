<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sign Up Page - Material Kit by Creative Tim</title>


    <style>
        @import url(https://fonts.googleapis.com/css?family=Dosis:300|Lato:300,400,600,700|Roboto+Condensed:300,700|Open+Sans+Condensed:300,600|Open+Sans:400,300,600,700|Maven+Pro:400,700);
        @import url("https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css");
        * {
            -moz-box-sizing: border-box;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
        }

        html {
            background: white;
        }

        body {
            font-family: "Open Sans";
            font-size: 16px;
            color: White;
            font-smoothing: antialiased;
            font-weight: 600;
        }

        a {
            color: #BBB;
        }

        .content:before {
            content: "";
            position: fixed;
            left: 0;
            right: 0;
            top: 0;
            bottom: 0;
            z-index: -1;
            display: block;
            background-color: gray;
            background-image: url("http://ultraimg.com/images/Ho6hQWs.jpg");
            width: 100%;
            height: 100%;
            background-size: cover;
            -webkit-filter: blur(2px);
            -moz-filter: blur(2px);
            -o-filter: blur(2px);
            -ms-filter: blur(2px);
            filter: blur(2px);
        }

        .content {
            position: absolute;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            width: 540px;
            height: 540px;
            background-color: rgba(10, 10, 10, 0.5);
            margin: auto auto;
            padding: 40px;
            -moz-border-radius: 4px;
            -webkit-border-radius: 4px;
            border-radius: 4px;
            -moz-box-shadow: 0 0 10px black;
            -webkit-box-shadow: 0 0 10px black;
            box-shadow: 0 0 10px black;
        }
        .content .title {
            text-align: center;
            font-size: 2.0rem;
            font-weight: 600;
            padding-bottom: 30px;
        }
        .content input {
            width: 100%;
            font-size: 1.2rem;
            font-family: "Open Sans";
            margin: 10px 0px;
            border: none;
            padding: 10px;
            -moz-border-radius: 4px;
            -webkit-border-radius: 4px;
            border-radius: 4px;
        }
        .content input[type=checkbox] {
            display: none;
        }
        .content label {
            display: inline-block;
            width: 20px;
            height: 20px;
            cursor: pointer;
            position: relative;
            margin-left: 5px;
            margin-right: 10px;
            top: 5px;
        }
        .content label:before {
            content: "";
            display: inline-block;
            width: 20px;
            height: 20px;
            -moz-border-radius: 3px;
            -webkit-border-radius: 3px;
            border-radius: 3px;
            position: absolute;
            left: 0;
            bottom: 1px;
            background-color: #aaa;
            -moz-box-shadow: inset 0px 2px 3px 0px rgba(0, 0, 0, 0.3), 0px 1px 0px 0px rgba(255, 255, 255, 0.8);
            -webkit-box-shadow: inset 0px 2px 3px 0px rgba(0, 0, 0, 0.3), 0px 1px 0px 0px rgba(255, 255, 255, 0.8);
            box-shadow: inset 0px 2px 3px 0px rgba(0, 0, 0, 0.3), 0px 1px 0px 0px rgba(255, 255, 255, 0.8);
        }
        .content input[type=checkbox]:checked + label:before {
            content: "\2713";
            text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.2);
            font-size: 20px;
            color: Black;
            text-align: center;
            line-height: 20px;
        }
        .content span {
            font-size: 0.9rem;
        }
        .content button {
            width: 100%;
            font-size: 1.1rem;
            padding: 10px;
            margin: 20px 0px;
            background-color: #66A756;
            color: White;
            border: none;
            -moz-border-radius: 4px;
            -webkit-border-radius: 4px;
            border-radius: 4px;
        }
        .content .social {
            width: 100%;
            position: relative;
            overflow: hidden;
            text-align: center;
        }
        .content .social span {
            display: inline-block;
            vertical-align: baseline;
            padding: 0 20px;
        }
        .content .social span:before, .content .social span:after {
            content: '';
            display: block;
            width: 500px;
            position: absolute;
            top: 0.9em;
            border-top: 1px solid White;
        }
        .content .social span:before {
            right: 75%;
        }
        .content .social span:after {
            left: 75%;
        }
        .content .buttons {
            width: 100%;
            margin: 30px 0px;
        }
        .content .buttons button {
            float: left;
            width: 30%;
            margin: 0px 1.5%;
        }
        .content .buttons button i {
            padding-right: 7px;
        }
        .content .buttons button.facebook {
            background-color: #4464B2;
        }
        .content .buttons button.twitter {
            background-color: #28A9E0;
        }
        .content .buttons button.google {
            background-color: #DA4735;
        }
        .content .buttons:after {
            content: "";
            display: block;
            clear: both;
        }
        .content .already {
            text-align: center;
            font-size: 0.9rem;
        }
    </style>
</head>

<body>
<div class="content">
        <div class="title">로그인</div>
        
        <form method="post" id="loginForm">
	        <input type="text" placeholder="id" id="id"/>
	        <input type="password" placeholder="Password" id="pw"/>
	        <input type="checkbox" id="remember" />
	        <label for="remember"></label>  <span>로그인 유지</span>
        	<button id="loginBtn">로그인</button>
        </form>
        
    </div>

<script
  src="https://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous">
</script>
<script>

	$loginBtn =$("#loginBtn") ;
	
	$("#loginBtn").click(function(){
		
		$.ajax({
			url : "/member/logincheck" ,
			type :"POST" ,
			data : {
				"id" : $("#id").val() ,
				"pw" : $("#pw").val(),
				"remember" : $("#remember").val()
			}
		}).done(function(data){
			if(data){
				console.log("로그인 성공!");
				
				$loginForm.attr("action","/member/loginProcess").submit();
				return ;
			}
			
			if(!data){
				alert("로그인 실패....;;");
			}
		});
		
	});
	
</script>


</body>

</html>
