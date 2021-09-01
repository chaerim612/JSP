<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<link
	href="https://getbootstrap.com/docs/4.0/examples/signin/signin.css"
	rel="stylesheet" crossorigin="anonymous" />
<head>
<meta charset="UTF-8">
<title>Out</title>
</head>
<body bgcolor="#ffffff">
<center>
	<h3>&lt c:out &gt</h3>
	<table border=1 cellpadding=5 align=center>
		<c:forEach var="members" items="${members }">
			
		</c:forEach>
	</table>
</center>
</body>
</html>