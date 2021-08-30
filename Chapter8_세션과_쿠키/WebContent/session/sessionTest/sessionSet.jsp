<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	session.setAttribute("name", "Session Test!");
%>
<script>
	location="sessionTest.jsp"; // location.href="sessionTest.jsp"로 써도됨
</script>