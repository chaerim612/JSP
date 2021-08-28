<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
request.setCharacterEncoding("UTF-8"); 
String username=request.getParameter("username");

if(username!=null){
	session.setAttribute("user",username);
}
%>
<html>
<head>
<meta charset="UTF-8">
<title>twitter_list</title>
</head>
<body>
<div align=center>
<h2>My Twitter</h2>
<hr />
<form action="tweet.jsp" method="post">
	<%=session.getAttribute("user") %>
	<input type="text" name="msg" placeholder="댓글을 입력하세요. "/>
	<input type="submit" value="Tweet"/>
</form>
</div>
<div align=left>
<hr />
	<ul>
		<%	
			/*application 내장 객체를 통해 Arraylist에 msg라는 이름으로 객체 생성을 하여 댓글을 가져옴*/
			ArrayList<String> msgs=(ArrayList<String>)application.getAttribute("msgs");
			
			//msgs가 null이 아닌 경우
			if(msgs!=null){
				for(String msg:msgs){
					out.println("<li>"+msg+"</li><br>");
				}
			}
		%>
	</ul>
</div>
</body>
</html>