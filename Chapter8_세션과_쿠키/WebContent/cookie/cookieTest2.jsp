<!-- JSP책 282p~ 
1. cookieTest1.jsp : 쿠키값을 저장하는 역할
2. cookieTest2.jsp : 저장된 쿠키값을 불러오는 역할
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = ""; // 표현식으로 출력하기 위해 변수선언
	String value = ""; // 표현식으로 출력하기 위해 변수선언
	// 쿠키가 생성되어있는지 확인하기위해 쿠키 헤더값을 가져온다.
	String cookie = request.getHeader("Cookie");
	
	if (cookie != null) { // 생성된 쿠키가 있으면
		Cookie[] cookies = request.getCookies(); // 쿠키값들을 배열로 가져와
		
		//출력 - out내장객체 사용
		for (int i = 0 ; i < cookies.length ; i++) {
				out.println("cookies"+i+"name : "+cookies[i].getName()+"<br>");
				out.println("cookies"+i+"value : "+cookies[i].getValue()+"<br>"); // JSESSIONID는 세션에서 자동생성된 세션이지만 쿠키영역에 있는것. 보안상취약
			if (cookies[i].getName().equals("CookieName")) { // 원하고자하는 쿠키이름을 출력하고자 한다면(쿠키이름을 알고있다면) if문으로 사용
				out.println("쿠키이름 : " + cookies[i].getName() + "<br>");
				out.println("쿠키값 : " + cookies[i].getValue() + "<br>");
				//출력 - 표현식으로
				name = cookies[i].getName();
				value = cookies[i].getValue();
			}
				out.print("------------------------------------------------------------------<br>");
		}
	} else out.print("저장된 쿠키 없음");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie Test</title>
</head>
<body>
	<h3>쿠키이름 : <%=name %></h3>
	<h3>쿠키값 : <%=value %></h3>
</body>
</html>