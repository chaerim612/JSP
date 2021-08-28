<%@page import="memberVO.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemberUpdateProc</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" 
	rel="stylesheet" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<link
	href="https://getbootstrap.com/docs/4.0/examples/signin/signin.css"
	rel="stylesheet" crossorigin="anonymous" />
</head>
<body>
<jsp:useBean id="mbean" class="memberVO.MemberBean"/>
<!-- 모든 데이터 갱신 -->
<jsp:setProperty property="*" name="mbean"/>

	<%
	MemberDAO mdao = new MemberDAO();
	String pass = mdao.getPass(mbean.getId());

	if (mbean.getPw1().equals(pass)) {
		mdao.updateMember(mbean);
		response.sendRedirect("MemberList.jsp");
	} else {
	%>
	<script type="text/javascript">
		alert("비밀번호가 일치하지 않습니다.");
		history.go(-1);
	</script>
	<%
	}
	%>

</body>
</html>