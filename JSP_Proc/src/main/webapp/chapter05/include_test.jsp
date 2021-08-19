<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" errorPage="error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>include 지시어(디렉티브)</title>
</head>
<body>
	<div align="center">
		<h2>include 지시어 테스트</h2>
		<hr />
		<%@ include file="menu.jsp"%>
		<p />

		<table cellpadding=5 cellspacing=1>
			<tr>
				<td><font size=-1><%@include file="news.jsp" %></font></td>
				<td width="20">&nbsp;</td>
				<td><font size=-1><%@include file="shopping.jsp" %></font></td>
			</tr>
		</table>
	</div>
</body>
</html>

<!-- cellpadding : 셀과 글자사이의 간격
cellspacing : 칸과 칸사이의 간격 
@ include 지서어: 원래 페이지 안으로 include지시어에서 지정한 페이지가 통째로 들어옴-->