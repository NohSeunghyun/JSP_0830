<!-- 
<HTTP 프로토콜>
-HTTP 프로토콜은 데이터를 요청하고 데이터의 결과값을 받게되면 바로 연결이 종료
HTTP 프로토콜의 위와같은 단점을 보강하기 위해 즉,
클라이언트와 서버의 관계(상태)를 유지하기 위해 제공되는 기능이 세션이다.

쿠키 또한 클라이언트의 정보를 쿠키 단위로 클라이언트의 시스템에 저장하는 기능을 제공한다.

정리하면,
세션과 쿠키는 클라이언트의 서버와의 관계를 유지하는 방법인데
세션은 서버측에 저장되어 보안상에도 좋고 용량에 제한이 없지만
쿠키는 클라이언트측에 저장되어 보안상 문제가 될 수 있고 용량에도 제한이 있다.

JSP책 271p 272p 그림비교
JSP책 272p 세션의 주요메서드 참조
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		session.setAttribute("sessionName", "sessionData");
		session.setAttribute("myNum", "12345");
	%>
	
	<a href="sessionGet.jsp">session get</a>
</body>
</html>