<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<link
	href="https://getbootstrap.com/docs/4.0/examples/signin/signin.css"
	rel="stylesheet" crossorigin="anonymous" />
<meta charset="UTF-8">
<title>MemberDB Form</title>
</head>
<body>
<center>
<h2>회원가입</h2>
<form action="MemberDBJoin.jsp" method="post">
	<table border=1>
		<tr>
			<td width=150>아이디</td>
			<td width=300><input type="text" name="id" placeholder="아이디를 입력하세요. "/></td>
		</tr>
		<tr>
			<td width=150>패스워드</td>
			<td width=300><input type="password" name="pw1" placeholder="숫자와 문자를 혼합"/></td>
		</tr>
		<tr>
			<td width=150>패스워드 확인</td>
			<td width=300><input type="password" name="pw2"/></td>
		</tr>
		<tr>
			<td width=150>이메일</td>
			<td width=300><input type="email" name="email"/></td>
		</tr>
		<tr>
			<td width=150>성별</td>
			<td width=300><input type="radio" name="gender" value="남자"/>남자
			<input type="radio" name="gender" value="여자"/>여자</td>
		</tr>
		<tr>
			<td width=150>주소</td>
			<td width=300><input type="text" name="address"/></td>
		</tr>
		<tr>
			<td width=150>전화번호</td>
			<td width=300><input type="text" name="phone" /></td>
		</tr>
		<tr>
			<td width=150>당신의 관심분야</td>
			<td width=300><input type="checkbox" name="hobby" value="trip" />여행
			<input type="checkbox" name="hobby" value="hiking" />등산
			<input type="checkbox" name="hobby" value="music" />음악
			<input type="checkbox" name="hobby" value="book" />책</td>
		</tr>
		<tr>
			<td width=150>당신의 직업</td>
			<td width=300><select name="job">
				<option value="teacher">교사</option>
				<option value="student">학생</option>
				<option value="none">무직</option>
				<option value="officer">직장인</option>
			</select></td>
		</tr>
		<tr>
			<td width=150>당신의 연령대</td>
			<td width=300><input type="radio" name="age" value="10"/>10대
			<input type="radio" name="age" value="20"/>20대
			<input type="radio" name="age" value="30"/>30대
			<input type="radio" name="age" value="40"/>40대
			</td>
		</tr>
		<tr>
			<td width=100>하고싶은 말</td>
			<td width=300><textarea name="info"cols="30" rows="4"></textarea></td>
		</tr>
		<tr>
			<td colspan=2><input type="submit" value="회원가입"/>
			<input type="reset" value="취소"/></td>
		</tr>
	</table>
</form>
</center>
</body>
</html>