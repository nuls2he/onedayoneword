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
		background-color: #568e94;
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
		apiKey : "AIzaSyAOt6m87XjCvQIAyEmCwPCFTtzPbucKATI",
		authDomain : "study-332a5.firebaseapp.com",
		databaseURL : "https://study-332a5.firebaseio.com",
		projectId : "study-332a5",
		storageBucket : "study-332a5.appspot.com",
		messagingSenderId : "973012229121"
	};
	firebase.initializeApp(config);
</script>
		
	<c:import url="../includes/header.jsp"></c:import>
		
         <div class="parallax-window" data-parallax="scroll" data-image-src="/resources/HTML/img/gogogogo.gif">
            <div class="parallax-content container">
                <h1 class="carousel-title">BOARD</h1>
<!--                 <p>한 달여 동안 조 이름을 네 번 바꿨지만 우리는 아직도 마음에 들지 안항서 새로 지은 조 이름은 <br/> 와사비</p> -->
            </div>
        </div>
        <!--========== PARALLAX ==========-->

        <!-- Service -->
        <div class="listBody">
        	<br/>
        	<div style="width: 70%; margin:0 auto;">
        		<div style="float: left; width:50%;">
        			<button class="btn btn-primary" id="insertBtn" style="background-color: #568e94; border-color: #568e94;">글등록</button>
        			<button class="btn btn-primary" id="allListBtn" style="background-color: #568e94; border-color: #568e94;">전체목록</button>
        		</div>
        		<div style="float: left; width:50%; text-align: right;" id="searchDiv">
	        		<select style="height: 27px;" id="zoneSelect">
	        			<option>선택없음</option>
	        			<option>제목</option>
	        			<option>글쓴이</option>
	        		</select>
	        		<input type="text" id="searchWord"/>
	        		<button class="searchBtn btn btn-primary" style="background-color: #568e94; border-color: #568e94;">검색</button>
        		</div>
        	</div>
        	<br/>
   			<table class="responstable" style="width: 70%; margin:0 auto;">
   				<thead>
   					<th width="10%;">글번호</th>
   					<th width="10%;" >연령대</th>
   					<th width="50%;">제목</th>
   					<th width="15%;">글쓴이</th>   					
   					<th width="15%;">등록일자</th>   					
   				</thead>
   				<tbody id="tList">
   				</tbody>
   			</table>
		<div id="reportPage" style="text-align: center;">
			<ul class="pagination mypage" style="margin: 0 auto;">
<!-- 				<li class="page-item"><a class="page-link" href="#">Prev</a></li> -->
<!-- 				<li class="page-item"><a class="page-link" href="#">Next</a></li> -->
			</ul>
		</div>
		</div>

	<script src="/resources/HTML/vendor/jquery.min.js" type="text/javascript"></script>
