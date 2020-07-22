<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/chap16" %>
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
<h1>navbar 사용하기</h1>

<my:navbar 
addClass="navbar-light bg-light" 
menu1="Home" 
menu2="Link1" 
menu3="Link2" 
pract="abc"/>

<!-- .container>.row>.col>h1{main contents}+p>lorem -->
<div class="container">
	<div class="row">
		<div class="col">
			<h1>main contents</h1>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum pariatur molestiae doloremque voluptatem porro magni natus dolore debitis quod in aspernatur tempora culpa beatae quisquam consequatur. Temporibus dignissimos aperiam odio!</p>
		</div>
	</div>
</div>

</body>
</html>



















