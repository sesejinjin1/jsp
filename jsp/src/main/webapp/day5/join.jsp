<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="" name = "userForm" method="post">
		<div>아이디 : <input type="text" name="userId"><input type="button" onclick="idCheck();" value="중복체크"></div>
		<div><input type="button" onclick="userJoin()" value="회원가입"></div>
	</form>
</body>
</html>
<script>
	var check1 = false; // 아이디 중복체크 확인 여부
	var check2 = false; // 중복 여부
	function userJoin(){
		// check2가 true일 때, 즉 중복체크 결과 Y넘어 왔을때만 
		// 회원가입 되도록
		if(!check2){
			alert("아이디 중복체크 하셈");
		}
	}
	// 중복체크 확인 팝업
	function idCheck(){
		check1 = true;
		var form = document.userForm;
		if(form.userId.value =="" || form.userId.value.length < 0){
			alert("아이디를 먼저 입력해주세요")
			form.uId.focus();
		}else{
			window.open("idCheck.jsp?userId="+form.userId.value, "check","width=500, height=300");
		}
	}
	// 중복체크 리턴 결과
	function getReturn(val){
		if(val == "Y"){
			check2 = true;
		} else {
			check2 = false;
		}
	}
</script>