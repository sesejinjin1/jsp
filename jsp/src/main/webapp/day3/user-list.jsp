<%@page import="java.awt.Checkbox"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
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
    <div><button onclick="location.href='login.jsp'">로그아웃</button></div>
    <%@ include file="db2.jsp" %>
    <sql:query var="result" dataSource="${dataSource}">
       SELECT * FROM TBL_USER
    </sql:query>

	<div>
		<button onclick="location.href='board-list2.jsp'">게시판으로 이동</button>
	</div>
	<table style="margin-top : 10px;">
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>권한</th>
			<th>비밀번호</th>
		</tr>
		<c:forEach var="row" items="${result.rows}">
				<tr>
					<td>${row.userId}</td>
					<td>${row.name} </td>
					<td>
						<c:if test="${row.status == 'A' }" >관리자</c:if>
						<c:if test="${row.status == 'C' }" >일반회원</c:if>
					</td>
					<td>
						<c:if test="${row.cnt >= 5}">
							<button onclick="fnReset('$row.uesrId}')">초기화</button>
						</c:if>
					</td>
				</tr>
		</c:forEach>
	</table>
</body>
</html>
<script>
	function fnReset(userId){
		/* location.href="pwd-reset.jsp?userId="+userId; */
		window.open(
			"pwd-reset.jsp?userId="+userId, "reset", "width=500, height=500");
	}
	
	function fnReload(){
		location.reload();
	}
</script>





