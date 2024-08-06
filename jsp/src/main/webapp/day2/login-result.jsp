<%@page import="java.awt.Checkbox"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
	<%@include file="db2.jsp"%>	
	<%
		ResultSet rs = null;
		Statement stmt = null;
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		try{
			stmt = conn.createStatement();
			String querytext = 
					"SELECT * FROM TBL_USER "
					+ "WHERE userId = '" + id + "' "
					+ "AND pwd = '" + pwd + "'";
			System.out.println(querytext);
			rs = stmt.executeQuery(querytext);
			if(rs.next()){
				out.println("로그인 성공!");
				session.setAttribute("userId", rs.getString("userId"));
				response.sendRedirect("board2.jsp");
			} else {
				out.println("로그인 실패!");
			}
		
		} catch(SQLException ex) {
			out.println("SQLException : " + ex.getMessage());
		}
	%>

</body>
</html>