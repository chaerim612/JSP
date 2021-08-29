<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>address form</title>
</head>
<body>
	<div align=center>
		<h2>주소록 등록</h2>
		<form action="addr_add.jsp">
			<table border=1 cellspacing=1 cellpadding=5>
				<tr>
					<td>이름</td>
					<td><input type="text" size=20 name=username placeholder="이름을 입력하세요. "/></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><input type="text" size=20 name=tel placeholder="전화번호를 입력하세요. "/></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type="email" size=20 name=email placeholder="이메일을 입력하세요. "/></td>
				</tr>
				<tr>
					<td>성별</td>
					<td><select name="gender" >
						<option value="남" selected>남</option>
						<option value="여">여</option>
					</select></td>
				</tr>
				<tr>
					<td align=center colspan=2><input type="submit" value="확인"/>&nbsp&nbsp&nbsp<input type="reset" value="취소"/></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>