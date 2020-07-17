<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="chap08.MyBean" %>
<%
MyBean myBean = new MyBean();
myBean.setName("abc");
myBean.setId(99);

request.setAttribute("myBean", myBean);
%>

<%-- 위와 아래 같은 의미 --%>

<%-- <jsp:useBean id="myBean" class="chap08.MyBean" /> --%> 
    
