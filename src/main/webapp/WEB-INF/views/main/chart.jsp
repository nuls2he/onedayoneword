<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<script src="https://cdnjs.cloudflare.com/ajax/libs/d3/3.5.5/d3.min.js"></script>
<style>
	html, body {
		height: 100%;
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
	
	.widget {
        margin: 0 auto;
        width:350px;
        margin-top:50px;
        background-color: #222D3A;
        border-radius: 5px;
        box-shadow: 0px 0px 1px 0px #06060d;

    }

    .title{
        background-color: #29384D;
        height:40px;
        color:#929DAF;
        text-align: center;
        line-height: 40px;
        border-top-left-radius: 7px;
        border-top-right-radius: 7px;
        font-weight: 400;
        font-size: 1.5em;
        text-shadow: 1px 1px #06060d;
    }

    .chart-container{
        padding:25px;
    }

    .shadow {
        -webkit-filter: drop-shadow( 0px 3px 3px rgba(0,0,0,.5) );
        filter: drop-shadow( 0px 3px 3px rgba(0,0,0,.5) );
    }
</style>

</head>

<body class="index-page page-on-scroll">
<script
  src="https://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous"></script>
<script src="/resources/HTML/js/three.js"></script>
<script src="/resources/HTML/js/tween.min.js"></script>
<script src="/resources/HTML/js/TrackballControls.js"></script>
<script src="/resources/HTML/js/CSS3DRenderer.js"></script>

<script src="https://www.gstatic.com/firebasejs/4.8.1/firebase.js"></script>
		
	<c:import url="../includes/header.jsp"></c:import>
		
         <div class="parallax-window" data-parallax="scroll" data-image-src="/resources/HTML/img/1920x1080/006.jpg">
            <div class="parallax-content container">
                <h1 class="carousel-title">CHART</h1>
                <p>Lorem ipsum dolor amet consectetur adipiscing dolore magna aliqua <br/> enim minim estudiat veniam siad venumus dolore</p>
            </div>
        </div>
        <!--========== PARALLAX ==========-->

        <!-- Service -->
        <div class="listBody">
        	<div class="widget" style="float: left;">
			    <div class="title">10대 남자</div>
			    <div id="chartBoy" class="chart-container">
			
			    </div>
			</div>
			<div class="widget">
			    <div class="title">10대 여자</div>
			    <div id="chartGirl" class="chart-container">
			
			    </div>
			</div>
		</div>

<script>
	
var dataset = [
    { name: 'dd', percent: 30 },
    { name: 'Chrome', percent: 30 },
    { name: 'Safari', percent: 30 },
    { name: 'Firefox', percent: 5 },
    { name: 'Others', percent: 5 }
];

var pie=d3.layout.pie()
.value(function(d){return d.percent})
.sort(null)
.padAngle(.03);

var w=300,h=300;

var outerRadius=w/2;
var innerRadius=100;

var color = d3.scale.category10();

var arc=d3.svg.arc()
.outerRadius(outerRadius)
.innerRadius(innerRadius);

var svg=d3.select("#chartBoy")
.append("svg")
.attr({
    width:w,
    height:h,
    class:'shadow'
}).append('g')
.attr({
    transform:'translate('+w/2+','+h/2+')'
});
var path=svg.selectAll('path')
.data(pie(dataset))
.enter()
.append('path')
.attr({
    d:arc,
    fill:function(d,i){
        return color(d.data.name);
    }
});

path.transition()
.duration(1000)
.attrTween('d', function(d) {
    var interpolate = d3.interpolate({startAngle: 0, endAngle: 0}, d);
    return function(t) {
        return arc(interpolate(t));
    };
});


var restOfTheDataBoy=function(){
var text= $("div[id=chartBoy] svg")[0].selectAll('text')
    .data(pie(dataset))
    .enter()
    .append("text")
    .transition()
    .duration(200)
    .attr("transform", function (d) {
        return "translate(" + arc.centroid(d) + ")";
    })
    .attr("dy", ".4em")
    .attr("text-anchor", "middle")
    .text(function(d){
        return d.data.percent+"%";
    })
    .style({
        fill:'#fff',
        'font-size':'10px'
    });

var legendRectSize=20;
var legendSpacing=7;
var legendHeight=legendRectSize+legendSpacing;


var legend=svg.selectAll('.legend')
    .data(color.domain())
    .enter()
    .append('g')
    .attr({
        class:'legend',
        transform:function(d,i){
            //Just a calculation for x & y position
            return 'translate(-35,' + ((i*legendHeight)-65) + ')';
        }
    });
legend.append('rect')
    .attr({
        width:legendRectSize,
        height:legendRectSize,
        rx:20,
        ry:20
    })
    .style({
        fill:color,
        stroke:color
    });

legend.append('text')
    .attr({
        x:30,
        y:15
    })
    .text(function(d){
        return d;
    }).style({
    fill:'#929DAF',
    'font-size':'14px'
});
};

setTimeout(restOfTheDataBoy,1000);


var dataset2 = [
    { name: 'dd', percent: 10 },
    { name: 'Chrome', percent: 10 },
    { name: 'Safari', percent: 10 },
    { name: 'Firefox', percent: 30 },
    { name: 'Others', percent: 40 }
];

var pie=d3.layout.pie()
    .value(function(d){return d.percent})
    .sort(null)
    .padAngle(.03);

var w=300,h=300;

var outerRadius=w/2;
var innerRadius=100;

var color = d3.scale.category10();

var arc=d3.svg.arc()
    .outerRadius(outerRadius)
    .innerRadius(innerRadius);

var svg=d3.select("#chartGirl")
    .append("svg")
    .attr({
        width:w,
        height:h,
        class:'shadow'
    }).append('g')
    .attr({
        transform:'translate('+w/2+','+h/2+')'
    });
var path=svg.selectAll('path')
    .data(pie(dataset2))
    .enter()
    .append('path')
    .attr({
        d:arc,
        fill:function(d,i){
            return color(d.data.name);
        }
    });

path.transition()
    .duration(1000)
    .attrTween('d', function(d) {
        var interpolate = d3.interpolate({startAngle: 0, endAngle: 0}, d);
        return function(t) {
            return arc(interpolate(t));
        };
    });


var restOfTheDataGirl=function(){
    var text= $("div[id=chartGirl]").svg.selectAll('text')
        .data(pie(dataset2))
        .enter()
        .append("text")
        .transition()
        .duration(200)
        .attr("transform", function (d) {
            return "translate(" + arc.centroid(d) + ")";
        })
        .attr("dy", ".4em")
        .attr("text-anchor", "middle")
        .text(function(d){
            return d.data.percent+"%";
        })
        .style({
            fill:'#fff',
            'font-size':'10px'
        });

    var legendRectSize=20;
    var legendSpacing=7;
    var legendHeight=legendRectSize+legendSpacing;


    var legend=svg.selectAll('.legend')
        .data(color.domain())
        .enter()
        .append('g')
        .attr({
            class:'legend',
            transform:function(d,i){
                //Just a calculation for x & y position
                return 'translate(-35,' + ((i*legendHeight)-65) + ')';
            }
        });
    legend.append('rect')
        .attr({
            width:legendRectSize,
            height:legendRectSize,
            rx:20,
            ry:20
        })
        .style({
            fill:color,
            stroke:color
        });

    legend.append('text')
        .attr({
            x:30,
            y:15
        })
        .text(function(d){
            return d;
        }).style({
        fill:'#929DAF',
        'font-size':'14px'
    });
};

setTimeout(restOfTheDataGirl,1000); 
    
</script>
<script src="/resources/HTML/vendor/jquery.min.js" type="text/javascript"></script>

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

<c:import url="../includes/footer.jsp"></c:import>
</body>
	
</html>