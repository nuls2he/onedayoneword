<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
아이디 :<span id="id"></span> <br>
세대:<span id="age"></span><br>
알림받을 시간 :<span id="time"></span><br>
	
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"
		integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
		crossorigin="anonymous">
		
	</script>
	<script src="https://www.gstatic.com/firebasejs/4.2.0/firebase-app.js"></script>
	<script src="https://www.gstatic.com/firebasejs/4.8.1/firebase.js"></script>
	<script>
		// Initialize Firebase
		var config = {
			apiKey : "AIzaSyAD_qm6cmfsf6dMmTqXPDYlylDq5yGZLSQ",
			authDomain : "oneday-1123.firebaseapp.com",
			databaseURL : "https://oneday-1123.firebaseio.com",
			projectId : "oneday-1123",
			storageBucket : "oneday-1123.appspot.com",
			messagingSenderId : "360329597510"
		};
		firebase.initializeApp(config);
	</script>
	
	<script> 
	 var html ="";
	    	(function(){
		        var userData = firebase.database().ref("/member").once("value" ,function(e){
		            e.forEach(function(r){
		                var id = r.val();
		                console.log(id);
		                    html += $("#id").html(id.id);
		                    html += $("#time").html(id.time);
		                    html += $("#age").html(id.age);
		            });
		        });
	    	}());
	</script>
</body>
</html>