<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- useBean 선언 -->
<!-- id : 자바에서 인스턴스 변수(객체)
class: 패키지 경로
scope : 적용 범위(page, request, sessionm, application)  -->
<jsp:useBean id="login" class="jspbook.ch07.LoginBean" scope="page"/>
<!-- login객체를 활용하여 모든 속성을 set -->
<jsp:setProperty name="login" property="*"/>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>
	<div align=center>
		<h2>로그인</h2>
		<hr />
		<% 
			if(!login.checkUser()){
				out.println("로그인 실패!");
			}else{
				out.println("로그인 성공!");
			}
		%>
		<hr />
		<!-- login 객체를 활용해 모든 속성을 get -->
		고객의 아이디 : <jsp:getProperty property="userid" name="login"/><br>
		고객의 패스워드 : <jsp:getProperty property="passwd" name="login"/>
	</div>
</body>
</html>