<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LoginOut Cookie Test</title>
</head>
<body>
	<%
		// 쿠키가 생성되어 있는지 확인하기 위해 쿠키 헤더값을 가져온다.
		String cookie = request.getHeader("Cookie");
		
		if (cookie != null) { // 생성된 쿠키가 있으면
			//쿠키값들을 배열로 가져와
			Cookie[] cookies = request.getCookies();
			
			for (int i = 0 ; i < cookies.length ; i++) {
				out.println("쿠키 이름 : " + cookies[i].getName() + "<br>");
				out.println("쿠키 값 : " + cookies[i].getValue() + "<br>");
				String id = cookies[i].getValue(); // 해당 쿠키 객체의 값을 얻어와 변수 id에 대입후
				if (id.equals("abcde")) out.println(id + "님 환영합니다.<br>");
			}
		}
	%>
   <a href="logout.jsp">로그아웃</a>
</body>
</html>