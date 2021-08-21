<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Session</title>
</head>
<body>
	<div align="center">
		<h2>session 실습</h2>
		<hr />
		<%
			//isNew() 메서드를 활용하여 최초세션설정을 확인
			if(session.isNew()){
				out.println("<script> alert('세션이 해제되어 다시 설정합니다')</script>");
				session.setAttribute("login", "홍길동");
			}
		%>
		<%=session.getAttribute("login") %>님 환영 합니다.<br>
		1. 세션 ID : <%= session.getId() %><br>
		<% session.setMaxInactiveInterval(5); %> <!-- 세션유지시간 설정(초단위) -->
		2. 세션 유지시간 : <%= session.getMaxInactiveInterval() %>초<br>
		
	</div>
</body>
</html>