<%@page import="jspbook.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<link
	href="https://getbootstrap.com/docs/4.0/examples/signin/signin.css"
	rel="stylesheet" crossorigin="anonymous" />
<meta charset="UTF-8">
<title>MeberUpdteProc</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="mbean" class="jspbook.model.MemberDBBean">
	<jsp:setProperty name="mbean" property="*"/> <!-- 모든 데이터 갱신 -->
</jsp:useBean>

<%
	MemberDAO mdao=new MemberDAO();
	String pw=mdao.getPass(mbean.getId());
	
	if(mbean.getPw1().equals(pw)){
		mdao.updateMember(mbean);
		response.sendRedirect("Memberlist.jsp");
	}else{
		%><script type="text/javascript">
			alert("패스워드가 일치하지 않습니다. ")
			history.go(-1);
		</script><%
	}
%>
</body>
</html>