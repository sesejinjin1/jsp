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
			<form id="login" action="#" method="post"><fieldset>
								<legend>회원 로그인</legend>
								<div class="inbox">
									<p><label for="user_id">아이디 </label><input id="userId" name="userId" placeholder="아이디" autofocus="autofocus" type="text" value="" maxlength="30"/></p>
									<p><label for="user_password">비밀번호 </label><input id="userPwd" name="userPwd" placeholder="비밀번호" type="password" value="" maxlength="30"/></p>
									<p><button type="submit">로그인</button></p>
								</div>
			</fieldset></form>
		</div>
		<footer id="footer"> 푸터ㅓㅓㅓㅓㅓ </footer>
	</div>
</body>
</html>