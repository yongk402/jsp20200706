<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.io.IOException, java.io.FileReader" %>
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

<title>소스 보기</title>
</head>
<body>
<%
	FileReader reader = null;
	try {
		//String path = request.getParameter("path");
		String path = "chap12/out/use_out_tag.jsp";
		reader = new FileReader(getServletContext().getRealPath(path));
%>
<pre>
소스 코드 = <%=path %>
<c:out value="<%= reader %>" escapeXml="true" />
</pre>

<%		
	} catch(IOException ex) { 
%>
에러: <%= ex.getMessage() %>
<%
	} finally {
		if(reader != null)
			try {
				reader.close();
			}catch(IOException ex) {}
	}
%>

</body>
</html>














