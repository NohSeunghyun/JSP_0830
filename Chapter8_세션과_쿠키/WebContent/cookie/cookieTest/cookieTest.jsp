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
		//쿠키가 생성되어있는지 확인하기 위해서 쿠키 헤더값을 가져온다.
		String cookie = request.getHeader("Cookie");
		
		//생성된 쿠키가 있으면
		if (cookie != null) {
			// 쿠기값들을 배열로 가져와
			Cookie[] cookies = request.getCookies();
			
			for (int i = 0 ; i < cookies.length ; i++) {
				out.println(cookies[i].getName() + "<br>");
				out.println(cookies[i].getValue() + "<br>");
			}
		}
		/* 실행결과
		JSESSIONID - 서버에서 자동으로 생성된 세션ID인데 쿠키영역에 저장
		246F0CF47296B876269C6120B577CE99 - 위 세션ID의 값.
		*/
	%>
</body>
</html>