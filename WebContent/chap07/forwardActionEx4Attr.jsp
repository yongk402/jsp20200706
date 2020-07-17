<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.*" %>
<%
request.setCharacterEncoding("utf-8");
%>
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
<h1><%= pageContext.getAttribute("name") %></h1>
<h1><%= request.getAttribute("name") %></h1>
<h1><%= session.getAttribute("name") %></h1>
<h1><%= application.getAttribute("name") %></h1>

<hr />

<%


Enumeration<String> attrEnum = application.getAttributeNames();
while(attrEnum.hasMoreElements()) {
	String name = attrEnum.nextElement();
	Object value = application.getAttribute(name);
%>
application 속성: <b><%= name %></b> = <%= value %> <br />
<% 
}
%>



</body>
</html>