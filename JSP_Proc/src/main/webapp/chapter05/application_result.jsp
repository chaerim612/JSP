<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>application result</title>
</head>
<body>
	<div align="center">
		<h2>application ����</h2>
		<hr />
		user_name�� ������ ���� :
		<%=application.getAttribute("username")%><br />
		<%
		Integer count = (Integer) application.getAttribute("count");
		int cnt = count.intValue() + 1;
		application.setAttribute("count", cnt);
		%>
		count : <%=cnt %>
		<%=application.getAttribute("count")%>
	</div>
</body>
</html>