<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!-- CalcBean calc=new CalcBean();와 같은 코드로 인스턴스 생성 -->
<jsp:useBean id="calc" class="jspbook.ch03.CalcBean"/>
<!-- calc 객체의 setter메서드 호출를 HTML폼테그에 적용 -->
<jsp:setProperty name="calc" property="*"/>
<% calc.calculate(); %>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<h3>계산기</h3>
		<hr />
		<form name="form1" method="post">
			<input type="text" name="num1" width=200 size="5" /> 
			<select
				name="operator">
				<option selected>+</option>
				<option>-</option>
				<option>*</option>
				<option>/</option>
			</select> 
			<input type="text" name="num2" width=200 size="5" /> 
			<input type="submit" value="계산" name="B1" /> 
			<input type="reset" value="다시 입력" name="B2" />
		</form>
		<br>
		<hr />
		결과 출력 : <jsp:getProperty property="result" name="calc"/>
	</div>
</body>
</html>
