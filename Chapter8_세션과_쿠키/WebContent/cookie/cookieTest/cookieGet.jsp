<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie Test</title>
</head>
<body>
	<%
		/*
		//JSP 184p~186p 참조 - 모든 쿠키를 가져올 때
		String headerName;
		
		Enumeration<String> e = request.getHeaderNames();
		while (e.hasMoreElements()) {
			headerName = e.nextElement();
			request.getHeader(headerName);
		}
		*/
		
		//쿠키가 생성되어있는지 확인하기 위해서 쿠키 헤더값을 가져온다.
		String cookie = request.getHeader("Cookie");
		
		//생성된 쿠키가 있으면
		if (cookie != null) {
			// 쿠기값들을 배열로 가져와
			Cookie[] cookies = request.getCookies();
			
			for (int i = 0 ; i < cookies.length ; i++) {
				String str = cookies[i].getName();
				if (str.equals("cookieName")) {
					//out.println("쿠키이름 : " + cookies[i].getName() + "<br>");
					out.println("쿠키이름 : " + str + "<br>");
					out.println("쿠키값 : " + cookies[i].getValue() + "<br>");
					
					cookies[i].setMaxAge(0); // 쿠키 삭제를 위해 쿠키 만료시간을 다시 0으로 설정하여
					response.addCookie(cookies[i]); // 다시 응답객체에 추가하여 클라이언트로 전달
				}
			}
		}
	%>
<a href="cookieTest.jsp">쿠키 삭제 확인</a>
</body>
</html>