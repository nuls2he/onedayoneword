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
        .element {
            width: 290px; /*120*/
            height: 0px; /*160*/
            box-shadow: 0px 0px 12px rgba(0,255,255,0.5);
/*             border: 1px solid rgba(127,255,255,0.25); */
            text-align: center;
            cursor: default;
        }
        .element:hover {
/*             box-shadow: 0px 0px 12px rgba(0,255,255,0.75); */
/*             border: 1px solid rgba(127,255,255,0.75); */
        }
        .element .number {
            position: absolute;
            top: 20px;
            right: 20px;
            font-size: 0px; /*12*/
            color: rgba(127,255,255,0.75);
        }
        .element .symbol {
            position: absolute;
            top: 40px;
            left: 0px;
            right: 0px;
            font-size: 50px;
            font-weight: bold;
            color: rgba(255,255,255,0.75);
            text-shadow: 0 0 10px rgba(0,255,255,0.95);
        }
        .element .symbol:hover{
        	color: rgba(255,255,255,0.25);
        }
        .element .details {
            position: absolute;
            bottom: 15px;
            left: 0px;
            right: 0px;
            font-size: 12px;
            color: rgba(127,255,255,0.75);
        }
        button {
            color: rgba(127,255,255,0.75);
            background: transparent;
            outline: 1px solid rgba(127,255,255,0.75);
            border: 0px;
            padding: 5px 10px;
            cursor: pointer;
        }
        button:hover {
            background-color: rgba(0,255,255,0.5);
        }
        button:active {
            color: #000000;
            background-color: rgba(0,255,255,0.75);
        }
        
        .listBody {
        	height:600px; 
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
  background-color: #167F92;
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
@media (min-width: 480px) {
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
@media (min-width: 480px) {
  .responstable td {
    border: 1px solid #D9E4E6;
  }
}
.responstable th, .responstable td {
  text-align: left;
  margin: .5em 1em;
}
@media (min-width: 480px) {
  .responstable th, .responstable td {
    display: table-cell;
    padding: 1em;
  }
}
    </style>

</head>

<body class="index-page page-on-scroll">

<script src="/resources/HTML/js/three.js"></script>
<script src="/resources/HTML/js/tween.min.js"></script>
<script src="/resources/HTML/js/TrackballControls.js"></script>
<script src="/resources/HTML/js/CSS3DRenderer.js"></script>

<script src="https://www.gstatic.com/firebasejs/4.8.1/firebase.js"></script>
<script>
  // Initialize Firebase
  var config = {
    apiKey: "AIzaSyAOt6m87XjCvQIAyEmCwPCFTtzPbucKATI",
    authDomain: "study-332a5.firebaseapp.com",
    databaseURL: "https://study-332a5.firebaseio.com",
    projectId: "study-332a5",
    storageBucket: "study-332a5.appspot.com",
    messagingSenderId: "973012229121"
  };
  firebase.initializeApp(config);
</script>
		
	<c:import url="../includes/header.jsp"></c:import>
		
         <div class="parallax-window" data-parallax="scroll" data-image-src="/resources/HTML/img/1920x1080/001.jpg">
            <div class="parallax-content container">
                <h1 class="carousel-title">BOARD</h1>
                <p>Lorem ipsum dolor amet consectetur adipiscing dolore magna aliqua <br/> enim minim estudiat veniam siad venumus dolore</p>
            </div>
        </div>
        <!--========== PARALLAX ==========-->

        <!-- Service -->
        <div class="listBody">
        	<br/>
        	<div style="padding-left: 60%;">
        		검색 :
        		<select style="height: 27px;">
        			<option value="title">제목</option>
        			<option value="writer">작성자</option>
        		</select>
        		<input type="text" id="search"/>
        		<button class="searchBtn">검색</button>
        	</div>
        	<br/>
   			<table class="responstable" style="width: 60%; margin:0 auto;">
   				<thead>
   					<th width="10%;">글번호</th>
   					<th width="50%;">제목</th>
   					<th width="20%;">글쓴이</th>   					
   					<th width="20%;">등록일자</th>   					
   				</thead>
   				<tbody id="tList">
   				</tbody>
   			</table>
		<div id="reportPage" style="margin-left: 43%;">
			<ul class="pagination mypage" style="margin: 0 auto;">
<!-- 				<li class="page-item"><a class="page-link" href="#">Prev</a></li> -->
<!-- 				<li class="page-item"><a class="page-link" href="#">Next</a></li> -->
			</ul>
		</div>
		</div>

	<script src="/resources/HTML/vendor/jquery.min.js" type="text/javascript"></script>
<script>
	
	var html = "";
	var listCount=0;
	var page = "${page}";
	var listEnd = page * 2;
	var listStart = listEnd - 1;
	var pageNum = parseInt("${pageNum}");
	var prev = false;
	var next = true;
	
	function readEach(keyStr) {
		var data = firebase.database().ref("/board/" + keyStr);

		data.on('value', function(snapshot) {
			var chk = snapshot.val();
// 			html += "<li>" + chk.title + " / " + chk.writer + " / " + chk.regdate + "</li>";
			html += "<tr><td>" + keyStr + "</td><td>" + chk.title + "</td><td>" + chk.writer + "</td><td>" + chk.regdate + "</td></tr>";
		});
	}
	
	function readAllData() {
		var memoList = firebase.database().ref().child("/board");
		
		memoList.on("value", function(snapshot) {

			var listData = snapshot.val();
			listCount = listData.length - 1;
			
			if(listEnd > listCount){
				listEnd = listCount;
			}
			
			for (var i = listStart; i <= listEnd; i++){
				html += "<tr><td>" + listData[i].no + "</td><td>" + listData[i].title + "</td><td>"; 
				html += listData[i].writer + "</td><td>" + listData[i].regdate + "</td></tr>";
			}
			
// 			for (keyStr in listData) {
// 				readEach(keyStr);
// 			} 
			
			$("#tList").html(html);
			paging(listCount);
		});	
		
	}
	
	readAllData();
	
	function paging(listCount) {
		var str = "";
		var pagingEnd = pageNum + 2;
		var count = (listCount / 2) + 1;
		
		if(pagingEnd > count){
			pagingEnd = count;
			next = false;
		}
		
		if(pageNum != 1){
			prev = true;
		} else {
			prev = false;
		}
		
		if(prev){str += "<li class='page-item' id='prev'><a class='page-link' href='#'>Prev</a></li>"};
		for(var i = pageNum; i <= pagingEnd; i++){
			str += "<li class='page-item'><a class='page-link' href='/main/boardlist?page=" + i + "&pageNum=" + pageNum + "'>" + i + "</a></li>";
		}
		if(next){str += "<li class='page-item' id='next'><a class='page-link' href='#'>next</a></li>"};
		
		$(".mypage").html(str);
	};
	
	$(".mypage").on("click","li[id=prev]",function () {
		pageNum -= 3;
		location.href = "/main/boardlist?page=" + (pageNum + 2) +'&pageNum=' + pageNum;
	});
	
	$(".mypage").on("click","li[id=next]",function () {
		pageNum += 3;
		location.href = "/main/boardlist?page=" + pageNum + '&pageNum=' + pageNum;
	});
	
// 	검색
	$(".searchBtn").click(function () {
		html = "";
		var boardList = firebase.database().ref().child("/board");
		var search = $("#search").val();
		
		boardList.on("value", function (event){
			var list = event.val();
			for(keyStr in list){
				var results = firebase.database().ref("/board/" + keyStr);
				results.on("value", function(event){
					var result = event.val();
					if(result.title.match(search) != null){
						readEach(keyStr);
					}
				});
				
				/* var result = keyStr.match(search);
				if(result != null){
					readEach(keyStr);
				} */
			}
		});
		$("#tList").html(html);
	});

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

<c:import url="../includes/footer.jsp"></c:import>
</body>
	
</html>