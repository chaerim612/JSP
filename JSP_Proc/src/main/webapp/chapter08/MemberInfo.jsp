
<%@page import="jspbook.model.MemberDBBean"%>
<%@page import="jspbook.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Memberinfo</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<link
	href="https://getbootstrap.com/docs/4.0/examples/signin/signin.css"
	rel="stylesheet" crossorigin="anonymous" />
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String id=request.getParameter("id");

	MemberDAO mdao=new MemberDAO();
	MemberDBBean bean=mdao.oneSelectMember(id);
%>

<!-- table태그를 이용해서 화면에 데이터를 출력하는 구현부 -->

	<center>
		<h2>회원 상세정보</h2>
		<table width="400" border="1">
			<tr height="40">
				<td align="center" width="150" bgcolor="powderblue">아이디</td>
				<td width="150" bgcolor="Moccasin"><%=bean.getId() %></td>
			</tr>
			
			<tr height="40">
				<td align="center" width="150" bgcolor="powderblue">이메일</td>
				<td width="250" bgcolor="Moccasin"><%=bean.getEmail() %></td>
			</tr>
			
			<tr height="40">
				<td align="center" width="150" bgcolor="powderblue">전화번호</td>
				<td width="250" bgcolor="Moccasin"><%=bean.getPhone() %></td>
			</tr>
			
			<tr height="40">
				<td align="center" width="150" bgcolor="powderblue">취미</td>
				<td width="250" bgcolor="Moccasin"><%=bean.getHobby() %></td>
			</tr>
			
			<tr height="40">
				<td align="center" width="150" bgcolor="powderblue">나이</td>
				<td width="250" bgcolor="Moccasin"><%=bean.getAge() %></td>
			</tr>
			
			<tr height="40">
				<td align="center" width="150" bgcolor="powderblue">정보</td>
				<td width="250"><textarea rows="5" cols="30"><%=bean.getInfo()%></textarea></td>
			</tr>
			
			<tr height="40">
			<td align="center" colspan="2" bgcolor="powderblue">
				<input type="button" value="수정" onclick="location.href='MemberUpdate.jsp?id=<%=bean.getId()%>'">
				<input type="button" value="삭제" onclick="location.href='MemberDelete.jsp?id=<%=bean.getId()%>'">
				<input type="button" value="전체회원목록" onclick="location.href='Memberlist.jsp'">
				<input type="button" value="회원가입" onclick="location.href='MemberDB_Form.jsp'">
			</td>
			</tr>
		</table>
	</center>






</body>
</html>