<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="mini.UserDAO"%>
<%@ page import="java.io.PrintWriter"%>
<jsp:useBean id="user" class="mini.User" scope="page" />
<jsp:setProperty name="user" property="userId" />
<jsp:setProperty name="user" property="userPwd" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		UserDAO userDAO = new UserDAO();
		userDAO.login(user.getUserId(),user.getUserPwd());
	%>
</body>
</html>