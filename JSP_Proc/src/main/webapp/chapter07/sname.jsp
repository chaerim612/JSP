<%@page import="jspbook.ch07.AddrBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="am" class="jspbook.ch07.AddrManager" scope="application" />
<% 
	request.setCharacterEncoding("UTF-8");
	AddrBean addr=am.getAddr(request.getParameter("sname"));
%>
<html>
<head>
<meta charset="UTF-8">
<title>search name</title>
</head>
<body>
<div align=center>
	<h2>회원목록</h2>
	이름 : <%= addr.getUsername() %> <br />
	전화번호 : <%= addr.getTel() %> <br />
	이메일 : <%= addr.getEmail() %> <br />
	성별 : <%= addr.getGender() %> <br />
	<hr />
</div>
</body>
</html>