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
					<form action="board-delete.jsp" name="board">
						<%@include file="db.jsp"%>	
						<%
							ResultSet rs = null;
							Statement stmt = null;
							String boardNo = request.getParameter("boardNo");
							try{
								stmt = conn.createStatement();
								String querytext = "SELECT * FROM board_notice WHERE BOARDNO = " + boardNo;
								rs = stmt.executeQuery(querytext);
								if(rs.next()){
						%>	
									<input  type="hidden" 
											value="<%= rs.getString("boardNo") %>" 
											name="boardNo"> 
									<div>제목 : <%= rs.getString("title") %></div>
									<div>내용 : <%= rs.getString("contents") %></div>
									
							<%
								if(session.getAttribute("userId").equals("admin")){
							%>
									<button type="button" onclick="fnDelete()">삭제</button>
									<button type="button" onclick="fnUpdate()">수정</button>
							<%
								}else{}
							%>			
									<hr>
									<div>댓글 : 
										<input class="comment" type="text" placeholder="댓글을 등록하세요." name="comment">
										<button type="button" onclick="fnComment()">등록</button>
									</div>
								<%
									querytext = "SELECT * FROM board_comment WHERE BOARDNO = " + boardNo;
									rs = stmt.executeQuery(querytext);
									while(rs.next()){
								%>
										<div> <%= rs.getString("userId") %> : <%= rs.getString("comment") %> </div>
										<button type="button">수정</button>
										<button type="button">삭제</button>
								<%	} %>		
									
								<%			
										} else {
											out.println("삭제된 게시글 입니다.");
										}
										
									} catch(SQLException ex) {
										out.println("SQLException : " + ex.getMessage());
									}
								%>
					</form>	    
        </div>
						
    </main>

    <footer>
        <p>&copy; 세세진진 사이트.</p>
    </footer>
</body>
</html>
<script>

	function fnUpdate(){
		var form = document.board;
		form.action = "board-update.jsp";
		form.submit();
	}
	
	function fnComment(){
		var form = document.board;
		console.log(form.boardNo.value);
		var url = "comment-insert.jsp?boardNo="+ form.boardNo.value + "&comment=" + form.comment.value;
		window.open(url , "reset", "width=500, height=500");
	}
	
	function fnReload(){
		location.reload();
	}
	function fnCommentDel(commentNo){
		var form = document.board;
		location.href = "comment-delete.jsp?commentNo = " + commentNo;
		
	}
	function fnDelete(){
		if(!confirm("삭제 하시겠습니까?")){
		    alert("취소 되었습니다.");
		    location.reload();
		}else{
		var form = document.board;
		form.action = "board-delete.jsp";
		form.submit();
		}
	}
</script>