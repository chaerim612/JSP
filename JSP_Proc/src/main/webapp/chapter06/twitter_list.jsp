<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% 
request.setCharacterEncoding("UTF-8");
String username=request.getParameter("username");

if(username != null){
   session.setAttribute("user",username);
   
}
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>twitter_list.jsp</title>
</head>
<body>
<div align="center">
<h2>My Simple Twitter</h2>
<hr />

<form action="tweet.jsp" method="post">
<%=session.getAttribute("user") %>
<input type="text" name="msg" placeholder="댓글을 남겨보세요" autofocus />
<input type="submit" value="Tweet" />
</form>
<hr />
<div align="left">
<UL>
<% 

/* application 내장객체를 통해서 ArrayList에 msgs라는 이름으로 객체생성하여 댓글 가져옴 */
ArrayList<String> msgs=(ArrayList)application.getAttribute("msgs");

//msgs가 null이 아닌 경우에만 목록 출력
if(msgs != null) {
   for(String msg:msgs){
      
      out.println("<LI>"+msg+"</LI>");
   }
   
}



%>
</UL>
</div>
</div>
</body>
</html>