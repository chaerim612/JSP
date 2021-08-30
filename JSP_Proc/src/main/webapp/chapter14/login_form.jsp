<!-- 클라이언트 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<center>
		<h2>로그인</h2>
		<form action="LoginProc.do" method="post">
			<table width="300" border="1" cellspacing="0" cellpadding="5">
				<tr height="40">
					<td width="120" align="center">아이디</td>
					<td width="180" align="center"><input type="text" name="id"
						size=10></td>
				</tr>
				<tr height="40">
					<td width="120" align="center">패스워드</td>
					<td width="180" align="center"><input type="password"
						name="password" size=10></td>
				</tr>
				<tr height="40">
					<td align="center" colspan="2"><input type="submit"
						value="로그인"></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>