<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LoginOut Cookie Test</title>
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
			// 1.쿠키 객체 생성과 동시에 쿠키 이름과 값을 설정한다.
			// 단, 쿠키객체는 클라이언트에서 관리하므로 보안상 노출되면 안되는 데이터는 제외해야한다. ex)비밀번호 
			Cookie cookie = new Cookie("id",id); // pw는 보안상 노출되면 안되므로 안됨
			
			// 2.쿠키 생존시간(=유지시간=유효시간)을 60초(1분)로 설정한다.
			cookie.setMaxAge(60);
			
			// ★3.반드시 응답객체에 생성된 쿠키객체를 추가하여 클라이언트로 전송 이를통해 클라이언트의 메모리에 쿠키값이 저장된다.
			response.addCookie(cookie);
			
			response.sendRedirect("welcome.jsp"); // 리다이렉트 방식으로 이동(새요청)
		} else { // 회원이 아니면 되돌아감
			response.sendRedirect("login.html"); // 응답
		}
	%>
</body>
</html>