<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>one day one word</title>
		
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
	
<!-- 	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" type="text/css" rel="stylesheet"> -->
    <link href="https://cdn.jsdelivr.net/jquery.selectric/1.10.1/selectric.css" type="text/css" rel="stylesheet">
	
<style>
	html, body {
		height: 90%;
	}
	
	body {
		background-color: #ffffff;
		/*             margin: 0; */
		font-family: Helvetica, sans-serif;;
		overflow: hidden;
	}
	
	a {
		color: #ffffff;
	}
	
	#info {
		position: absolute;
		width: 100%;
		color: #ffffff;
		padding: 5px;
		font-family: Monospace;
		font-size: 13px;
		font-weight: bold;
		text-align: center;
		z-index: 1;
	}
	
	#menu {
		position: absolute;
		bottom: 20px;
		width: 100%;
		text-align: center;
	}
	
	.listBody {
		height: 600px;
		background-color: #ffffff;
	}
	
	.responstable {
		margin: 1em 0;
		width: 100%;
		overflow: hidden;
		background: #FFF;
		color: #024457;
		border-radius: 10px;
		border: 1px solid #167F92;
	}
	
	.responstable tr {
		border: 1px solid #D9E4E6;
	}
	
	.responstable tr:nth-child(odd) {
		background-color: #EAF3F3;
	}
	
	.responstable th {
		display: none;
		border: 1px solid #FFF;
		background-color: #001459;
		color: #FFF;
		padding: 1em;
	}
	
	.responstable th:first-child {
		display: table-cell;
		text-align: center;
	}
	
	.responstable th:nth-child(2) {
		display: table-cell;
	}
	
	.responstable th:nth-child(2) span {
		display: none;
	}
	
	.responstable th:nth-child(2):after {
		content: attr(data-th);
	}
	
	@media ( min-width : 480px) {
		.responstable th:nth-child(2) span {
			display: block;
		}
		.responstable th:nth-child(2):after {
			display: none;
		}
	}
	
	.responstable td {
		display: block;
		word-wrap: break-word;
		max-width: 7em;
	}
	
	.responstable td:first-child {
		display: table-cell;
		text-align: center;
		border-right: 1px solid #D9E4E6;
	}
	
	@media ( min-width : 480px) {
		.responstable td {
			border: 1px solid #D9E4E6;
		}
	}
	
	.responstable th, .responstable td {
		text-align: left;
		margin: .5em 1em;
	}
	
	@media ( min-width : 480px) {
		.responstable th, .responstable td {
			display: table-cell;
			padding: 1em;
		}
	}
	
	    .card-list {
        margin-top: 15px;
        width: 100%;
    }
    .card-list:before,
    .card-list:after {
        content: " ";
        display: table;
    }
    .card-list:after {
        clear: both;
    }
    .card {
        border: 5px solid #1b2431;
        border-radius: 8px;
        color: white;
        float: left;
        padding: 10px;
        position: relative;
        width: 25%;
    }
    .card .glyphicon {
        color: white;
        font-size: 28px;
        opacity: 0.3;
        position: absolute;
        right: 13px;
        top: 13px;
    }
    .card .stat {
        border-top: 1px solid rgba(255, 255, 255, 0.3);
        font-size: 8px;
        margin-top: 25px;
        padding: 10px 10px 0;
        text-transform: uppercase;
    }
    .card .title {
        display: inline-block;
        font-size: 8px;
        padding: 10px 10px 0;
        text-transform: uppercase;
    }
    .card .value {
        font-size: 28px;
        padding: 0 10px;
    }
    .card.blue {
        background-color: #2298F1;
    }
    .card.green {
        background-color: #66B92E;
    }
    .card.orange {
        background-color: #DA932C;
    }
    .card.red {
        background-color: #D65B4A;
    }
    .projects {
        background-color: #273142;
        border: 4px solid #1b2431;
        width: 100%;
    }
    .projects-inner {
        border: 1px solid #313D4F;
        border-radius: 4px;
    }
    .projects-header {
        color: white;
        padding: 22px;
    }
    .projects-header .count,
    .projects-header .title {
        display: inline-block;
    }
    .projects-header .count {
        color: #738297;
    }
    .projects-header .glyphicon {
        cursor: pointer;
        float: right;
        font-size: 16px;
        margin: 5px 0;
    }
    .projects-header .title {
        font-size: 21px;
    }
    .projects-header .title + .count {
        margin-left: 5px;
    }
    .projects-table {
        width: 100%;
    }
    .projects-table td,
    .projects-table th {
        color: white;
        padding: 10px 22px;
        vertical-align: middle;
    }
    .projects-table td p {
        font-size: 12px;
    }
    .projects-table td p:last-of-type {
        color: #738297;
        font-size: 11px;
    }
    .projects-table tr:not(:last-of-type) {
        border-bottom: 1px solid #313D4F;
    }
    .projects-table .member figure,
    .projects-table .member .member-info {
        display: inline-block;
        vertical-align: top;
    }
    .projects-table .member figure + .member-info {
        margin-left: 7px;
    }
    .projects-table .member img {
        border-radius: 50%;
        height: 32px;
        width: 32px;
    }
    .projects-table .table-head {
        background-color: #313D4F;
        color: #738297;
    }
    .projects-table .status > form {
        float: right;
    }
    .projects-table .status-text {
        display: inline-block;
        font-size: 12px;
        margin: 11px 0;
        padding-left: 20px;
        position: relative;
    }
    .projects-table .status-text:before {
        border: 3px solid;
        border-radius: 50%;
        content: "";
        height: 14px;
        left: 0;
        position: absolute;
        top: 1px;
        width: 14px;
    }
    .projects-table .status-text.status-blue:before {
        border-color: #1C93ED;
    }
    .projects-table .status-text.status-green:before {
        border-color: #66B92E;
    }
    .projects-table .status-text.status-orange:before {
        border-color: #DA932C;
    }
    .selectric {
        background-color: transparent;
        border-color: #313D4F;
        border-radius: 4px;
    }
    .selectric .label {
        color: #738297;
        line-height: 34px;
        margin-right: 10px;
        text-align: left;
    }
    .selectric-wrapper {
        float: right;
        width: 150px;
    }
    .danger-item {
        border-left: 4px solid #A84D43;
    }
    .danger-text {
        color: #A84D43 !important;
    }
    body {
        background-color: #1b2431; */
        color: #202020; */
        font-family: "Montserrat", "Helvetica", "Open Sans", "Arial"; */
        font-size: 13px; */
    }
    p,
    figure,
    ul,
    li {
        margin: 0;
        padding: 0;
    }
    .container {
        margin-left: auto;
        margin-right: auto;
        padding: 0;
        max-width: 960px;
        width: 100%;
    }
    .btn:hover{
    	cursor:pointer;
    }
	
