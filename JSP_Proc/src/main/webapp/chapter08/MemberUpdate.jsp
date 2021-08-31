<%@page import="jspbook.model.MemberDBBean"%>
<%@page import="jspbook.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Member Update</title>
</head>
<body>
	<%
 String id=request.getParameter("id");
 /* String email=request.getParameter("email");
 String phone=request.getParameter("phone");*/

 MemberDAO mdao=new MemberDAO();
 MemberDBBean mbean=mdao.oneSelectMember(id);

%>
	<center>
		<h2>회원정보 수정</h2>
		<form action="MeberUpdteProc.jsp" method="post">
			<table width="400" border="1">
				<tr height="40">
					<td align="center" width="150">아이디</td>
					<td width="250"><%=mbean.getId() %></td>
				</tr>

				<tr height="40">
					<td align="center" width="150">이메일</td>
					<td width="250"><input type="text" name="email"
						value="<%= mbean.getEmail() %>"></td>
				</tr>

				<tr height="40">
					<td align="center" width="150">전화번호</td>
					<td width="250"><input type="text" name="phone"
						value="<%= mbean.getPhone() %>"></td>
				</tr>

				<tr height="40">
					<td align="center" width="150">주소</td>
					<td width="250"><input type="text" name="address"
						value="<%= mbean.getAddress() %>"></td>
				</tr>

				<tr height="40">
					<td align="center" width="150">패스워드</td>
					<td width="250"><input type="password" name="pw1"></td>
				</tr>

				<tr height="40">
					<td align="center" colspan="2"><input type="hidden" name="id"
						value="<%=id %>"> <input type="submit" value="수정완료">
						<input type="button" value="전체회원목록"
						onclick="location.href='Memberlist.jsp'"></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>