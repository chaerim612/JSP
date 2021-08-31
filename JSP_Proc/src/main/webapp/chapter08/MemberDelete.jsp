<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MemberDelete</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<link
	href="https://getbootstrap.com/docs/4.0/examples/signin/signin.css"
	rel="stylesheet" crossorigin="anonymous" />
</head>
<body>
<%
	String id=request.getParameter("id");
%>
<center>
	<h2>회원 탈퇴</h2>
	<form action="MemberDeleteProc.jsp" method="post">
		<table width="400" border="1" cellpadding="10" cellspacing="2">
		<tr height="50">
			<td align="center" width="150">아이디</td>
			<td width="250"><%=id %></td>
		</tr>
		<tr height="50">
			<td align="center" width="150">패스워드</td>
			<td width="250"><input type="password" name="pw1"></td>
		</tr>
		<tr height="50">
			<td align="center" colspan="2">
			<input type="hidden" name="id" value="<%=id %>">
			<input type="submit" value="탈퇴" >
			<input type="button" value="전체회원목록" onclick="location.href='Memberlist.jsp'">
			</td>
		</tr>
		</table>
	</form>
</center>
</body>
</html>