</style>

</head>

<body class="index-page page-on-scroll" style="margin-top:120px;">
<script
  src="https://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous"></script>
	<c:import url="../includes/header.jsp"></c:import>
		
		<div class="container card-list">
			<div class="card blue">
				<div class="title">오늘 등록된 키워드</div>
				<span class="glyphicon glyphicon-list-alt btn" id="todayBtn"></span>
				<div class="todayKeywordValue"></div>
				<div class="stat">
					<b>13</b>% increase
				</div>
			</div>
			<div class="card green">
				<div class="title">총 키워드</div>
				<span class="glyphicon glyphicon-list-alt btn" id="allBtn"></span>
				<div class="allKeywordValue"></div>
				<div class="stat">
					<b>4</b>% increase
				</div>
			</div>
			<div class="card orange">
				<div class="title">신조어 사전</div>
				<span class="glyphicon glyphicon-cog btn" id="newBtn"></span>
				<div class="newDicValue"></div>
				<div class="stat">
					<b>13</b>% decrease
				</div>
			</div>
			<div class="card red">
				<div class="title">예외 사전</div>
				<span class="glyphicon glyphicon-cog btn" id="excBtn"></span>
				<div class="excDicValue"></div>
				<div class="stat">
					<b>13</b>% decrease
				</div>
			</div>
		</div>
		<div class="container projects" style="height: 80%; overflow-x:hidden; overflow-y:scroll">
			<div class="projects-inner">
				<header class="projects-header">
					<div class="title">Keyword List</div>
					<div class="count listName">|</div>
					<input type="text" id="insertInput" style="float: right; color: black;"/>
					<span class="glyphicon glyphicon-download-alt insertBtn">등록　</span>
				</header>
				<table class="projects-table">
					<thead>
						<tr>
							<th class="table-head" colspan="4" style="text-align: center;">Keyword</th>
						</tr>
					</thead>
					<tbody id="listResult">
					</tbody>
				</table>
			</div>
		</div>

	<script src="/resources/HTML/vendor/jquery.min.js" type="text/javascript"></script>
	
