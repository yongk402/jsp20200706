<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- page 디렉티브 -->
    
<!-- jsp 코드 -->    
<!DOCTYPE html>
<html>
<head>
	<title>HTML 문서의 제목</title>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 스크립트릿 -->
	<%     
	String bookTitle = "JSP 프로그래밍";
	String author = "최범균";
	%>
	<!-- 표현식 -->
	<b><%= bookTitle %></b>(<%= author %>)입니다.
</body>
</html>