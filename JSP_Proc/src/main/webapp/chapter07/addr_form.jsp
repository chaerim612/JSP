<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addr_form</title>
<!-- Bootstrap CDN -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<link
	href="https://getbootstrap.com/docs/4.0/examples/signin/signin.css"
	rel="stylesheet" crossorigin="anonymous" />
</HEAD>
</head>
<body>
	<div align="center">
	<h3>주소록 등록</h3>
	<hr />
		<form action="addr_add.jsp" method="post">
		<table border="1" cellspacing="1" cellpadding="5">
			<tr>
				<td>이름</td>
				<td><input type="text" size="20" name=username placeholder="이름"></td>
			</tr>
			
			<tr>
				<td>전화번호</td>
				<td><input type="text" size="20" name=tel placeholder="전호번호"></td>
			</tr>
			
			<tr>
				<td>이메일</td>
				<td><input type="email" size="20" name=email placeholder="이메일"></td>
			</tr>
			
			<tr>
				<td>성별</td>
				<td>
					<select name=gender>
						<option selected>남</option>
						<option>여</option>
					</select>
				</td>
			</tr>
			
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="확인" />
					<input type="reset" value="취소" />
				</td>
			</tr>
			
		</table>
		</form>
	</div>
</body>
</html>