<script>
	
	var todayKeyword = [];
	var allKeyword = [];
	var newDic = [];
	var excDic = [];
	var html = "";
	
	<c:forEach items="${todayKeyword}" var="word">
		todayKeyword.push("${word}");
	</c:forEach>
	
	<c:forEach items="${allKeyword}" var="word">
		allKeyword.push("${word}");
	</c:forEach>

	<c:forEach items="${newDic}" var="word">
		newDic.push("${word}");
	</c:forEach>

	<c:forEach items="${excDic}" var="word">
		excDic.push("${word}");
	</c:forEach>

	$(".todayKeywordValue").html(todayKeyword.length);
	$(".allKeywordValue").html(allKeyword.length);
	$(".newDicValue").html(newDic.length);
	$(".excDicValue").html(excDic.length);

	$("#todayBtn").on("click", function() {
		$(".listName").html("| 오늘 등록된 키워드");
		html = "";
		for (var i = 0; i < todayKeyword.length; i+=4) {
			html += "<tr><td>" + todayKeyword[i] + "</td><td>" + todayKeyword[i+1] + "</td><td>";
			html += todayKeyword[i+2] + "</td><td>" + todayKeyword[i+3] + "</td></tr>";
		}
		$("#listResult").html(html);
	});
	
	$("#allBtn").on("click", function() {
		$(".listName").html("| 총 키워드");
		html = "";
		for (var i = 0; i < allKeyword.length; i+=4) {
			html += "<tr><td>" + allKeyword[i] + "</td><td>" + allKeyword[i+1] + "</td><td>";
			html += allKeyword[i+2] + "</td><td>" + allKeyword[i+3] + "</td></tr>";
		}
		$("#listResult").html(html);
	});
	
	$("#newBtn").on("click", function() {
		newFunction();
	});
	
	$("#excBtn").on("click", function() {
		excFunction();
	});
	
	$(".insertBtn").click(function () {
		var listName = $(".listName").text();
		var insertInput = $("#insertInput").val();
		switch(listName){
		case "| 예외 사전":
			$.ajax({
				url: "/main/excDicInsert",
				type: "POST",
				data: {
					"word":insertInput
				},
				success:function (){
					excFunction();
					$("#insertInput").val("");
				}
			});
			break;
		case "| 신조어 사전":
			$.ajax({
				url: "/main/newDicInsert",
				type: "POST",
				data: {
					"word":insertInput
				},
				success:function (){
					newFunction();
					$("#insertInput").val("");
				}
			});
			break;
		default:
			alert("신조어나 예외 사전만 등록가능");
		}
	});
	
	// 예외 사전 리스트 td 클릭시
	$("#listResult").on("click", "td[id=exc]", function () {
		var chk = confirm($(this).text() + "를(을) 삭제 하시겠습니까?");
		if (chk == true) {
			$.ajax({
				url: "/main/excDicDelete",
				type: "POST",
				data: {
					"word":$(this).text()
				},
				async:false,
				success:function (){
					excFunction();
				}
			});
			console.log("삭제완료");
		} else {
			console.log("삭제취소");
		}
	});
	
	// 신조어 사전 리스트 td 클릭시
	$("#listResult").on("click", "td[id=new]", function () {
		var chk = confirm($(this).text() + "를(을) 삭제 하시겠습니까?");
		if (chk == true) {
			$.ajax({
				url: "/main/newDicDelete",
				type: "POST",
				data: {
					"word":$(this).text()
				},
				async:false,
				success:function (){
					newFunction();
				}
			});
			console.log("삭제완료");
		} else {
			console.log("삭제취소");
		}
	});
	
	// 예외 사전 ajax로 리스트 가져오고 띄워주는 함수
	function excFunction () { 
		$.ajax({
			url: "/main/admin",
			type: "POST",
			data: {
				"type":"4"
			}
		}).done(function (result) {
			var data = result;
			excDic = [];
			for(var i = 0; i < data.length; i++){
				excDic[i] = data[i];
			}
			$(".listName").html("| 예외 사전");
			html = "";
			for (var i = 0; i < excDic.length; i+=4) {
				if(i <= excDic.length - 4){
					html += "<tr><td id='exc'>" + excDic[i] + "</td><td id='exc'>" + excDic[i+1] + "</td><td id='exc'>";
					html += excDic[i+2] + "</td><td id='exc'>" + excDic[i+3] + "</td></tr>";
				} else {
					html += "<tr>";
					for(var j = i; j < excDic.length; j++){
						html+= "<td>" + excDic[j] + "</td>";
					}
					html += "</tr>";
					break;
				}
			}
			$("#listResult").html(html);
		});
	}
	
	// 신조어 사전 ajax로 리스트 가져오고 띄워주는 함수
	function newFunction () { 
		$.ajax({
			url: "/main/admin",
			type: "POST",
			data: {
				"type":"3"
			}
		}).done(function (result) {
			var data = result;
			newDic = [];
			for(var i = 0; i < data.length; i++){
				newDic[i] = data[i];
			}
			$(".listName").html("| 신조어 사전");
			html = "";
			for (var i = 0; i < newDic.length; i+=4) {
				if(i <= newDic.length - 4){
					html += "<tr><td id='new'>" + newDic[i] + "</td><td id='new'>" + newDic[i+1] + "</td><td id='new'>";
					html += newDic[i+2] + "</td><td id='new'>" + newDic[i+3] + "</td></tr>";
				} else {
					html += "<tr>";
					for(var j = i; j < newDic.length; j++){
						html+= "<td>" + newDic[j] + "</td>";
					}
					html += "</tr>";
					break;
				}
			}
			$("#listResult").html(html);
		});
	}
	
	
</script>

<a href="javascript:void(0);" class="js-back-to-top back-to-top">Top</a>

<!-- JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- CORE PLUGINS -->

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