<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>미니프로젝트</title>
    <link rel="stylesheet" href="test.css">
</head>
<body>
    <header>
        <!-- 헤더 내용 -->
    </header>

    <main class="container">
        <div class="top-section">
            <h2 style="text-align: center;">회원 로그인</h2>
            <form id="loginForm" action="loginAction.jsp" method="post">
                <fieldset>
                    <legend>회원 로그인</legend>
                    <div class="inbox">
                        <p>
                            <label for="userId">아이디</label>
                            <input id="userId" name="userId" placeholder="아이디" type="text" maxlength="30" />
                        </p>
                        <p>
                            <label for="userPwd">비밀번호</label>
                            <input id="userPwd" name="userPwd" placeholder="비밀번호" type="password" maxlength="30" />
                        </p>
                        <p>
                            <button type="submit">로그인</button>
                        </p>
                    </div>
                </fieldset>
            </form>
            <div class="link_box">
                <a href="#">회원가입</a>
                <a href="#">아이디찾기</a>
                <a href="#">비밀번호찾기</a>
            </div>
        </div>
    </main>

    <footer>
        <p>&copy; 세세진진 사이트.</p>
    </footer>
</body>
</html>