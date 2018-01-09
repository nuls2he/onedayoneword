<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
    @import url(https://fonts.googleapis.com/css?family=Dosis:300|Lato:300,400,600,700|Roboto+Condensed:300,700|Open+Sans+Condensed:300,600|Open+Sans:400,300,600,700|Maven+Pro:400,700);
    @import url("https://netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.css");
    * {
        -moz-box-sizing: border-box;
        -webkit-box-sizing: border-box;
        box-sizing: border-box;
    }

    html, body {
        background-color: #202B33;
        color: #738491;
        font-family: "Open Sans";
        font-size: 16px;
        font-smoothing: antialiased;
        overflow: hidden;
    }

    header {
        color: #D3D3D3;
    }

    nav {
        position: absolute;
        top: 0;
        bottom: 0;
        right: 82%;
        left: 0;
        padding: 22px;
        border-right: 2px solid #161e23;
    }
    nav > header {
        font-weight: 700;
        font-size: 1.2rem;
        text-transform: uppercase;
    }
    nav section {
        font-weight: 600;
    }
    nav section header {
        padding-top: 30px;
    }
    nav section ul {
        list-style: none;
        padding: 0px;
    }
    nav section ul li {
        position: relative;
        padding: 10px 0px;
    }
    nav section ul li.active {
        color: #2278AE;
    }
    nav section ul li:after {
        content: attr(data-value);
        position: absolute;
        right: 0px;
        width: 19px;
        background-color: #738491;
        font-size: 0.9rem;
        color: #202B33;
        -moz-border-radius: 19px;
        -webkit-border-radius: 19px;
        border-radius: 19px;
        text-align: center;
    }
    nav section ul li.red:after {
        content: '';
        position: absolute;
        top: 14px;
        right: 0px;
        width: 10px;
        height: 10px;
        background-color: #ec487f;
        -moz-border-radius: 10px;
        -webkit-border-radius: 10px;
        border-radius: 10px;
    }
    nav section ul li.yellow:after {
        content: '';
        position: absolute;
        top: 14px;
        right: 0px;
        width: 10px;
        height: 10px;
        background-color: #ea8e39;
        -moz-border-radius: 10px;
        -webkit-border-radius: 10px;
        border-radius: 10px;
    }
    nav section ul li.green:after {
        content: '';
        position: absolute;
        top: 14px;
        right: 0px;
        width: 10px;
        height: 10px;
        background-color: #38af5b;
        -moz-border-radius: 10px;
        -webkit-border-radius: 10px;
        border-radius: 10px;
    }
    nav section ul li.new {
        font-size: 0.9rem;
        color: #545f68;
    }

    article {
        position: absolute;
        top: 0;
        bottom: 0;
        right: 0;
        left: 18%;
        overflow: auto;
        border-left: 2px solid #2a3843;
        padding: 20px;
    }
    article > header {
        height: 90px;  /*60*/
        border-bottom: 1px solid #2a3843;
    }
    article > header .title {
        float: left;
        font-size: 1.3rem;
        font-weight: 600;
    }
    article > header .user {
        float: right;
        width: 48px;
        height: 48px;
        background-image: url("https://s3.amazonaws.com/uifaces/faces/twitter/peterlandt/48.jpg");
        -moz-border-radius: 48px;
        -webkit-border-radius: 48px;
        border-radius: 48px;
        margin-left: 20px;
    }
    article > header .interval {
        float: right;
    }
    article > header .interval ul {
        padding: 0;
        list-style: none;
    }
    article > header .interval ul li {
        float: right;
        text-transform: uppercase;
        font-size: 0.9rem;
        font-weight: 600;
        padding: 2px 10px;
        margin: 0px 10px;
    }
    article > header .interval ul li.active {
        background-color: #D3D3D3;
        color: #202B33;
        -moz-border-radius: 10px;
        -webkit-border-radius: 10px;
        border-radius: 10px;
    }
    article section {
        margin-top: 20px;
        margin-bottom: 20px;
    }
    article section > header {
        margin-bottom: 20px;
        font-size: 1.1rem;
        font-weight: 600;
    }
    article section .chart {
        height: 200px;
    }
    article section .inlineChart {
        float: left;
        width: 30%;
        margin-bottom: 50px;
    }
    article section .inlineChart canvas {
        float: left;
    }
    article section .inlineChart .info {
        float: left;
        padding-left: 20px;
        padding-top: 16px;
    }
    article section .inlineChart .info .value {
        font-size: 2.0rem;
        color: #D3D3D3;
    }
    article section table {
        width: 100%;
    }
    article section table th, article section table td {
        padding: 15px 0px;
        border-bottom: 1px solid #2a3843;
    }
    article section table thead th {
        text-align: left;
        font-size: 0.9rem;
        text-transform: uppercase;
        color: #D3D3D3;
    }
    #naver:hover {
    	background-color:rgba(255,235,0,1);
    	cursor: pointer;
    }
    
