<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Session Login Form</title>
</head>
<body>
	<center>
		<h2>로그인 페이지</h2>
		<form action="SessionLoginProc.jsp" method="post">
			<table width=300 border=1>
				<tr height=50>
					<td align=center width=100>아이디</td>
					<td width=200><input type="text" name="id" size=20 /></td>
				</tr>
				
				<tr height=50>
					<td align=center width=100>패스워드</td>
					<td width=200><input type="text" name="pw" size=20 /></td>
				</tr>
				
				<tr height=50>
					<td align=center colspan=2><input type="submit" value="로그인" /></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>