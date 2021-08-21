<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
 <%
//세션이 넘어오지 않는경우
/* String id = request.getParameter("id");
String pass = request.getParameter("pass");  */
	 
 //세션이 넘어오는 경우
 String id = (String)session.getAttribute("id");
 String paas= (String)session.getAttribute("paas"); 
 %>

<center>
 <h1>세션  로그인 처리 2</h1>
   넘어온 페이지....<br>
 <hr>
 <h2>  <%=id %>님 방갑습니다.</h2>

  </center>
</body>
</html>