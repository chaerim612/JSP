<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SessionLoginProc.jsp</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
//사용자가 입력한 id 가져오기
String id=request.getParameter("id");
//어느 페이지에서든지 사용가능하도록 session으로 설정=공유
session.setAttribute("id", id);
//세션 유지 시간
session.setMaxInactiveInterval(5);

%>

<h2>당신의 아이디는 <%=id %> 입니다.</h2>

<a href="SessionShoppingMall.jsp">쇼핑몰 바로 가기</a>



</body>
</html>