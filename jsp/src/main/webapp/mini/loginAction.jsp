<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form id="login" action="#" method="post"><fieldset>
								<legend>회원 로그인</legend>
								<div class="inbox">
									<p>
										<label for="user_id">아이디</label><input id="userId" name="userId" placeholder="아이디" autofocus="autofocus" type="text" value="" maxlength="30"/></p>
									<p>
										<label for="user_password">비밀번호</label><input id="userPwd" name="userPwd" placeholder="비밀번호" type="password" value="" maxlength="30"/></p>
									<p>
										<button type="submit">로그인</button>
									</p>
								</div>
							</fieldset>
						</form>
</body>
</html>