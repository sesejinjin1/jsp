<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// SELECT * FROM STUDENT WHERE STU_NO = stuNo;
		// 20153075
		String stuNo = "20153075";
	
		String query = "SELECT * FROM STUDENT WHERE STU_NO = ";
		
		// SELECT * FROM STUDENT WHERE STU_NO = '20153075';
		
		System.out.println("SELECT * FROM STUDENT WHERE STU_NO = '" + stuNo + "'");
		
		
		
		String name = "홍길동";
		String age = "30";
		
		// 홍길동 나이는 30 입니다.
		
		System.out.println(name + "나이는 " + age + " 입니다.");
		
		
	
	%>
</body>
</html>