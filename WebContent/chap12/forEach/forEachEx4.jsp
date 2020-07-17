<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>
<%--
forEach의 varStatus 속성 (javax.servlet.jsp.jstl.core.LoopTagStatus)
--%>
<%
String[] arr = {"java", "script","css","python","matrix","c++"};
request.setAttribute("list",arr);

%>
<table class="table">
<tr>
<th>index</th>
<th>count</th>
<th>item</th>
</tr>

<c:forEach items="${list }" var="item" varStatus="status" begin="3">
<tr>
<td>${status.index }</td>
<td>${status.count}</td>
<td>${item }</td>
</tr>
</c:forEach>




</table>
</body>
</html>



















