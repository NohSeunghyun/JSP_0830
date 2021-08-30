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
		
		int i = 0;
		while(e.hasMoreElements()) {
			i++;
			
			sessionName = e.nextElement();
			sessionValue = (String)session.getAttribute(sessionName);
			
			out.println("속성이름 : " + sessionName + "<br>");
			out.println("속성값 : " + sessionValue + "<br>");
		}
		if (i==0) out.println("세션에서 해당속성이 삭제되었습니다. 해당 세션이 만료되었습니다. 즉, 로그아웃 되었습니다.");
	%>
</body>
</html>