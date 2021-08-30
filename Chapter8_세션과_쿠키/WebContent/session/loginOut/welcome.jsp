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
	   Enumeration<String> e = session.getAttributeNames();
	   
	   String sessionName;
	   String sessionValue;
	   while(e.hasMoreElements()) {
	      sessionName = e.nextElement();
	      sessionValue = (String) session.getAttribute(sessionName);
	      
	      if(sessionValue.equals("abcde")) {
	    	out.println("속성이름 : " + sessionName + "<br>");
			out.println("속성값 : " + sessionValue + "<br>");
	        out.println(sessionValue+"님 환영합니다."+"<br/>");
	      }
	   }
   %>
   <a href="logout.jsp">로그아웃</a>
</body>
</html>