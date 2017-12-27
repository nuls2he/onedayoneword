<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.orgsrc/main/webapp/resources/dev-tools/TR/html4/loose.dtd"> 
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<html>	
<style>
body{
	width : 500px;
	position: absolute;
}

		/* button css  */
		.w3-btn {margin-bottom:10px;}
		
	/* checkbox css  */
	.center-on-page {
	  position: absolute;
	  top: 50%;
	  left: 50%;
	  transform: translate(-50%,-50%);
	}
	input[type="checkbox"]
	{
	  position: absolute;
	  opacity: 0;
	  z-index: -1;
	}
	label {
	  position: relative;
	  display: inline-block;
	  margin-right: 10px;
	  margin-bottom: 10px;
	  padding-left: 30px;
	  padding-right: 10px;
	  line-height: 36px;
	  cursor: pointer;
	}
	label::before {
	  content: " ";
	  position: absolute;
	  top: 6px;
	  left: 0;
	  display: block;
	  width: 24px;
	  height: 24px;
	  border: 2px solid #8e44ad;
	  border-radius: 4px;
	  z-index: -1;
	}
	
	/* Checked */
	input[type="checkbox"]:checked + label
	 {
	  padding-left: 10px;
	  color: #fff;
	}
	input[type="checkbox"]:checked + label::before
	{
	  top: 0;
	  width: 100%;
	  height: 100%;
	  background: #8e44ad;
	}
	/* Transition */
	label,
	label::before {
	  -webkit-transition: .25s all ease;
	  -o-transition: .25s all ease;
	  transition: .25s all ease;
	}
	/* checkbox css  */
	
	
	/* select css  */
.container {
  width: 250px;
  margin: auto;
  text-align: left;
}

