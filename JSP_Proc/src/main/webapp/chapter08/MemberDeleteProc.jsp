<%@page import="jspbook.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MemberDeleteProc</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	%>
	<jsp:useBean id="mbean" class="jspbook.model.MemberDBBean">
		<jsp:setProperty name="mbean" property="*" />
	</jsp:useBean>


	<%
	MemberDAO mdao = new MemberDAO();
	String pass = mdao.getPass(mbean.getId());

	if (mbean.getPw1().equals(pass)) {
		mdao.DeleteMember(mbean.getId());
	%>
	<script type="text/javascript">
		alert("삭제 완료");
		location.replace('Memberlist.jsp');
	</script>
	<%
	//또는
	//response.sendRedirect("MemberList.jsp");	
	} else {
	%>
	<script type="text/javascript">
		alert("비밀번호가 틀립니다.");
		history.go(-1);
	</script>
	<%
	}
	%>
</body>
</html>