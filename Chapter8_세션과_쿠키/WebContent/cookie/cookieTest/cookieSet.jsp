<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie Test</title>
</head>
<body>
	<%
		// 쿠키 설정하는 방법
		// 1. 쿠키 객체 생성과 동시에 쿠키 이름과 값을 설정한다.
		Cookie cookie = new Cookie("cookieName","cookieValue");
	
		// 2. 쿠키 생존 시간(유효기간)을 1시간으로 설정한다.
		cookie.setMaxAge(1*60*60); // 1초 * 60 = 1분 * 60 = 1시간(=3600초) 동안 이 쿠키가 유효하게 유지. 이시간 초과하면 쿠키는 더이상 사용불가
		
		// ★3. 응답에 생성된 쿠키객체를 추가하여 클라이언트로 반드시 전송. 이를통해 클라이언트의 메모리에 쿠키값이 저장됨 
		response.addCookie(cookie);
	%>
	<a href="cookieGet.jsp">cookie Get</a>
</body>
</html>