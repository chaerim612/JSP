<%@page import="memberVO.MemberBean"%>
<%@page import="memberVO.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemberUpdate</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" 
	rel="stylesheet" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<link
	href="https://getbootstrap.com/docs/4.0/examples/signin/signin.css"
	rel="stylesheet" crossorigin="anonymous" />
</head>
<body>
	<%
		String id=request.getParameter("id");
		/* String email=request.getParameter("email");
		String phone=request.getParameter("phone"); */
		
		MemberDAO mdao=new MemberDAO();
		MemberBean mbean=mdao.oneSelectMember(id);
		
	%>
	<center>
	<h2>회원정보 수정</h2>
	<form action="MemberUpdateProc.jsp" method="post">
	<table width="400" border="1">
	<tr height="40">
	<td align="center" width="150">아이디</td>
	<td width="250"><%=mbean.getId() %></td>
	</tr>
	<tr height="40">
	<td align="center" width="150">이메일</td>
	<td width="250"><input type="text" name="email" value="<%=mbean.getEmail() %>"></td>
	</tr>
	<tr height="40">
	<td align="center" width="150">전화번호</td>
	<td width="250"><input type="text" name="phone" value="<%=mbean.getPhone() %>"></td>
	</tr>
	<tr height="40">
	<td align="center" width="150">주소</td>
	<td width="250"><input type="text" name="address" value="<%=mbean.getAddress() %>"></td>
	</tr>
	<tr height="40">
	<td align="center" width="150">패스워드</td>
	<td width="250"><input type="password" name="pass1"></td>
	</tr>
	<tr height="40">
	<td colspan="2" align="center">
	<input type="hidden" name="id" value="<%=id %>"/>
	<input type="submit" value="수정완료" />
	<input type="button" value="전체회원목록" onclick="location.href='MemberList.jsp'"/>
	</td>
	</tr>
	</table>
	</form>
	</center>
</body>
</html>