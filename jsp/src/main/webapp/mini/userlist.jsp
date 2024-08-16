<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>미니프로젝트</title>
<link rel="stylesheet" href="styles.css">

<style>
	table, th,  tr,  td{
	 border : 1px solid black ;
	 border-collapse: collapse;
	 padding: 10px;
	}

}
	
</style>
</head>
<body>
	<header>
		<div class="top-bar">
            <div class="actions">
            	<%if((String)session.getAttribute("userId") != null){ %>
            	<p> <%= (String)session.getAttribute("userId") %> 님 환영합니다.</p>
            		<%if(session.getAttribute("status").equals("A")){ %>
            			<a href="userlist.jsp" class="logout">회원목록</a>
            			<%} %>
            			
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
		<%if(session.getAttribute("status").equals("A")){ %>
			<h2 style="text-align: center;">회원 목록</h2>
					<div>
						<table style="margin-top : 20px; ">
							<tr>
								<th>아이디</th>
								<th>비밀번호</th>
								<th>이름</th>
								<th>주민등록번호</th>
								<th>연락처</th>
								<th>성별</th>
								<th>이메일주소</th>
								<th>권한</th>
								<td>정보수정</td>
								<td>회원삭제</td>
								<th>로그인 초기화</th>
								
							</tr>
						<%@ include file="db.jsp" %>
						<%
							ResultSet rs = null;
							Statement stmt = null;
							try{
								stmt = conn.createStatement();
								String query = "SELECT * FROM mini_user";
								rs = stmt.executeQuery(query);
								System.out.println(query);
								while(rs.next()){
									String status = rs.getString("status").equals("A") ? "관리자" : "일반회원";
									
								%>
								
								<tr>
									<td><%= rs.getString("userId") %></td>
									<td><%= rs.getString("userPwd") %></td>
									<td><%= rs.getString("userName") %></td>
									<td><%= rs.getString("userJumin1") %> - <%= rs.getString("userJumin2") %></td>
									<td><%= rs.getString("userPhone") %></td>
									<td><%= rs.getString("userGender") %></td>
									<td><%= rs.getString("userEmail") %></td>
									<td><%= status %></td>
									<td><a href="#" class="updateUser" style="color: black; text-decoration: none; font-size: 15px; font-weight: bold;">수정하기</a></td>
									<td><a href="#" class="deleteUser">삭제하기</a></td>
										<%	if(rs.getInt("cnt")>=5){ %>	
												<td>								
												<button onclick="fnReset('<%= rs.getString("userId") %>')">초기화</button>
												</td>
										<% } %>
		
									
								</tr>
							
						<%	}	
							}catch(SQLException ex){
								out.println("SQLException : " + ex.getMessage());
							}
							
						
						%>
							
							
						</table>
					</div>
					<%}else{
						PrintWriter script = response.getWriter();
						script.println("<script>");
						script.println("alert('관리자만 접근 가능합니다!')");
						script.println("history.back()");
						script.println("</script>");
					}%>
						
					
		</div>

	</main>

	<footer>
		<p>&copy; 세세진진 사이트.</p>
	</footer>
</body>
</html>
<script>
	function fnReset(userId){
		if(!confirm("초기화 하시겠습니까?")){
		    alert("취소 되었습니다.");
		    location.reload();
		}else{
		    location.href="pwd-reset.jsp?userId=" +userId ;
		}
	}

</script>