<script>
	
	// table에 html로 뿌려줄 문자열 변수
	var html = "";
	
	// 검색관련 변수
	var searchType = "${searchType}";
	var searchWord = "${searchWord}";
	var searchList = [];
	
	// 한페이지에 보여지는 글목록 수와 페이징 사이즈 수
	var listSize = 10;
	var pageSize = 5;
	
	// 페이징 변수
	var listCount = 0;
	var page = "${page}";
	var listEnd = page * listSize;  // var listEnd = page * 2;  페이지에 보여주는 글목록의 시작부터 끝
	var listStart = listEnd - (listSize - 1); // var listStart = listEnd - 1;
	var pageNum = parseInt("${pageNum}");
	var prev = false;
	var next = true;
	
	// 검색이 아니면 전체 조회
	if(!searchType){
		readAllData();
	} else {
		searchData();
	}
	
	// 전체 데이터 조회
	function readAllData() {
		var boardList = firebase.database().ref().child("/board");
		
		boardList.on("value", function(snapshot) {

			var listData = snapshot.val();
			listCount = listData.length - 1;
			
			if(listEnd > listCount){
				listEnd = listCount;
			}
			
			for (var i = listStart; i <= listEnd; i++){
				html += "<tr><td>" + listData[i].no + "</td><td>" + listData[i].age + "대" + "</td><td id='detail" + listData[i].no + "'>"; 
				html += listData[i].title + "</td><td>" + listData[i].writer + "</td><td>" + listData[i].regdate + "</td></tr>";
			}
			
			$("#tList").html(html);
			
			paging(listCount);
		});	
		
	}
	
	// 검색버튼클릭시  // 검색조건 변경 시 해당 부분 함수에 파라미터 수정! / paging함수 파라미터 수정해야함!
	$(".searchBtn").click(function () {
		var selectVal = $("#zoneSelect option:selected").val();
		var searchWord = $("#searchWord").val();
		
		var index = $("#zoneSelect option").index($("#zoneSelect option:selected"));
		
		switch(index){
		case 0:
			alert("검색 타입을 정해주세요");
			return ;
			break;
		case 1:
// 			alert("1");
// 			console.log(selectVal);
			if(searchWord == ""){
				alert("검색어를 입력해주세요");
				return ;
			} else {
				location.href='/main/boardlist?searchType=' + index + '&searchWord=' + searchWord;
			}
			return ;
			break;
		case 2:
			if(searchWord == ""){
				alert("검색어를 입력해주세요");
				return ;
			} else {
				location.href='/main/boardlist?searchType=' + index + '&searchWord=' + searchWord;
			}
			break;
		}
	});
	
	// 검색함수
	function searchData(){
		html = "";
		var boardList = firebase.database().ref().child("/board");
		
		boardList.on("value", function (snapshot){
			var listData = snapshot.val();
			
			switch(searchType){
			case "1":
				for(var i = 1; i < listData.length; i++){
					var str = listData[i].title.toString();
					if(str.match(searchWord)){
						listCount += 1;
						searchList.push(listData[i]);
					}
				}
				break;
			case "2":
				for(var i = 1; i < listData.length; i++){
					var str = listData[i].writer.toString();
					if(str.match(searchWord)){
						listCount += 1;
						searchList.push(listData[i]);
					}
				}
				break;
			}
			
			if(listEnd > listCount){ listEnd = listCount; }
			
			for (var i = (listStart - 1); i <= (listEnd - 1); i++){
				html += "<tr><td>" + searchList[i].no + "</td><td>" + searchList[i].age + "대" + "</td><td id='detail" + searchList[i].no +"'>"; 
				html += searchList[i].title + "</td><td>" + searchList[i].writer + "</td><td>" + searchList[i].regdate + "</td></tr>";
			}
			
			$("#tList").html(html);
			paging(listCount);
		});
	};
	
	// 페이징
	function paging(listCount) {
		var str = "";
		var pagingEnd = pageNum + (pageSize - 1); // var pagingEnd = pageNum + 2;
		var count = (listCount / listSize) + 1;  
		// var count = (listCount / 2) + 1;
		
		if(pagingEnd > count){
			pagingEnd = count;
			next = false;
		}
		
		if(pageNum != 1){
			prev = true;
		} else {
			prev = false;
		}
		
		if(listCount <= (listSize * pageSize)){ next = false; }
		
		if(prev){str += "<li class='page-item' id='prev'><a class='page-link' href='#'>Prev</a></li>"};
		
		for(var i = pageNum; i <= pagingEnd; i++){
			if(page != i){
				str += "<li class='page-item'><a class='page-link' href='/main/boardlist?page=" + i + "&pageNum=" + pageNum + "&searchWord=" + searchWord + "'>" + i + "</a></li>";	
			} else {
				str += "<li class='page-item active'><a class='page-link' href='/main/boardlist?page=" + i + "&pageNum=" + pageNum + "&searchWord=" + searchWord + "'>" + i + "</a></li>";
			}
		}
		
		if(next){str += "<li class='page-item' id='next'><a class='page-link' href='#'>next</a></li>"};
		
		$(".mypage").html(str);
	};
	
	$(".mypage").on("click","li[id=prev]",function () {
		pageNum -= pageSize; //pageNum -= 3;
		location.href = "/main/boardlist?page=" + (pageNum + (pageSize - 1)) +'&pageNum=' + pageNum + '&searchWord=' + searchWord;
	});
	
	$(".mypage").on("click","li[id=next]",function () {
		pageNum += pageSize; //pageNum += 3;
		location.href = "/main/boardlist?page=" + pageNum + '&pageNum=' + pageNum + '&searchWord=' + searchWord;
	});
	
	$("#insertBtn").on("click",function () {
		location.href='/oneday/insert';
	});
	
	$("#tList").on("click", "td[id^=detail]", function () {
		var str = $(this)[0].id;
		str = str.replace(/[^0-9]/g,'');
		location.href='/oneday/detail?no=' + str;
	});
	
	$("#tList").on("mouseover", "td[id^=detail]", function () {
		$(this).css("background-color", "#11bbda").
		css("cursor", "pointer");
	});
	
	$("#tList").on("mouseout", "td[id^=detail]", function () {
		$(this).css("background-color", "").
		css("cursor", "");
	});
	
	$("#allListBtn").click(function () {
		location.href='/main/boardlist';
	});
	
	
// 	function searchData(){
//		html = "";
	
//		var boardList = firebase.database().ref().child("/board").orderByChild("title").startAt(searchWord);
	
//		boardList.on("value", function (snapshot){
//			var listData = snapshot.val();
		
//			listCount = listData.length - 1;
//			console.log(listCount);
		
//			if(listEnd > listCount){
//				listEnd = listCount;
//			}
		
//			for (var i = listStart; i <= listEnd; i++){
//				html += "<tr><td>" + listData[i].no + "</td><td>" + listData[i].title + "</td><td>"; 
//				html += listData[i].writer + "</td><td>" + listData[i].regdate + "</td></tr>";
//			}
//			console.log(html);
//			$("#tList").html(html);
//		});
//		console.log("밖" + listCount);
//		paging(listCount);
//	};
	
// 	function readEach(keyStr) {
//		var data = firebase.database().ref("/board/" + keyStr);

//		data.on('value', function(snapshot) {
//			var chk = snapshot.val();
//			html += "<tr><td>" + keyStr + "</td><td>" + chk.title + "</td><td>" + chk.writer + "</td><td>" + chk.regdate + "</td></tr>";
//		});
//	}

// 	function search() {
// 		html = "";
		
// 		var boardList = firebase.database().ref().child("/board");
		
// 		boardList.on("value", function (snapshot) {
// 			var listData = snapshot.val();
			
// 			for(var i = 1; i <= listData.length - 1; i++){
// 				if(listData.title){
					
// 				}
// 			}
// 		});
// 	}; 

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

<%-- <c:import url="../includes/footer.jsp"></c:import> --%>
</body>
	
</html>