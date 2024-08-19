<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>미니프로젝트</title>
    <link rel="stylesheet" href="styles.css">
    <style>
    

.login-container {margin-top: 20%;}
.login-container h2 {margin-bottom: 20px;font-size: 24px;text-align: center;color: #333;}
</style>
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
        <div class="login-container">
        <h2>공지사항</h2>
					<form action="board-noticeInAction.jsp" name="board">
						<div>
							<label>제목 : <input type="text" name="title"></label>
						</div>
						<div>
							<label>내용 : <textarea cols="50" rows="10" name="contents"></textarea></label>
						</div>
						<div>
							<button type="button" onclick="fnCheck()">저장</button>
							<!-- <input type="button"> -->
						</div>
					</form>			    
        </div>
						
    </main>

    <footer>
        <p>&copy; 세세진진 사이트.</p>
    </footer>
</body>
</html>
<script>
	function fnCheck(){
		var form = document.board;
		if(form.title.value == ""){
			alert("제목을 입력해주세요.");
			form.title.focus();
			return;
		}	
		if(form.contents.value == ""){
			alert("내용을 입력해주세요.");
			form.contents.focus();
			return;
		}
		
		alert("저장되었습니다.");
		form.submit();
		
	}
</script>