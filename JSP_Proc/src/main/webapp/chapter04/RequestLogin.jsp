<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
		<form action="LoginProc.jsp" method="post">
			<table width="400" border="1">
				<tr height="40" align="center">
					<td width="150">ID</td>
					<td width="250"><input type="text" name="id"/></td>
				</tr>
				<tr height="40" align="center">
					<td width="150">P/W</td>
					<td width="250"><input type="text" name="pw"/></td>
				</tr>
				<tr height="40" align="center" bgcolor="yellow">
					<td colspan="2"><input type="submit" value="로그인"/></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>