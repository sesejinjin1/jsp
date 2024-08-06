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
	
</style>

</head>
<body>
	<%@include file="db.jsp"%>	
	<%
		String stuNo = request.getParameter("stuNo");
		ResultSet rs = null;
		Statement stmt = null;
		
		try{
			stmt = conn.createStatement();
			// SELECT * FROM STUDENT WHERE STU_NO = '20153075';
			String query = "SELECT * FROM STUDENT WHERE STU_NO = '" + stuNo + "'";
			rs = stmt.executeQuery(query);
			
			if(rs.next()) {
				out.println(
						rs.getString("STU_NO") + "<br>" 
						+ rs.getString("STU_NAME") + "<br>"
						+ rs.getString("STU_DEPT") + "<br>"
						+ rs.getString("STU_GENDER") + "<br>"); 
			} else {
				out.println("없음");
			}
	
		} catch(SQLException ex) {
			out.println("SQLException : " + ex.getMessage());
		}
	%>

</body>
</html>