<%@page import="jspbook.ch07.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Member Join Proc</title>
</head>
<body>
<center>
	<h2>회원 정보 출력</h2>
	<% 
		request.setCharacterEncoding("UTF-8");
	%>
	<!-- jsp 내용을 자바빈 클래스(MemberBean)에 데이터를 매핑(setter) -->
	<jsp:useBean id="mbean" class="jspbook.ch07.MemberBean">
		<%-- <jsp:setProperty name="mbean" property="id">
		<jsp:setProperty name="mbean" property="pw">
		<jsp:setProperty name="mbean" property="email">
		<jsp:setProperty name="mbean" property="tel">
		<jsp:setProperty name="mbean" property="address"> --%>
		<jsp:setProperty name="mbean" property="*"/>
	</jsp:useBean>
	<!-- jsp 내용을 자바빈 클래스(MemberBean)에 매핑(setter)한 데이터를 출력(getter)-->
	
	<h2>당신의 아이디는 : <jsp:getProperty property="id" name="mbean"/> </h2> 
	<h2>당신의 비밀번호는 : <jsp:getProperty property="pw" name="mbean"/> </h2> 
	<h2>당신의 이메일은 : <jsp:getProperty property="email" name="mbean"/> </h2> 
	<h2>당신의 전화번호는 : <jsp:getProperty property="tel" name="mbean"/> </h2> 
	<h2>당신의 주소는 : <jsp:getProperty property="address" name="mbean"/> </h2> 
	<hr />
	
	<h2>당신의 전화번호는 <%=mbean.getTel() %>입니다. </h2>
</center>
</body>
</html>