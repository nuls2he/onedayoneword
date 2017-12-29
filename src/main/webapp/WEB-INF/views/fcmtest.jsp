<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<label for="noti">하루 한 번 키워드 알림 받기</label> <input type="checkbox" id="noti">
	<h6>여기에는 키워드 알림 받기 위해서 어떻게 해야하는지 설명하는 캡쳐 이미지 같은 걸 넣어놓으면 좋을 듯 하다 (알림 허용 버튼 누르라고 안내....)</h6>
	
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"
	integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
	crossorigin="anonymous"></script>
	<script>
	
		$("#noti").on("change", function() {
			
			if(this.checked) {
				//  authDomain  : oneday-1123.firebaseapp.com
				//  databaseURL: "https://oneday-1123.firebaseio.com",
				window.open("https://oneday-1123.firebaseapp.com", "", "width=286,height=100");
			}
		});
		
	</script>
</body>
</html>