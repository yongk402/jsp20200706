<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
Object o = session.getAttribute("member");
if(o != null) {
	session.removeAttribute("member");
}

response.sendRedirect("loginForm.jsp");
--%>


<%
	session.invalidate();	// 요청 2번 발생(1요청에서 invalidate하고 2요청에서 새로운 세션생성)

	response.sendRedirect("loginForm.jsp");
%>