<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<button id="btn"></button>
<div id="div"></div>
<script
        src="https://code.jquery.com/jquery-3.2.1.min.js"
        integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
        crossorigin="anonymous">
</script>

<script src="https://www.gstatic.com/firebasejs/4.8.1/firebase.js"></script>
<script>

    // Initialize Firebase
    var config = {
        apiKey: "AIzaSyAD_qm6cmfsf6dMmTqXPDYlylDq5yGZLSQ",
        authDomain: "oneday-1123.firebaseapp.com",
        databaseURL: "https://oneday-1123.firebaseio.com",
        projectId: "oneday-1123",
        storageBucket: "oneday-1123.appspot.com",
        messagingSenderId: "360329597510"
    };
    firebase.initializeApp(config);
</script>
<script>
	$("#btn").on("click" ,function(){
		var member = firebase.database().ref().child("/member");
		
		member.on("value" , function(snapshot){
			var memberData =snapshot.val() ;
			console.log(memberData);
		});
	});

</script>

</body>
</html>