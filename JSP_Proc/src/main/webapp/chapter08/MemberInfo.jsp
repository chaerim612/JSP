<%@page import="memberVO.MemberBean"%>
<%@page import="memberVO.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemberInfo</title>
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

MemberDAO mDao=new MemberDAO();
MemberBean bean=mDao.oneSelectMember(id);
%>
<!-- 테이블 태그를 이용해서 화면에 데이터를 출력하는 구현부 -->
	<center>
		<h2>회원 상세 정보</h2>
		<hr />
		<table width="400" border="1">
			<tr height="40">
				<td align="center" width="150" bgcolor="powderblue">아이디</td>
				<td width="250" bgcolor="white"><%=bean.getId() %></td>
			</tr>
			<tr height="40">
			<td align="center" width="150" bgcolor="powderblue">이메일</td>
			<td width="250" bgcolor="white"><%=bean.getEmail() %></td>
			</tr>
			<tr height="40">
			<td align="center" width="150" bgcolor="powderblue">전화번호</td>
			<td width="250" bgcolor="white"><%=bean.getPhone() %></td>
			</tr>
			<tr height="40">
			<td align="center" width="150" bgcolor="powderblue">나이</td>
			<td width="250" bgcolor="white"><%=bean.getAge() %></td>
			</tr>
			<tr height="40">
			<td align="center" width="150" bgcolor="powderblue">취미</td>
			<td width="250" bgcolor="white"><%=bean.getHobby() %></td>
			</tr>
			<tr height="40">
			<td align="center" width="150" bgcolor="powderblue">정보</td>
			<td width="250"><textarea cols="30" rows="5"><%=bean.getInfo() %></textarea></td>
			</tr>
			<tr>
			<td align="center" colspan="2" bgcolor="gray">
			<!-- 아이디를 물고 감! -->
			<input type="button" value="수정" onclick="location.href='MemberUpdate.jsp?id=<%=bean.getId()%>'"/>
			<input type="button" value="삭제" />
			<input type="button" value="전체회원목록" onclick="location.href='MemberList.jsp'"/>
			<input type="button" value="회원가입" onclick="location.href='memberDB_form.jsp'"/>
			
			</td>
			</tr>
			
		</table>
	</center>
</body>
</html>