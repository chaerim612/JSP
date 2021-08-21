<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>LoginProc.jsp</title>
</head>
<body>
	<table width="400" border="1" cellspacing="1" cellpadding="5">
			<tr>
				<td width="50">아이디</td>
				<td width="100"><%=request.getParameter("id")%></td>
			</tr>
			<tr>
				<td width="50">비밀번호</td>
				<td width="100"><%=request.getParameter("pass")%></td>
			</tr>
		</table>
	<hr />
	<%
   //post 방식에서 한글깨짐 방지
   request.setCharacterEncoding("euc-kr");
   String id=request.getParameter("id");
   String pass=request.getParameter("pass");
	%>
	당신은 id=<%=id %>이고 패스워드는 <%=pass %>입니다.
</body>
</html>