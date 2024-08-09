<%@page import="java.awt.Checkbox"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*" %>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
	<sql:query var="result" dataSource="${dataSource}">
	 		SELECT * FROM tbl_user WHERE userId = ? AND pwd = ?
	 		<sql:param value="${param.id}"/>
	 		<sql:param value="${param.pwd}"/>
	</sql:query>
	
	${result.rows[0]}<br>
	${result.rows}<br>
	${result}<br>
	${result.rows[0].name}<br>
	${result.rows[0].cnt}<br>
	${result.rows[0].pwd}<br>
	<c:choose>
		<c:when test="${result.rows[0] != null}">
			<div>로그인성공</div>
		</c:when>
		<c:otherwise>
			<div>로그인 실패</div>
		</c:otherwise>
	</c:choose>
	
	<div>
		<button onclick="location.href='login.jsp'">로그인 페이지로 이동</button>
	</div>
</body>
</html>