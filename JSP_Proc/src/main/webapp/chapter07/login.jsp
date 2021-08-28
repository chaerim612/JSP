<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- useBean 선언 -->
<!--  id :자바에서 인스턴스 변수(객체). class:패키지 경로. scope :적용범위(page, request, session, application) -->
<jsp:useBean id="login" class="jspbook.ch07.LoginBean" scope="page"/>

<!-- login객체을 활용하여 모든 속성을 set -->
<jsp:setProperty name="login" property="*"/>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<link
	href="https://getbootstrap.com/docs/4.0/examples/signin/signin.css"
	rel="stylesheet" crossorigin="anonymous" />
</head>
<body>
	<div align=center>
		<h2>로그인</h2>
		<hr />
		<%
			if(!login.checkUser()){
				out.println("로그인 실패!!");
			}else{
				out.println("로그인 성공!!");
			}
		%>
		<hr />
		<!-- login객체을 활용하여 모든 속성을 get -->
		고객의 아이디 : <jsp:getProperty name="login" property="userid"/><br>
		고객의 패스워드 :  <%=login.getPasswd() %>
	</div>
</body>
</html>