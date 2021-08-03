<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form>
		<fieldset>
			<legend>계정정보 </legend>
			아이디 <input type="text" required="required" name="id"> <br> 
			비밀번호 <input type="password" name="pw"><br> 
			비밀번호 확인 <input type="password">
		</fieldset>
		<fieldset>
			<legend>프로필</legend>
			이름 <input type="text" name="name"><br> 
			생년월일 <input type="number" min="2000" max="2031" placeholder="생년" name="d_year">
				  <select name="d_month">
				  	<option value="">월</option>
				  	<option value="1">1</option>
				  	<option value="2">2</option>
				  	<option value="3">3</option>
				  	<option value="4">4</option>
				  	<option value="5">5</option>
				  	<option value="6">6</option>
				  	<option value="7">7</option>
				  	<option value="8">8</option>
				  	<option value="9">9</option>
				  	<option value="10">10</option>
				  	<option value="11">11</option>
				  	<option value="12">12</option>
				 </select>
				 <input type="number" min="1" max="31" placeholder="일" name="d_day">
				  	<br>
			성별 <input type="radio" name="gender">남 <input type="radio" name="gender">여 <input
				type="radio" name="gender">기타
		</fieldset>
		<input type="checkbox"> 사이트 이용약관과 개인정보 수집 방침에 동의합니다. <br> 
		<input type="submit" value="가입하기">
	</form>
</body>
</html>