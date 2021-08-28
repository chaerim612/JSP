<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" 
import="jspbook.ch07.*, java.util.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="am" class="jspbook.ch07.AddrManager" scope="application"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addr_list</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<link
	href="https://getbootstrap.com/docs/4.0/examples/signin/signin.css"
	rel="stylesheet" crossorigin="anonymous" />
</head>
<body>
	<center>
	<h2>주소록</h2>
	<hr />
	<a href="addr_form.jsp">고객정보추가</a><p>
	<form action="sname.jsp" method="post">
		검색 : <input type="text" name="sname">&nbsp;&nbsp;<input type="submit" value="검색">
	</form>
	<p/>
	<table border="1" width="500">
	<tr>
	<td>이름</td><td>전화번호</td><td>이메일</td><td>성별</td>
	</tr>
<% 
	 for(AddrBean ab:am.getAddList()){
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