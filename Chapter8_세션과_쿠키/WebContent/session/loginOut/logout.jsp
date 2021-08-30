<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LoginOut Session Test</title>
</head>
<body>
	<%
		String sessionName, sessionValue;
		
		Enumeration<String> e = session.getAttributeNames();
	
		while(e.hasMoreElements()) {
			sessionName = e.nextElement(); // id
			sessionValue = (String)session.getAttribute(sessionName); // "abcde"
			
			if (sessionValue.equals("abcde")) {
				session.removeAttribute(sessionName); // 세션영역의 id속성삭제
			}
		}
	%>
	
	<a href="sessionTest.jsp">세션테스트</a>
</body>
</html>