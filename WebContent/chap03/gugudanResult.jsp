<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>구구단 출력</title>
</head>
<body>

<b>request.getParameter( ) 메서드 사용</b> <br>
 <br>
<% 
	int gugu = Integer.parseInt(request.getParameter("input"));
	for(int i=1; i<=9; i++) {
%>
	<p>
	<b> <%=gugu%> *	<%=i %> =	</b>
	<a style="color:green"> <%= gugu * i %> </a>

<%
}
%>

<hr>
<div class = "container">
	<div class="row">
		<div class="col">
			<h1><%= request.getParameter("input") %> 단</h1>
			<ul class="list-group list-group-flush">
<%
String n = request.getParameter("input");
int num = Integer.parseInt(n);

for(int i=1; i<=9; i++) {
	//System.out.println(num + "*" + i + "=" + (num*i));
%>			
	<li class="list-group-item">
	<%= num %>
	<i class="fas fa-times"></i>
	<%= i %> 
	<i class="fas fa-equals"></i>
	<%= (num * i) %>
	</li>
<%
}

%>
</ul>
		</div>
	</div>
</div>
</body>
</html>













