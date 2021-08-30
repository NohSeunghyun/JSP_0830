<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %> <!-- 위 페이지 지시어 코드안에 써도되고 따로 써도됨 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- session 속성값을 얻어오는 첫번째 방법(속성이름을 알고있을때) -->
	<% // 속성값의 이름을 알고있으니 getAttribute안에 속성값의 이름을 사용하여 참조시켜 출력.
		String sessionName = (String)session.getAttribute("sessionName");
	
		out.println("out.println으로 출력" + "<br>");	
		out.println("속성값 : " + sessionName + "<br>");
			
		String myNum = (String)session.getAttribute("myNum");
	%>
	<hr>
	
	<h4>표현식으로 출력</h4>
	
	속성값 : <%=myNum %> <br>
	
	<hr>
<!-- session 속성값을 얻어오는 두번째 방법(속성이름을 모를때) -->
	<% // 속성값의 이름을 모를 때.
		String sessionName2;
		String sessionValue;
		
		Enumeration<String> e = session.getAttributeNames(); // 속성 이름들 전체를 가져옴
		
		out.println("out.println으로 출력" + "<br>");
		
		while(e.hasMoreElements()) { // 읽어올 요소가 있는동안
			sessionName2 = e.nextElement(); // 첫번째(~...) 속성이름을 얻어와 sessionName2에 참조 -> 값을 얻어오기위해
			sessionValue = (String)session.getAttribute(sessionName2); // 첫번째(~...) 속성이름의 값을 얻어와 sessionValue에 참조
			
			out.println("속성이름 : " + sessionName2 + "<br>");
			out.println("속성값 : " + sessionValue + "<br>");
		}
	%>
	<hr>
	<table border="1">
		<tr>
			<th>속성이름</th>
			<th>속성값</td>
		</tr>
	<%
		Enumeration<String> e1 = session.getAttributeNames();
	
	out.println("표현식으로 출력" + "<br>");
	
		while(e1.hasMoreElements()) { // 읽어올 요소가 있는동안
			sessionName2 = e1.nextElement(); // 첫번째(~...) 속성이름을 얻어와 sessionName2에 참조 -> 값을 얻어오기위해
			sessionValue = (String)session.getAttribute(sessionName2); // 첫번째(~...) 속성이름의 값을 얻어와 sessionValue에 참조
	%>
			<tr>
				<td><%=sessionName2 %></td>
				<td><%=sessionValue %></td>
			</tr>
	<%
		}
	%>
	</table>
	<hr>
<!-- session 속성값을 얻어오는 세번째 방법 -->
	<%
		Enumeration e2 = session.getAttributeNames(); // 속성 이름들 전체를 가져옴
		
		out.println("out.println으로 출력" + "<br>");
		
		while(e2.hasMoreElements()) { // 읽어올 요소가 있는동안
			sessionName2 = (String)e2.nextElement().toString(); // 첫번째(~...) 속성이름을 얻어와 sessionName2에 참조 -> 값을 얻어오기위해
															    // nextElement()에 toString()이 생략되어있다. 고로 생략해도되고 toString()넣어도됨.
			sessionValue = (String)session.getAttribute(sessionName2); // 첫번째(~...) 속성이름의 값을 얻어와 sessionValue에 참조
			
			out.println("속성이름 : " + sessionName2 + "<br>");
			out.println("속성값 : " + sessionValue + "<br>");
		}
	%>
	<hr>
	<table border="1">
		<tr>
			<th>속성이름</th>
			<th>속성값</td>
		</tr>
	<%

		Enumeration e3 = session.getAttributeNames(); // 속성 이름들 전체를 가져옴
		
		out.println("표현식으로 출력" + "<br>");
		
		while(e3.hasMoreElements()) { // 읽어올 요소가 있는동안
			sessionName2 = (String)e3.nextElement().toString(); // 첫번째(~...) 속성이름을 얻어와 sessionName2에 참조 -> 값을 얻어오기위해
															    // nextElement()에 toString()이 생략되어있다. 고로 생략해도되고 toString()넣어도됨.
			sessionValue = (String)session.getAttribute(sessionName2); // 첫번째(~...) 속성이름의 값을 얻어와 sessionValue에 참조
		
	%>
		
			<tr>
				<td><%=sessionName2 %></td>
				<td><%=sessionValue %></td>
			</tr>
	<%
		}
	%>
	</table>
	<hr>
<!-- session의 모든 속성 삭제하여 초기화시키는 방법 -->
<%
session.invalidate(); // 초기화
if (request.isRequestedSessionIdValid()) { // 초기화 확인 // 유효한 세션ID가 있으면 true, 없으면 false
	out.println("유효한 세션");
} else out.println("유효하지 않은 세션");
%>
<!-- 이미 유효화된 세션 이름으로 값을 얻어오면 오류 발생 -->
<%-- <%
	Enumeration<String> e3 = session.getAttributeNames(); // 속성 이름들 전체를 가져옴
	
	while(e.hasMoreElements()) { // 읽어올 요소가 있는동안
		sessionName2 = e3.nextElement(); // 첫번째(~...) 속성이름을 얻어와 sessionName2에 참조 -> 값을 얻어오기위해
														    // nextElement()에 toString()이 생략되어있다. 고로 생략해도되고 toString()넣어도됨.
		sessionValue = (String)session.getAttribute(sessionName2); // 첫번째(~...) 속성이름의 값을 얻어와 sessionValue에 참조
		
		out.println("out.println으로 출력" + "<br>");
		out.println("속성이름 : " + sessionName2 + "<br>");
		out.println("속성값 : " + sessionValue + "<br>");
%> --%>
</body>
</html>