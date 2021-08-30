<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LoginOut Session Test</title>
</head>
<body>
	<%!
		//클래스의 멤버변수와 메서드 : 전역에서 접근가능
		String id, pw;
	%>
	
	<%
		id = request.getParameter("id"); // id와
		pw = request.getParameter("pw"); // pw 얻어와
		
		if (id.equals("abcde") && pw.equals("12345")) { // 회원인증
			// 세션 영역에 id만 속성으로 저장
			session.setAttribute("id", id); // "abcde"
			
			/*
			기본값은 30분. 톰캣서버(Servers)의 web.xml에서 확인가능.(session-config)
			모든 세션 유지시간을 다른 시간으로 설정할 수 있다.(web.xml에서 session-config의 timeout 값변경)
			*/
			//세션 유지시간을 1시간(=3600초)으로 설정
			session.setMaxInactiveInterval(1*60*60); // JSP책 272p 메서드 참고
			
			response.sendRedirect("welcome.jsp"); // 리다이렉트 방식으로 이동(새요청)
		} else { // 회원이 아니면 되돌아감
			response.sendRedirect("login.html"); // 응답
		}
	%>
</body>
</html>