.select{
  width: 250px;
  position:relative;  
  display:block;
  margin:4px 0 8px;
  margin-bottom:20px;
  border-radius:3px;
  background:#f3f3f3 30%;
  background:-webkit-linear-gradient(top,#f3f3f3 30%,#e1e1e1);
  background:-moz-linear-gradient(top,#f3f3f3 30%,#e1e1e1);
  background:-ms-linear-gradient(top,#f3f3f3 30%,#e1e1e1);
  background:-o-linear-gradient(top,#f3f3f3 30%,#e1e1e1);
  background:linear-gradient(top,#f3f3f3 30%,#e1e1e1);
  -webkit-box-shadow:inset 0 0 0 1px rgba(0,0,0,0.2),inset 0 1px 0 1px #fff,0 1px 2px rgba(0,0,0,0.15);
  -moz-box-shadow:inset 0 0 0 1px rgba(0,0,0,0.2),inset 0 1px 0 1px #fff,0 1px 2px rgba(0,0,0,0.15);box-shadow:inset 0 0 0 1px rgba(0,0,0,0.2),inset 0 1px 0 1px #fff,0 1px 2px rgba(0,0,0,0.15);
}

.select select{
  height:40px;
  margin-bottom:0;
  line-height:20px;
  padding:6px;
  padding-left: 15px;
  border:0;background:transparent;
  -webkit-appearance:none;
  border-radius:3px;
  color:#666;
  width:100%;
}

.select select:focus{
  -webkit-box-shadow:0 0 3px 1px #2c7fcd,inset 0 0 3px #2c7fcd;
  -moz-box-shadow:0 0 3px 1px #2c7fcd,inset 0 0 3px #2c7fcd;
  box-shadow:0 0 3px 1px #2c7fcd,inset 0 0 3px #2c7fcd;
}

.select select option{
  background:#fff;
  color:black;
}

.select select.invalid{
  -webkit-box-shadow:0 0 3px 1px #e21824,inset 0 0 3px #e21824;
  -moz-box-shadow:0 0 3px 1px #e21824,inset 0 0 3px #e21824;
  box-shadow:0 0 3px 1px #e21824,inset 0 0 3px #e21824;
}

.select select:focus{
  outline: none;
  box-shadow: none;
}

.select:before{
  content:"\f0dd";
  font-family: FontAwesome;
  font-weight: normal;
  font-style: normal;
  display: inline-block;
  -webkit-font-smoothing: antialiased;
  font-size:14px;
  color:#666;
  position:absolute;
  right:11px;
  top:8px;
  text-shadow:0 1px 0 #fff;
  pointer-events:none;
}

.select:after{
  content:'';
  position:absolute; 
  top:1px;
  bottom:1px;
  right:28px;
  border-left:1px solid rgba(0,0,0,0.1);
  border-right:1px solid #fff;
  pointer-events:none;
}

.select:after,x:-moz-any-link{
  display:none
}

.select select,x:-moz-any-link{
  padding:8px 7px 7px 6px
}

.select select::-ms-expand {
  display: none;
}

/*select css  */

</style>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">		
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

</head>
<body>
	
<div class="panel regPanel">
	아이디: <input type="text"  class="w3-input" id="id"> <button id="checkBtn" class="w3-btn w3-white w3-border w3-round-large" required>중복체크</button><br/>
    		<div id="idCheck"></div><br>
    비밀번호 : <input type="password"  class="w3-input" id="pw" required><br/>
    비밀번호 확인: <input type="password"  class="w3-input" id="pwCheck" required><br/>
    		<div id="pwcheckDiv"></div><br>
    <input type="checkbox" name="child" id="m" value="남자"><label for="m">남자</LABEL>
    <input type="checkbox" name="child" id="f" value="여자"><label for="f">여자</LABEL> <br>

	  <span class="select " >
		    <select name="location" onclick="return false;" id="location" >
		        <option value="강서구">강서구</option>
		        <option value="서초구">서초구</option>
		        <option value="강동구">강동구</option>
		        <option value="강남구">강남구</option>
		    </select>

	    </span> 
	    
	    <span class="select ">
 			<select name="time" onclick="return false;" id="time">
	       		 <option value="6">6시</option>
	       		 <option value="9">9시</option>
	       		 <option value="-1">알림 허용 안함.</option>
   			 </select> 
   		 </span>
	
    <br>
    <button class="w3-btn w3-white w3-border w3-round-large" id="saveBtn">등록</button>
</div>



<script
        src="https://code.jquery.com/jquery-3.2.1.min.js"
        integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
        crossorigin="anonymous"></script>
        
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
    function createData(data, callback){
        var member = data;
        firebase.database().ref("member/" + member.id).set(member);
          location.href='/member/loginhome';  
    }
    
    $("#saveBtn").on("click", function () {
    	
    	var chk = document.getElementsByName("child");
    	console.dir(chk);
    	for (var i = 0; i < chk.length; i++) {
			if (chk[i].checked == true) {
				chkv = chk[i].value;
			}
		}
    	
        var member = {id: $("#id").val(), pw:$("#pw").val(), child :chkv, location: $("#location").val() , time:$("#time").val()};
        createData(member);
    });

    $("#checkBtn").click(function () {
        var member = firebase.database().ref().child("/member");
        var id = $("#id").val();

        member.on("value", function (e) {
            var list = e.val();
            for(keyStr in list){
                if(keyStr == id) {
                	$("#idCheck").html("이미 존재하는 아이디 입니다.");
                }else{
                	$("#idCheck").html("사용 가능한 아이디 입니다.");
                }
            }
        });
    });

    
    $("#pwCheck").on("keyup", function() {
		var $pw = $("#pw").val();
		var $pwCheck = $("#pwCheck").val();

		if ($pw != $pwCheck) {
	
			$("#pwcheckDiv").html("비밀번호와 불일치");
		} else {
			$("#pwcheckDiv").html("비밀번호와 일치");
		}
		if ($pwCheck == "") {
			$("#pwcheckDiv").html("");
		}
	});
    
    
    
    
    /* function readAllData(){
        var memberList = firebase.database().ref().child("/member");
        memberList.on("value", function (snapshot) {

            var listData = snapshot.val();

            var html ="";
            for (keyStr in listData) {
                //console.log("=====" + keyStr);
                //console.log(readEach(keyStr));
            }
            $(".listUL").html(html);
        });
    }

    function readEach(keyStr){
        var data = firebase.database().ref("/memo/" + keyStr);
        data.on('value', function(snapshot){
            console.log(snapshot.val());
            var chk = snapshot.val();
        });
    }
    readAllData();
    */
    
</script>

</body>
</html>