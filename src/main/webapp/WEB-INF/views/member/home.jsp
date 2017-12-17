<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style>

.fond{position:absolute;padding-top:25px;top:0;left:0; right:0;bottom:0;  background-image: url('/resources/img/city.jpg');}


</style>
</head>

<link
	href='https://fonts.googleapis.com/css?family=Roboto:100,400,300,500,700'
	rel='stylesheet' type='text/css'>


<body>

	<div align="center" class="fond">

		<div class="first_circle"></div>
		<div class="first_div">
			<div class="second_div">
				<div class="img_div">
					<img
						src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/173024/img_welcome.png">
				</div>
			</div>
		</div>

		<a id="gologin" class="txt_welcome">들어가기</a>

	</div>

	<script src="https://code.jquery.com/jquery-3.2.1.min.js"
		integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
		crossorigin="anonymous">
</script>

	<script>

$('#gologin').click(function() {
	location.href = '/member/loginhome';
});

</script>
</body>
</html>