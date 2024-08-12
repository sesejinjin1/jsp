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
#GNB aside.top .align_box {
    position: relative;
    max-width: 1280px;
    margin: 0 auto;
}
#GNB aside.top .align_box nav ul	{ float: right; }
#GNB aside.top .align_box nav ul li	{ float: left; padding: 0; margin: 0; list-style: none; }
#GNB aside.top .align_box nav ul li + li	{ position: relative; padding-left: 30px; }
#GNB aside.top .align_box nav ul li a	{ display: block; line-height: 45px; padding-left: 29px; background: no-repeat left center; color: #1b1b1b; font-size: 16px; }
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
					<aside class="top">
						<div class="align_box">
							<nav>
								<ul>
									<li><a href="login.jsp"><span>로그인</span></a></li>
									<li><a href="join.jsp"><span>회원가입</span></a></li>
									<li><a href="#"><span>ㅁㅁㅁ</span></a></li>
								</ul>
							</nav>	
						</div>
					</aside>
					<div id="topmenu">
						<nav>
							<ul>
								<li><a>hi1</a></li>
								<li><a>hi2</a></li>
								<li><a>hi3</a></li>
							</ul>
						</nav>
					</div>
				</div>
			</header>
		</div>
		<div id="container">컨테ㅔㅔㅔㅔㅔ</div>
		<footer id="footer"> 푸터ㅓㅓㅓㅓㅓ </footer>
	</div>
</body>
</html>