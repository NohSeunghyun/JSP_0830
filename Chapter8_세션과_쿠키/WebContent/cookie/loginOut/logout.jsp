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
				//String id = cookies[i].getValue(); // 해당 쿠키 객체의 값을 얻어와 변수 id에 대입후
				
				if (cookies[i].getValue().equals("abcde")) {
					//로그아웃 = 쿠키 삭제를 위해 쿠키의 만료시간을 다시 0으로 설정
					cookies[i].setMaxAge(0);
					response.addCookie(cookies[i]); // ★다시 응답객체에 추가하여 클라이언트로 전달
				}
			}
		}
		response.sendRedirect("cookieTest.jsp");
	%>
</body>
</html>