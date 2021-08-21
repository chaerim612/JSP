<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ResponseProc.jsp</title>
</head>
<body>
	<%
	String dbid = "soldesk";
	String dbpass = "12345";

	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	//데이터베이스에 있는 아이디와 비밀번호가 입력한 아이디 비밀번호와 모두 일치하는지를 확인
	if (dbid.equals(id) && dbpass.equals(pass)) {
		session.setAttribute("id", id);
		//post방식
		response.sendRedirect("ResponseLogin.jsp");
		//한줄코드로 구분자(?)를 이용하여 값 넘기기
		/* response.sendRedirect("ResponseLogin.jsp?id="+id); */
	} else {
	%>
	<script type="text/javascript">
		alert("아이디가 또는 비밀번호가 틀립니다.")
		history.go(-1);
	</script>
	<%
	}
	%>
	
	 감사합니다(출력은 불가능)
</body>
</html>