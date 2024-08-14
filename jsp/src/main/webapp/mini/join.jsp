<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>미니프로젝트</title>
<link rel="stylesheet" href="styles.css">
</head>
<body>
	<header>
		<div class="top-bar">
            <div class="actions">
            	<%if((String)session.getAttribute("userId") != null){ %>
            	<p> <%= (String)session.getAttribute("userId") %> 님 환영합니다.</p>
            	<a href="logoutAction.jsp" class="logout">로그아웃</a>
            	<%} else{%>
                <a href="login.jsp" class="login">로그인</a>
                <a href="join.jsp" class="signup">회원가입</a>
                <%}  %>
            </div>
        </div>
		<div class="main-header container">
			<div class="logo">
				<a href="main.jsp">세세진진</a>
				<!-- 홈 링크 추가 -->
			</div>
			<nav>
				<ul class="nav-menu">
					<li class="nav-item dropdown"><a href="#">메뉴1</a>
						<ul class="dropdown-menu">
							<li><a href="#">서브 메뉴 1</a></li>
							<li><a href="#">서브 메뉴 2</a></li>
							<li><a href="#">서브 메뉴 3</a></li>
						</ul></li>
					<li class="nav-item dropdown"><a href="#">메뉴2</a>
						<ul class="dropdown-menu">
							<li><a href="#">서브 메뉴 1</a></li>
							<li><a href="#">서브 메뉴 2</a></li>
							<li><a href="#">서브 메뉴 3</a></li>
						</ul></li>
					<li class="nav-item dropdown"><a href="#">메뉴3</a>
						<ul class="dropdown-menu">
							<li><a href="#">서브 메뉴 1</a></li>
							<li><a href="#">서브 메뉴 2</a></li>
							<li><a href="#">서브 메뉴 3</a></li>
						</ul></li>
					<li class="nav-item dropdown"><a href="#">메뉴4</a>
						<ul class="dropdown-menu">
							<li><a href="#">서브 메뉴 1</a></li>
							<li><a href="#">서브 메뉴 2</a></li>
							<li><a href="#">서브 메뉴 3</a></li>
						</ul></li>
				</ul>
			</nav>
		</div>
	</header>

	<main class="container">
		<div class="top-section">
			<h2 style="text-align: center;">회원 가입</h2>
			<form id="joinForm" action="joinAction.jsp" method="post"
				style="text-align: center;">
				<fieldset style="width: 80%; margin-left: 10%;">
					<legend>회원 가입</legend>
					<div class="inbox">
						<p>
							<label for="userId">아이디 </label><input id="userId" name="userId"
								style="ime-mode: disabled;" placeholder="아이디"
								autofocus="autofocus" type="text" value="" maxlength="30" />
							<button type="button">중복확인</button>
						</p>
						<p>
							<label for="userPwd">비밀번호 </label><input id="userPwd"
								name="userPwd" placeholder="비밀번호" type="password" value=""
								maxlength="30" />
						</p>
						<p>
							<label for="userPwd">비밀번호 확인 </label><input id="userPwd2"
								name="userPwd2" placeholder="비밀번호 확인" type="password" value=""
								maxlength="30" />
						</p>
						<p>
							<label for="userPwd">이름 </label><input id="userName"
								name="userName" placeholder="이름" type="text" value=""
								maxlength="30" />
						</p>
						<p>
							<label for="userJumin1">주민등록번호 </label><input id="userJumin1"
								name="userJumin1" placeholder="앞 6자리" type="text" value=""
								maxlength="6" /> - <label><input id="userJumin2"
								name="userJumin2" placeholder="뒤 7자리" type="text" value=""
								maxlength="7" />
						</p>
						<p>
							<label for="userPhone">핸드폰 번호 </label><input id="userPhone"
								name="userPhone" placeholder="- 제외하고 입력해주세요" type="text"
								value="" maxlength="11" />
						</p>
						<p>
							<label for="userEmail">이메일 주소 </label><input id="userEmail1"
								name="userEmail1" placeholder="이메일 주소" type="text" value=""
								maxlength="30" /> @ <label for="userEmail2"></label><input
								id="userEmail2" name="userEmail2" placeholder="이메일 주소"
								type="text" value="" maxlength="30" />
						</p>
						<p>
							성별 : <label>남 <input type="radio" name="userGender"
								value="M"></label> <label>여 <input type="radio"
								name="userGender" value="F"></label>
						</p>
						<p>
							<button type="submit">회원가입</button>
							<button type="reset">다시입력</button>
						</p>
					</div>
				</fieldset>
			</form>
		</div>

	</main>

	<footer>
		<p>&copy; 세세진진 사이트.</p>
	</footer>
</body>
</html>
