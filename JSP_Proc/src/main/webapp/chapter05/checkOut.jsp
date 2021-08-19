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
		<h2>계산</h2>
		선택한 상품 목록
		<hr />
		<%
		ArrayList list = (ArrayList) session.getAttribute("productlist");
		if (list == null) {
			out.print("상품 없음");
		} else {

			for (Object productname : list) {
				out.println(productname + "<br>");
			}
		}
		%>
	</div>
</body>
</html>