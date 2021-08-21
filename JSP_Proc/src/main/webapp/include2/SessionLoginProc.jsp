<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<center>
 
<!-- 세션 활용시 사용 -->
 <h1>세션  로그인 처리 1</h1>
 <%
  //내장객체를 사용할 경우
  String id = request.getParameter("id");
  String pass = request.getParameter("pass");
  // ----------------------
  
  //내장객체인 session을 이용해서 아이디 처리
  session.setAttribute("id", id);
  session.setAttribute("pass", pass);
  session.setAttribute("name", "chalie");
  
  session.setMaxInactiveInterval(60);//1분을 의미 
  
  response.sendRedirect("IncludeTest.jsp");
  
 %>
 
 </center>
</body>
</html>