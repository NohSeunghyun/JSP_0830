<!-- JSP책 282p~ 
1. cookieTest1.jsp : 쿠키값을 저장하는 역할
2. cookieTest2.jsp : 저장된 쿠키값을 불러오는 역할
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//쿠키 설정하는 방법
	//1. 쿠키객체 생성과 동시에 쿠키 이름과 값을 설정한다.
	Cookie cookie = new Cookie("CookieName","CookieValue");

	//2. 쿠키 생존시간(=유효시간)을 5초로 설정한다.
	cookie.setMaxAge(5);
	//테스트할 때 5초후 새로고침하여 결과 확인해보기
	
	//3.응답에 생성된 쿠키객체를 추가하여 클라이언트로 반드시 전송
	response.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie Test</title>
</head>
<body>
<!-- 쿠키이름, 쿠키값, 쿠키만료시간 출력(표현식 사용) -->
	<h3>쿠키이름 : <%=cookie.getName() %></h3>
	<h3>쿠키값 : <%=cookie.getValue() %></h3>
	<h3>쿠키만료시간 : <%=cookie.getMaxAge() %></h3>
	<a href="cookieTest2.jsp">쿠키 값 불러오기</a>
</body>
</html>