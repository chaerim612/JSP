<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL_계산기</title>
</head>
<body>
<div align=center>
	<h3>계산기</h3>
	<hr />
	<form action="ELCulProc.jsp" method="post">
		<input type="text" name="num1" width="200" size="5"/>
		<select name="operator">
			<option selected>+</option>
			<option selected>-</option>
			<option selected>*</option>
			<option selected>/</option>
		</select>
		<input type="text" name="num2" width="200" size="5"/>
		<input type="submit" value="계산" name="b1"/>
		<input type="reset" value="다시" name="b2"/>
	</form>
</div> 
</body>
</html>