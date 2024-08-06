<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="board-delete.jsp">
		<%@include file="db2.jsp"%>
		<%
		ResultSet rs = null;
		Statement stmt = null;
		String boardNo = request.getParameter("boardNo");

		try {
			stmt = conn.createStatement();
			String querytext = "SELECT * FROM TBL_BOARD WHERE BOARDNO = " + boardNo;
			rs = stmt.executeQuery(querytext);

			if (rs.next()) {
		%>
		<input type="hidden" value="<%=rs.getString("boardNo")%>"
			name="boardNo">
		<div>
			제목 :
			<%=rs.getString("title")%></div>
		<div>
			내용 :
			<%=rs.getString("contents")%></div>
		<button type="submit">삭제</button>
		<button type="button" onclick="fnMo('<%=rs.getString("boardNo")%> ')">수정</button>
		<%
		} else {
		out.println("삭제된 게시글 입니다.");
		}
		} catch (SQLException ex) {
		out.println("SQLException : " + ex.getMessage());
		}
		%>
	</form>
</body>
</html>
<script>

//	function fnUpdate(){
//		var form = document.board;
//		form.action = "board-update.jsp";
//		form.submit();
//	}
	function fnMo(boardNo){
		location.href="update.jsp?boardNo=" +boardNo;
	}
</script>