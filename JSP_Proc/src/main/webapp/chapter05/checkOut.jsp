<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>checkOut</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	%>
	<div align="center">
		<h2>���</h2>
		������ ��ǰ ���
		<hr />
		<%
		ArrayList list = (ArrayList) session.getAttribute("productlist");
		if (list == null) {
			out.print("��ǰ ����");
		} else {

			for (Object productname : list) {
				out.println(productname + "<br>");
			}
		}
		%>
	</div>
</body>
</html>