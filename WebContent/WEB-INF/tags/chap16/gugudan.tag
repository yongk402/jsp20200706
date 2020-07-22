<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@ attribute name="dan" required="true" %>

<h2>${dan } 단</h2>

<div>
<ul>
	<c:forEach begin="1" end="${9 }" var="cur" >
		<li>${dan} * ${cur} = ${dan * cur }</li>
	</c:forEach>
</ul>
</div>