<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>

	table {
		width :400;
	
	}

	tr td {
		text-align: center;
		width : 50%;
	
	}

</style>
<script>
	function check_info() {
		var pw = document.f.password.value;
		var pw2 = document.f.password2.value;
		
		if(document.f.id.value == "") {
			alert("id 빈칸");
			document.f.id.focus();
			document.f.id.value = "";
			return;
		}
		
		if(document.f.password.value == "") {
			alert("password 빈칸");
			document.f.password.focus();
			document.f.password.value = "";
			return;
		}
		
		if(document.f.password2.value == "") {
			alert("confirm password 빈칸");
			document.f.password2.focus();
			document.f.password2.value = "";
			return;
		}
		
		
		if(document.f.email.value == "") {
			alert("email 빈칸");
			document.f.email.focus();
			document.f.email.value = "";
			return;
		}
		
		
		if(document.f.address.value == "") {
			alert("address 빈칸");
			document.f.address.focus();
			document.f.address.value = "";
			return;
		}
		
		if(document.f.tel.value == "") {
			alert("tel 빈칸");
			document.f.tel.focus();
			document.f.tel.value = "";
			return;
		}
		
		if(document.f.text.value == "") {
			alert("text 빈칸");
			document.f.text.focus();
			document.f.text.value = "";
			return;
		}
		
		if(pw == pw2) {
			return document.f.submit();
		}
		else {
			document.f.password2.focus();
			document.f.password2.value = "";
			alert("비밀번호 불일치");
			return;
		}
		
	} 
</script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="MemberJoinProc.jsp" method = "post" name = "f">

	<table  border = "1">
		<tr>
			<td>아이디</td>
			<td><input type="text" name = "id"></td>
		</tr>
	
		<tr>
			<td>패스워드</td>
			<td><input type="password" name = "password"></td>
		</tr>
	
		<tr>
			<td>패스워드 확인</td>
			<td><input type="password" name = "password2"></td>
		</tr>
	
		<tr>
			<td>이메일</td>
			<td><input type="email" name = "email"></td>
		</tr>
	
		<tr>
			<td>성별</td>
			<td>
				<input type="radio" name = "gender" value="m">남
				<input type="radio" name = "gender" value="w">여
			</td>
		</tr>
	
		<tr>
			<td>주소</td>
			<td><input type="text" name = "address"></td>
		</tr>
	
		<tr>
			<td>전화번호</td>
			<td><input type="text" name = "tel"></td>
		</tr>
	
		<tr>
			<td>관심분야</td>
			<td>
				<input type="checkbox" name = "hobby" value="travel">여행
				<input type="checkbox" name = "hobby" value="mountaineerning">등산
				<input type="checkbox" name = "hobby" value="music">음악
				<input type="checkbox" name = "hobby" value="reading">독서
			</td>
		</tr>
	
		<tr>
			<td>직업</td>
			<td>
				<select name = "job">
					<option selected>교사</option>
					<option>회사원</option>
					<option>학생</option>
				</select>
			</td>
		</tr>
	
		<tr>
			<td>연령</td>
			<td>
				<input type="radio" name = "age" value="10">10대
				<input type="radio" name = "age" value="20">20대
				<input type="radio" name = "age" value="30">30대
				<input type="radio" name = "age" value="40">40대
			</td>
		</tr>
	
		<tr>
			<td>하고싶은말</td>
			<td>
				<textarea rows="5" cols="40" name="text"></textarea>
			</td>
		</tr>
	
		<tr>
			<td colspan="2">
				<input type="button" value ="submit" onclick="check_info()">
				<input type="reset" value = "reset">
			</td>
		</tr>
	</table>
</form>

</body>
</html>