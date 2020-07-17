<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 
<%@ page import="chap11.MyBean" %>    
<%
Object o = request.getAttribute("myBean");
MyBean m = (MyBean) o;
%>
<h1>
<%= m.getName() %>, <%= m.getId() %>
</h1>
--%>

위를 아래처럼 간단하게 할수있다.
<h1> ${myBean.id }, ${myBean.name }</h1>