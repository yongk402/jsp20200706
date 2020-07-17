<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id = request.getParameter("id");
String pw = request.getParameter("pw");

if(id != null & pw != null) {
	if(id.equals(pw)) {
		session.setAttribute("member",id);
	}
	
	String keep = request.getParameter("keep");
	if(keep != null) {
		Cookie cookie = new Cookie("JSESSIONID", session.getId());
		cookie.setPath(request.getContextPath()); // 모든곳에서 인식하게끔 path 설정
		cookie.setMaxAge(1*60);
		response.addCookie(cookie);
	}
}
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
<h1>로그인</h1>

<%
Object o = session.getAttribute("member");

if(o == null) {
%>

<form action="" method="post">
id: <input type="text" name="id" /> <br />
pw: <input type="password" name="pw" /> <br />
<input type="checkbox" name="keep" /> 로그인 유지 <br /> 
<input type="submit" value="로그인" />
</form>

<%
} else {
%>

<h1><%= session.getAttribute("member") %>님 환영.</h1>
<a href="memberPage.jsp">멤버전용</a>

<%
}
%>
</body>
</html>






