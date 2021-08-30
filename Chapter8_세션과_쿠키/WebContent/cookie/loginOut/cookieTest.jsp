<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LoginOut Cookie Test</title>
</head>
<body>
<%
	String cookie = request.getHeader("Cookie");

	if (cookie != null) { // 생성된 쿠키가 있으면
		//쿠키값들을 배열로 가져와
		Cookie[] cookies = request.getCookies();
		
		//쿠키 이름과 값을 출력
		for (int i = 0 ; i < cookies.length ; i++) {
			if (!cookies[i].getName().equalsIgnoreCase("jsessionid")) {
			out.println("쿠키 이름 : " + cookies[i].getName() + "<br>");
			out.println("쿠키 값 : " + cookies[i].getValue() + "<br>");
			} else out.println("쿠키에서 해당속성이 삭제되었습니다. 해당 쿠키가 만료되었습니다. 즉, 로그아웃 되었습니다.");
		}
	}
%>
</body>
</html>