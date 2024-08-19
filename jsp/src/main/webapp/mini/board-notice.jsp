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
.login-form {width: 100%;}
.login-form fieldset {border: none;padding: 0;margin: 0;}
.login-form legend {font-size: 1.2em;color: #007BFF;margin-bottom: 15px;}
.form-group {margin-bottom: 15px;}
.form-group label {display: block;margin-bottom: 5px;color: #333;}
.form-group input {width: 100%;padding: 10px;border: 1px solid #ccc;border-radius: 5px;font-size: 16px;box-sizing: border-box;}
.form-group button {width: 100%;padding: 10px;border: none;border-radius: 5px;background-color: #007BFF;color: white;font-size: 16px;cursor: pointer;}
.form-group button:hover {background-color: #0056b3;}
.link_box {margin-top: 20px;text-align: center;}
.link_box a {color: #007BFF;text-decoration: none;margin: 0 10px;font-size: 16px;}
.link_box a:hover {text-decoration: underline;}

    
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
				<%@include file="db.jsp"%>	
				<%
				ResultSet rs = null;
				Statement stmt = null;
				System.out.println(session.getAttribute("userId"));
				try{
					stmt = conn.createStatement();
					String query = 
							  "SELECT B.boardNo, title, B.cnt, cdatetime, userName, commentCnt, B.userId "
							+ "FROM board_notice B "
							+ "INNER JOIN mini_user U ON B.userId = U.userId "
							+ "LEFT JOIN ( "
							+ 	"SELECT COUNT(*) AS commentCnt, boardNo "
							+	"FROM board_comment "
							+	"GROUP BY boardNo "
							+ ") C ON B.boardNo = C.boardNo";
					rs = stmt.executeQuery(query);
					System.out.println(query);
				%>
					<table>
					<tr>
						<th> 번호 </th>
						<th> 제목 </th>
						<th> 작성자 </th>
						<th> 조회수 </th>
						<th> 작성일 </th>
					</tr>			
				<%
				while (rs.next()) {
					String commentCnt = "";
					if(rs.getString("commentCnt") != null){
						commentCnt = "(" + rs.getString("commentCnt") + ")";
					} 
				%>
					<tr>
						<td> <%= rs.getString("boardNo") %></td>
						<td> 
							<a href="#" onclick="fnView('<%= rs.getString("boardNo") %>')">
								<%= rs.getString("title") %> <%= commentCnt %>
							</a>
						</td>
						<td>						
						 		<%= rs.getString("userName") %>
						 </td>
						<td> <%= rs.getString("cnt") %></td>
						<td> <%= rs.getString("cdatetime") %></td>
					</tr>
				<%
				}
				%>
				
				</table>
				<button onclick="location.href='board-noticeIn.jsp'">글쓰기</button>
				<%
				} catch(SQLException ex) {
					out.println("SQLException : " + ex.getMessage());
				}
				%>
									
                   
        </div>
						
    </main>

    <footer>
        <p>&copy; 세세진진 사이트.</p>
    </footer>
</body>
</html>
<script>
	function fnView(boardNo){
		location.href="board-noticeView.jsp?boardNo="+boardNo;
	}
</script>
