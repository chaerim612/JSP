<%@page import="jspbook.ch07.AddrBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="am" class="jspbook.ch07.AddrManager"
	scope="application" />
<html>
<head>
<meta charset="UTF-8">
<title>address list</title>
</head>
<body>
	<center>
		<h2>주소록</h2>
		<a href="addr_form.jsp">고객 명단 추가</a>
		<hr />
		<form action="sname.jsp" method=post>
			검색 : <input type="text" name="sname" />&nbsp&nbsp <input
				type="submit" value="검색" />
		</form>
		<p />
		<table border="1" width=500>
			<tr>
				<td>이름</td>
				<td>전화번호</td>
				<td>이메일</td>
				<td>성별</td>
			</tr>
			<%
			for (AddrBean ab : am.getAddList()) {
			%>
			<tr>
				<td><%=ab.getUsername()%></td>
				<td><%=ab.getTel()%></td>
				<td><%=ab.getEmail()%></td>
				<td><%=ab.getGender()%></td>
			</tr>
			<%
			}
			%>

		</table>
	</center>
</body>
</html>