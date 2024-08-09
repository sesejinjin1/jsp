<%@page import="java.security.spec.RSAKeyGenParameterSpec"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="db.jsp"%>	
	<%
		ResultSet rs = null;
		Statement stmt = null;
		String userId = request.getParameter("userId");
		try{
			stmt = conn.createStatement();
			String querytext = "SELECT userId , NAME , status FROM tbl_user WHERE userId ='" + userId + "'"; 
			rs = stmt.executeQuery(querytext);
			System.out.println(querytext);
			
			if(rs.next()){
				%>
				<div>아이디 : <%=rs.getString("userId")%></div>
				<div>이름 : <%=rs.getString("name")%></div>
				<div>사용자 권한 : <%=rs.getString("status")%></div>
			
			<%}else {
				out.println("삭제된 아이디");
			}
			
		} catch(SQLException ex) {
			out.println("SQLException : " + ex.getMessage());
		}
	%>
</body>
</html>