<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
${param }
${paramValues }
//null값 표시안한다
--%>
<h1>
<%= request.getParameter("name") %>,
${param.name } 
</h1>
//http://localhost/myjsp/chap11/elEx7Param.jsp?name=jane

<h1>
${paramValues.name[0] }, 
${paramValues.name[1] }
</h1>
//http://localhost/myjsp/chap11/elEx7Param.jsp?name=jane&name=john

</body>
</html>



