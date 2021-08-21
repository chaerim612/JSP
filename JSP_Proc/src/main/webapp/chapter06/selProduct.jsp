<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>selProduct.jsp</title>


</head>
<%
 request.setCharacterEncoding("UTF-8");
 session.setAttribute("username", request.getParameter("username"));
 
%>
<body>
<div align="center">
	<h2>상품선택</h2>
	
	<hr color="blue" width="60%" />
		<strong><%= session.getAttribute("username") %></strong>&nbsp;님 환영합니다.
	<hr color="blue" width="60%" />
	
	<form action="add.jsp" method="post" name="form1">
		<select name="product" >
			<option >사과</option>
			<option >귤</option>
			<option >딸기</option>
			<option >포도</option>
			<option >복숭아</option>
		</select>
		<input type="submit" value="추가" />
	</form>
	<p/>
	<a href="checkOut.jsp">계산</a>
</div>
</body>
</html>