<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script
  src="https://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous"></script>
<body>
<h2 id="keyword"></h2>
<div id="result">
</div>
<script>
	var str = "";
	$("#keyword").html("${keyword}");
	
	$(document).ready(function () {
		$.ajax({
			url: "/main/popup",
			type: "POST",
			data: {
				"keyword":"${keyword}"
			}
		}).done(function (result) {
			for(var i = 0; i < result.length; i++){
				console.log(result[i].originaldata);
				str += result[i].originaldata + "<br/>";
			}
			$("#result").html(str);
		});
	});

</script>
</body>
</html>