<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main</title>
<style>
#body {
	width: 1200px;
	height: 1300px
}

#header {
	width: 100%;
	border-bottom: 1px solid #ddd;
	background-color: #fff;
}

#header h1 {
	padding: 10px;
	margin: 0;
	font-weight: bold;
	font-size: 25px;
}

#container {
	width: 100%;
	height: 100%
}

#footer { width: 100%; height: 50px; padding: 10px; border-top: 1px solid #ddd; background-color: #fff;}
#header header #GNB	{}


</style>
</head>
<body>
	<div id="body">
		<div id="header">
			<header>
				<h1>
					<a href="main.jsp"><span>홈페이지</span></a>
				</h1>
				<p class="slogan">홈페이지에 오신것을 환영합니다.</p>
				<div id="GNB">
					<aside>
						<div>
							<nav>
								<ul>
									<li><a href="login.jsp"><span>로그인</span></a></li>
									<li><a href="join.jsp"><span>회원가입</span></a></li>
									<li><a href="#"><span>ㅁㅁㅁ</span></a></li>
								</ul>
							</nav>
						</div>
					</aside>
					<div id="tommenu">
						<nav>
							<ul>
								<li><a>hi</a></li>
								<li><a>hi</a></li>
								<li><a>hi</a></li>
							</ul>
						</nav>
					</div>
				</div>
			</header>
		</div>
		<div id="container">컨테ㅔㅔㅔㅔㅔ
			<form id="login" action="#"><fieldset>
								<legend>회원 가입</legend>
								<div class="inbox">
									<p><label for="userId">아이디 </label><input id="userId" name="userId" placeholder="아이디" autofocus="autofocus" type="text" value="" maxlength="30"/></p>
									<p><label for="userPwd">비밀번호 </label><input id="userPwd" name="userPwd" placeholder="비밀번호" type="password" value="" maxlength="30"></p>
									<p><label for="userName">이름 </label><input id="userName" name="userName" placeholder="이름" type="text" value="" maxlength="30"></p>
									<p><label for="userJumin1">주민등록번호 </label><input id="userJumin1" name="userJumin1" placeholder="앞자리 6자리" type="text" value="" maxlength="6">
									<label for="userJumin2">- </label><input id="userJumin2" name="userJumin2" placeholder="뒷자리 7자리" type="text" value="" maxlength="7"></p>
									<p><label for="userPhone">휴대폰번호 <input id="userPhone" name="userPhone" placeholder="핸드폰 번호" type="text" value="" maxlength="30"></label></p>
									<p>성별 : <label>남 <input type="radio" name="userGender" value="M"></label>
				 							 <label>여 <input type="radio" name="userGender" value="F"></label>
				 					<p>이메일 : <input id="userEmail" name="userEmail" placeholder="이메일주소" type="email" value="" maxlength="30"></p>
									<p><button type="submit">회원가입</button></p>
								</div>
			</fieldset></form>
		</div>
		<footer id="footer"> 푸터ㅓㅓㅓㅓㅓ </footer>
	</div>
</body>
</html>