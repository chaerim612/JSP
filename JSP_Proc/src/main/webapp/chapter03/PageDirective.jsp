<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8" errorPage="404error.jsp" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
에러 페이지입니다. <br>
<% int res=10/0; %>
<a href="Error.jsp">이전페이지</a>
</body>
</html>
