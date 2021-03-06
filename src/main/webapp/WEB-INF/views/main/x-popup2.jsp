<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	.list {
	  position: absolute;
	  width: 360px;
	  top: 20%;
	  left: 33.5%;
	  margin: -122px 0 100px -180px;
	  -webkit-box-shadow: 0 0 3px rgba(0, 0, 0, 0.1);
	  -moz-box-shadow: 0 0 3px rgba(0, 0, 0, 0.1);
	  box-shadow: 0 0 3px rgba(0, 0, 0, 0.1);
	}
	.list h1 {
	  position: relative;
	  background: #1abc9c;
	  color: #fff;
	  margin: 0;
	  padding: 10px 20px;
	  font-family: "Roboto";
	  font-size: 18px;
	  text-transform: uppercase;
	  font-weight: 400;
	}
	.list h1 a {
	  position: absolute;
	  top: 50%;
	  right: 20px;
	  background: #fff;
	  /* IE Fallback */
	  background: rgba(255, 255, 255, 0.15);
	  width: 24px;
	  height: 24px;
	  margin: -12px 0 0 0;
	  color: #fff;
	  font-size: 14px;
	  line-height: 24px;
	  text-align: center;
	  text-decoration: none;
	  -webkit-transition: 0.3s linear;
	  -moz-transition: 0.3s linear;
	  -ms-transition: 0.3s linear;
	  -o-transition: 0.3s linear;
	  transition: 0.3s linear;
	}
	.list h1 a:hover {
	  background: rgba(255, 255, 255, 0.2);
	}
	.list ul {
	  list-style: none;
	  margin: 0;
	  padding: 0;
	}
	.list ul li {
	  background: #fff;
	  height: 40px;
	  color: #666;
	  line-height: 40px;
	  padding: 0 20px 0 0;
	}
	.list ul li a {
	  display: inline-block;
	  background: #2ecc71;
	  width: 0px;
	  height: 40px;
	  margin-right: 16px;
	  color: #fff;
	  text-align: center;
	  text-decoration: none;
	  opacity: 0;
	  -webkit-transition: 0.2s linear;
	  -moz-transition: 0.2s linear;
	  -ms-transition: 0.2s linear;
	  -o-transition: 0.2s linear;
	  transition: 0.2s linear;
	}
	.list ul li:nth-child(2n) {
	  background: #f7f7f7;
	}
	.list ul li:hover a {
	  width: 40px;
	  opacity: 1;
	}
	.hoverMe {
	  background: #fff;
	  /* IE Fallback */
	  background: rgba(255, 255, 255, 0.8);
	  position: absolute;
	  top: 95px;
	  left: -60px;
	  padding: 5px 7px;
	  -webkit-border-radius: 3px;
	  -moz-border-radius: 3px;
	  border-radius: 3px;
	  color: #1abc9c;
	  font-size: 10px;
	  text-transform: uppercase;
	  font-weight: 800;
	}
	.hoverMe:before {
	  content: '';
	  position: absolute;
	  top: 6px;
	  right: -5px;
	  width: 0px;
	  height: 0px;
	  border-top: 5px solid transparent;
	  border-bottom: 5px solid transparent;
	  border-left: 5 solid #fff;
	  /* IE Fallback */
	  border-left: 5px solid rgba(255, 255, 255, 0.8);
	}
</style>
</head>
<script
  src="https://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous"></script>
<body>

<div class="list animated tada">
	<h1 id="keyword" style="width:495px;"></h1>
	<ul id="result" style="width:495px;">
	</ul>
</div>

<script>
	var keyword = "${keyword}";
	var str = "";
	
	$("#keyword").html(keyword);
	
	$(document).ready(function () {
		$.ajax({
			url: "/main/popup",
			type: "POST",
			data: {
				"keyword":keyword
			}
		}).done(function (result) {
			for(var i = 0; i < result.length; i++){
				console.log(result[i].originaldata);
				str += "<li>" + result[i].originaldata + "</li>";
			}
			$("#result").html(str);
		});
	});

</script>
</body>
</html>