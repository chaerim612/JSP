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
		<h2>��ǰ����</h2>
		<hr />
		<%=session.getAttribute("username")%>
		�� ȯ���մϴ�.
		<hr />
		<form action="add.jsp" method="post" name="form2">
			<select name="product">
				<option>���</option>
				<option>��</option>
				<option>����</option>
				<option>�ٳ���</option>
				<option>������</option>
			</select>
			<input type="submit" value="�߰�"/>
		</form>
		<a href="checkOut.jsp">���</a>
	</div>
</body>
</html>