<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<%--charset 전송방식 // charset=iso-8859-1 --%>
<%@ page import="java.util.Date"  %>
<%
	Date now = new Date();
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현재 시간</title>
</head>
<body>
현재 시각:
<%= now %>

</body>
</html>