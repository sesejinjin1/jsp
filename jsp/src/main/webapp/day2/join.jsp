<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="join-insert.jsp" name="user">
		<div>
			아이디 : <input type="text" name="userId">
			<button type="button" onclick="fnCheck()"> 중복체크 </button>
		</div>
		<div>
			패스워드 : <input type="password" name="pwd">
		</div>
		<div>
			이름 : <input type="text" name="userName">
		</div>
		<div>
			전화번호 : <input type="text" name="userPh">
		</div>
		<div>
			성별 : 남<input type="radio" name="userGen" value="M">
				 여 <input type="radio" name="userGen" value="F">
		</div>
		
		<button>폼 액션 저장</button>
		<button onclick="fnSave()" type="button">함수를 이용한 저장</button>
		<button onclick="fnSubmit()" type="button">action 수정 후 submit</button>
		<button onclick="fuSubmit2()" type="button">복습 !!</button>
	</form>
</body>
</html>
<script>
	function fnSave() {
		var form = document.user;
		console.log(form.userId.value);
		
	location.href= "join-insert.jsp?userId=" + form.userId.value + "&pwd=" + form.pwd.value + "&userName=" +form.userName.value;
	}
	function fnSubmit(){
		var form = document.user;
		form.action = "join-insert2.jsp";
		form.submit();
	}
	function fuSubmit2(){
		var form = document.user;
		form.action ="join-insert3.jsp";
		form.submit();
	}
	function fnCheck(){
		var form = document.user;
		location.href="id-check.jsp?userId=" +form.userId.value;
		
		
	}
	
</script>