<%@ page language="java" contentType="text/plain; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="java.io.InputStream" %>
<%@ page import="java.io.IOException" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%
// 웹브라우저가 전송한 데이터를 그대로 출력
	InputStream is = null;

	out.print("[");
	out.print(request.getContentType());
	out.print("]");
//	
	try {
		is = request.getInputStream();
		int data = -1;
		
		while ((data=is.read()) != -1) {
			out.print((char)data);
		}
	} finally {
		if(is != null) try {is.close(); } catch(IOException ex) {}
	}
%>
