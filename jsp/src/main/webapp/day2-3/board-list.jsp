<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>

<style>
	table, th,  tr,  td{
	 border : 1px solid black ;
	 border-collapse: collapse;
	 padding: 10px;
	}
	a:visited, a:link{
		color : black;
		text-decoration: none;
		font-weight : bold;
	}
	.pagination {
		margin: 20px 0;
	}
	.pagination a {
		padding: 5px 10px;
		margin: 0 2px;
		border: 1px solid black;
		text-decoration: none;
	}
	.pagination a.active {
		background-color: #ccc;
	}
</style>

</head>
<body>
	<div><button onclick="location.href='login.jsp'">로그아웃</button></div>
	<%@include file="db.jsp"%>	

	<%
	int pageSize = 10;
	int currentPage = 1;
	if (request.getParameter("page") != null) {
		currentPage = Integer.parseInt(request.getParameter("page"));
	}
	int offset = (currentPage - 1) * pageSize;
	
	ResultSet rs = null;
	Statement stmt = null;
	try {
		stmt = conn.createStatement();
		String countQuery = "SELECT COUNT(*) AS total FROM tbl_board";
		ResultSet coun_rs = stmt.executeQuery(countQuery);
		int total = 0;
		if (coun_rs.next()) {
			total = coun_rs.getInt("total");
		}
		coun_rs.close();
		int totalPages = (int) Math.ceil((double) total / pageSize);
		String querytext = "WITH RankedPosts AS (SELECT B.boardNo,title,B.cnt,cdatetime,NAME,COALESCE(C.commentCnt, 0) AS commentCnt,B.userId,ROW_NUMBER() OVER (ORDER BY cdatetime ASC) AS rowNum FROM tbl_board B INNER JOIN tbl_user U ON B.userId = U.userId LEFT JOIN (SELECT boardNo, COUNT(*) AS commentCnt FROM tbl_comment GROUP BY boardNo) C ON B.boardNo = C.boardNo)SELECT *FROM RankedPosts ORDER BY rowNum DESC LIMIT "+pageSize+" OFFSET "+ offset;
		System.out.println(querytext);
		rs = stmt.executeQuery(querytext);
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
			<td> <%= rs.getString("rowNum") %></td>
			<td> 
				<a href="#" onclick="fnView('<%= rs.getString("boardNo") %>')">
					<%= rs.getString("title") %> <%= commentCnt %>
				</a>
			</td>
			<td> <a href="javascript:;" onclick="fnInfo('<%= rs.getString("userId") %>')"> <%= rs.getString("name") %></a></td>
			<td> <%= rs.getString("cnt") %></td>
			<td> <%= rs.getString("cdatetime") %></td>
		</tr>
	<%
	}
	%>
	
	</table>
	<button onclick="location.href='insert.jsp'">글쓰기</button>

	<!-- 페이지 네비게이션 -->
	<div class="pagination">
		<%
		if (currentPage > 1) {
			int prevPage = currentPage - 1;
			out.print("<a href=?page=" + prevPage + ">이전</a>");
		}
		for (int i = 1; i <= totalPages; i++) {
			if (i == currentPage) {
				out.print("<a href=?page=" + i + " class=active>" + i + "</a>");
			} else {
				out.print("<a href=?page=" + i + ">" + i + "</a>");
			}
		}
		if (currentPage < totalPages) {
			int nextPage = currentPage + 1;
			System.out.println("<a href=?page=" + nextPage + ">다음</a>");
			out.print("<a href=?page=" + nextPage + ">다음</a>");
		}
		%>
	</div>

	<%
	} catch(SQLException ex) {
		out.println("SQLException : " + ex.getMessage());
	}
	%>

</body>
</html>

<script>
	function fnView(boardNo){
		location.href="board-view.jsp?boardNo="+boardNo;
	}
	
	function fnInfo(userId){
		location.href="user-info.jsp?userId="+userId;
	}
</script>