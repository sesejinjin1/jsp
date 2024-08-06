<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="db2.jsp" %>
	<%
		String title = request.getParameter("title");
		String contents = request.getParameter("contents");
		
		ResultSet rs = null;
		Statement stmt = null;
		
		try{
			stmt = conn.createStatement();
			String query = "insert into tbl_board values"
			+ "("
			+"NULL, '" + title + "', '" + contents
			+ "', 0, ' user1', 'number', now(),now() " +
			")";
			stmt.executeUpdate(query);
			
			response.sendRedirect("board2.jsp");
		}catch(SQLException ex) {
			out.println("SQLException : " + ex.getMessage());
		}
		
	%>
</body>
</html>