</style>
</head>
<script
  src="https://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous"></script>
<script src="/resources/HTML/js/chart.js"></script>
<body>

<nav>
    <header><button id="naver" style="background-color:rgba(0,0,0,0); width: 100%;"><img src="/resources/HTML/img/naverlogo.png" style="width: 100%;"></button></header>
    <section>
        <ul>
            <li class="red">전체</li>
            <li class="yellow">남성</li>
            <li class="green">여성</li>
        </ul>
    </section>
</nav>

<article>
    <header style="text-align: center;">
    	<h1 id="keyword" style="font-size: 35px;"></h1>
    </header>
    <section>
        <div class="chart">
            <canvas id="c1" width="820" height="200"></canvas>
        </div>
    </section>
    <section>
        <table>
            <thead>
            <tr>
                <th style="width: 870px;">Original Data</th>
                <th>Gender</th>
            </tr>
            </thead>
            <tbody id="tResult">
            </tbody>
        </table>
    </section>
</article>

<script>
	
	$("#naver").click(function () {
// 	    window.open("https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=1&ie=utf8&query=" + keyword, "_blank");
		location.href="https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=1&ie=utf8&query=" + keyword;
	});
	
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
// 				console.log(result[i].originaldata);
				
				if(result[i].siteno == 1){
					var gender = "| 여성";
				} else {
					var gender = "| 남성";
				}
				str += "<tr><td>" + result[i].originaldata + "</td><td>" + gender + "</td></tr>";
			}
			$("#tResult").html(str);
		});
	});
	
	var date = new Date();
	var dd = date.getDate();
	var mm = date.getMonth()+1;
	var yyyy = date.getFullYear();
	
	var arr = [];
	
	var arrAll = [];
	var arrBoy = [];
	var arrGirl = [];
	
	var arrCount = 6;
	<c:forEach items="${dayList}" var="day">
		arr[arrCount] = "${day}";
		
		$.ajax({
			url: "/main/chartCount",
			type: "POST",
			data: {
				"keyword":keyword,
				"date":arr[arrCount]
			},
			async:false
		}).done(function (result) {
			var list = result;
// 			console.dir(list);
// 			console.log(typeof(list[0]));
			arrAll[arrCount] = list[0] + list[1];
			arrGirl[arrCount] = list[0];
			arrBoy[arrCount] = list[1];
		});
		
		arrCount -= 1;
	</c:forEach>
	
// 	console.dir(arrAll);
// 	console.dir(arrGirl);
// 	console.dir(arrBoy);
	
    var data1 = {
        labels : arr, // 그래프
        datasets : [
            {
                fillColor : "rgba(56,175,91,.1)",
                strokeColor : "rgba(56,175,91,1)",
                pointColor : "rgba(56,175,91,1)",
                pointStrokeColor : "rgba(0,0,0,0.6)",
                data : arrGirl //[100,70,20,40,80,40,100]
            },
            {
                fillColor : "rgba(234,142,57,.1)",
                strokeColor : "rgba(234,142,57,1)",
                pointColor : "rgba(234,142,57,1)",
                pointStrokeColor : "rgba(0,0,0,0.6)",
                data : arrBoy //[50, 130, 80, 160, 20, 110, 80]
            },
            {
                fillColor : "rgba(236,72,127,.1)",
                strokeColor : "rgba(236,72,127,1)",
                pointColor : "rgba(236,72,127,1)",
                pointStrokeColor : "rgba(0,0,0,0.6)",
                data : arrAll //[150,200,100,200,100,150,180]
            }
        ]
    }

    var options1 = {
        scaleFontColor : "rgba(255,255,255,0.7)",
        scaleLineColor : "rgba(0,0,0,0)",
        scaleGridLineColor : "rgba(255,255,255,0.1)",
        scaleFontFamily: "Open Sans",
        scaleFontSize: 14,
        bezierCurve : true,
        scaleShowLabels: true,
        pointDotRadius: 6,
        animation: true,
        scaleShowGridLines: true,
        datasetFill: true,
        responsive: true
    }

    new Chart(c1.getContext("2d")).Line(data1,options1);
    
</script>
</body>
</html>