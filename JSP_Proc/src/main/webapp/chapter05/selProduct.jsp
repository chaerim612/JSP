<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>selProduct</title>
</head>
<%
request.setCharacterEncoding("UTF-8");
session.setAttribute("username", request.getParameter("username"));
%>
<body>
	<div align="center">
		<h2>상품선택</h2>
		<hr />
		<%=session.getAttribute("username")%>
		님 환영합니다.
		<hr />
		<form action="add.jsp" method="post" name="form2">
			<select name="product">
				<option>사과</option>
				<option>귤</option>
				<option>수박</option>
				<option>바나나</option>
				<option>복숭아</option>
			</select>
			<input type="submit" value="추가"/>
		</form>
		<a href="checkOut.jsp">계산</a>
	</div>
</body>
</html>