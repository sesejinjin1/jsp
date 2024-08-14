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
                <a href="main.jsp">세세진진</a> <!-- 홈 링크 추가 -->
            </div>
            <nav>
                <ul class="nav-menu">
                    <li class="nav-item dropdown">
                        <a href="#">메뉴1</a>
                        <ul class="dropdown-menu">
                            <li><a href="#">서브 메뉴 1</a></li>
                            <li><a href="#">서브 메뉴 2</a></li>
                            <li><a href="#">서브 메뉴 3</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a href="#">메뉴2</a>
                        <ul class="dropdown-menu">
                            <li><a href="#">서브 메뉴 1</a></li>
                            <li><a href="#">서브 메뉴 2</a></li>
                            <li><a href="#">서브 메뉴 3</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a href="#">메뉴3</a>
                        <ul class="dropdown-menu">
                            <li><a href="#">서브 메뉴 1</a></li>
                            <li><a href="#">서브 메뉴 2</a></li>
                            <li><a href="#">서브 메뉴 3</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a href="#">메뉴4</a>
                        <ul class="dropdown-menu">
                            <li><a href="#">서브 메뉴 1</a></li>
                            <li><a href="#">서브 메뉴 2</a></li>
                            <li><a href="#">서브 메뉴 3</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
    </header>

    <main class="container">
        <div class="top-section">
        <h2 style="text-align: center;">회원 로그인</h2>
						<form id="loginForm" action="loginAction.jsp" method="post" style="text-align: center;">
                            <fieldset style="width: 80%; margin-left: 10%;">	<legend>회원 로그인</legend>		
                                   <div class="inbox">
									<p><label for="userId">아이디</label><input id="userId" name="userId" style="ime-mode: disabled;" placeholder="아이디" autofocus="autofocus" type="text" value="" maxlength="30"/></p>
									<p><label for="userPwd">비밀번호</label><input id="userPwd" name="userPwd" placeholder="비밀번호" type="password" value="" maxlength="30"/></p>
									<p><button type="submit">로그인</button>
									</p>
								</div>
					    	</fieldset>
                        </form>
                    <div style="text-align: center;">
                        <p class="link_box">
						    <a href="#">회원가입</a>
						    <a href="#">아이디찾기</a>
						    <a href="#">비밀번호찾기</a>
						</p>
                    </div>
        </div>
						
    </main>

    <footer>
        <p>&copy; 세세진진 사이트.</p>
    </footer>
</body>
</html>
