<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
  request.setCharacterEncoding("UTF-8");
  String username=request.getParameter("username");
  
  if(username != null){
	session.setAttribute("user", username);  
  }
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>twitter_list.jsp</title>

	<style>
		div{
			margin:0px;
			padding:1px;
			background-color:#00BFFF;
			text-align: center;
			color:white;
		}
		h2,h5{
			margin:0px;
		}
		div.div1{
			text-align: left;
		}
	</style>
</head>
<body>
	<div>
		<h2>My Simple Twitter</h2>
		<hr width="70%" color="white" />
		
		<form action="tweet.jsp" method="post">
			<strong><%= session.getAttribute("user") %></strong>&nbsp;
			<input type="text" name="msg" placeholder="트윗을 남겨보세요." autofocus/>&nbsp;
			<input type="submit" value="Tweet" >
		</form>
		<hr width="70%" color="white" />
		<div class="div1">
		<h5>&nbsp;&nbsp;트윗↓↓</h5>
		<hr color="white" />
		<UL>
		<%
		   /* application 내장객체를 통해서 ArrayList에 msgs라는 이름으로 객체생성하여 댓글 가져옴 */
			ArrayList<String> msgs=(ArrayList<String>)application.getAttribute("msgs");
		
		   //msgs가 null이 아닌 경우에만 목록 출력
		   if(msgs != null){
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










