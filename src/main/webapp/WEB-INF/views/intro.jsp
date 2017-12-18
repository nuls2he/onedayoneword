<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>

<style>
    .fond{
        position:absolute;padding-top:25px;top:0;left:0; right:0;bottom:0; background-color:#e84c3d;
        height:35%;
        margin-top:16%;
    }

    .first_div
    {
        background-color:#f28e84;
        width:200px; height:200px;
        padding: 10px;
        border-radius:50%;
        -webkit-animation: anim 0.7s 1 ease;
        -moz-animation: anim 0.7s 1 ease;
        -ms-animation: anim 0.7s 1 ease;
        animation: anim 0.7s 1 ease;
    }
    .second_div
    {
        width:198px; height:198px;
        border:1px solid #ffffff;
        border-radius:50%;
        -webkit-animation:anim 1s 1 ease;
        -moz-animation:anim 1s 1 ease;
        -ms-animation:anim 1s 1 ease;
        animation:anim 1s 1 ease;
    }
    .img_div
    {
        width:200px; height:200px;
        -webkit-animation:animuser 1s 1 ease;
        -moz-animation:animuser 1s 1 ease;
        -ms-animation:animuser 1s 1 ease;
        animation:animuser 1s 1 ease;
    }
    .txt_welcome
    {
        font-family:'Roboto';
        font-size: 24px;
        font-weight: 150px;
        color: #ffffff;
        padding-top: 25px;
        -webkit-animation: animwelcome 1.7s 1 ease-in;
        -moz-animation: animwelcome 1.7s 1 ease-in;
        -ms-animation: animwelcome 1.7s 1 ease-in;
        animation: animwelcome 1.7s 1 ease-in;
    }
    .txt_user
    {
        font-family:'Roboto';
        font-size: 22px;
        font-weight: 100;
        color: #ffffff;
        -webkit-animation: animuser 1.9s 1 ease-in;
        -moz-animation: animuser 1.9s 1 ease-in;
        -ms-animation: animuser 1.9s 1 ease-in;
        animation: animuser 1.9s 1 ease-in;
    }
    .first_circle
    {
        width: 220px; height: 220px; border-radius:50%;
        padding: 10px; margin-top: -12px;
        position: absolute; left: 50%; margin-left: -122px;
        border-top:2px solid #e84c3d;
        border-right:2px solid #e84c3d;
        border-bottom:2px solid #e84c3d;
        border-left:2px solid #ffffff;
        -webkit-animation:anim_wifeo 1.4s infinite linear;
        -moz-animation:anim_wifeo 1.4s infinite linear;
        -ms-animation:anim_wifeo 1.4s infinite linear;
        animation:anim_wifeo 1.4s infinite linear;
    }
    @-webkit-keyframes anim
    {
        0%{-webkit-transform:scale(0);}
        50%{-webkit-transform:scale(1.7);}
        100%{-webkit-transform:scale(1);}
    }
    @-moz-keyframes anim
    {
        0%{-moz-transform:scale(0);}
        50%{-moz-transform:scale(1.7);}
        100%{-moz-transform:scale(1);}
    }
    @-ms-keyframes anim
    {
        0%{-ms-transform:scale(0);}
        50%{-ms-transform:scale(1.7);}
        100%{-ms-transform:scale(1);}
    }
    @keyframes anim
    {
        0%{transform:scale(0);}
        50%{transform:scale(1.7);}
        100%{transform:scale(1);}
    }
    @-webkit-keyframes animwelcome
    {
        0%{-webkit-transform:scale(0);}
        50%{-webkit-transform:scale(0);}
        75%{-webkit-transform:scale(1.4);}
        100%{-webkit-transform:scale(1);}
    }
    @-moz-keyframes animwelcome
    {
        0%{-moz-transform:scale(0);}
        50%{-moz-transform:scale(0);}
        75%{-moz-transform:scale(1.4);}
        100%{-moz-transform:scale(1);}
    }
    @-ms-keyframes animwelcome
    {
        0%{-ms-transform:scale(0);}
        50%{-ms-transform:scale(0);}
        75%{-ms-transform:scale(1.4);}
        100%{-ms-transform:scale(1);}
    }
    @keyframes animwelcome
    {
        0%{transform:scale(0);}
        50%{transform:scale(0);}
        75%{transform:scale(1.4);}
        100%{transform:scale(1);}
    }
    @-webkit-keyframes animuser
    {
        0%{-webkit-transform:scale(0);}
        50%{-webkit-transform:scale(0);}
        75%{-webkit-transform:scale(1.4);}
        100%{-webkit-transform:scale(1);}
    }
    @-moz-keyframes animuser
    {
        0%{-moz-transform:scale(0);}
        50%{-moz-transform:scale(0);}
        75%{-moz-transform:scale(1.4);}
        100%{-moz-transform:scale(1);}
    }
    @-ms-keyframes animuser
    {
        0%{-ms-transform:scale(0);}
        50%{-ms-transform:scale(0);}
        75%{-ms-transform:scale(1.4);}
        100%{-ms-transform:scale(1);}
    }
    @keyframes animuser
    {
        0%{transform:scale(0);}
        50%{transform:scale(0);}
        75%{transform:scale(1.4);}
        100%{transform:scale(1);}
    }
    @-webkit-keyframes anim_wifeo
    {
        0%{-webkit-transform:rotate(0deg);}
        50%{-webkit-transform:rotate(360deg);}
        100%{-webkit-transform:rotate(720deg);}
    }
    @-moz-keyframes anim_wifeo
    {
        0%{-moz-transform:rotate(0deg);}
        50%{-moz-transform:rotate(360deg);}
        100%{-moz-transform:rotate(720deg);}
    }
    @-ms-keyframes anim_wifeo
    {
        0%{-ms-transform:rotate(0deg);}
        50%{-ms-transform:rotate(360deg);}
        100%{-ms-transform:rotate(720deg);}
    }
    @keyframes anim_wifeo
    {
        0%{transform:rotate(0deg);}
        50%{transform:rotate(360deg);}
        100%{transform:rotate(720deg);}
    }

</style>
<body>

<script src="/resources/js/index.js"></script>
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"
		integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
		crossorigin="anonymous">
		
	</script>
    <link href='https://fonts.googleapis.com/css?family=Roboto:100,400,300,500,700' rel='stylesheet' type='text/css'>
    <div align="center" class="fond">

        <div class="first_circle"></div>
        <div class="first_div"><div class="second_div"><div class="img_div"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/173024/img_welcome.png"></div></div></div>
		<br>
        <div><a id="gologin">로그인 하러 가기</a></div> <br>
        <div><a id="gojoin">회원 가입 하러 가기</a></div>

    </div>
    <script>
	    $('#gologin').click(function() {
			location.href = '/member/loginhome';
			});
    
	    $('#gojoin').click(function() {
			location.href = '/member/login';
			});
    </script>
</body>
</html>