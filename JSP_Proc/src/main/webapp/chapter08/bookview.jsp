<%@ page import="java.sql.*" contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
  Class.forName("oracle.jdbc.driver.OracleDriver");
  String url="jdbc:oracle:thin:@localhost:1521:xe";
  Connection dbconn=DriverManager.getConnection(url, "madang", "1234");
  Statement stmt = dbconn.createStatement();
  String bookid=request.getParameter("bookid");
  ResultSet myResultSet=stmt.executeQuery("SELECT * FROM Book WHERE bookid='"+bookid+"'");
  if(myResultSet!=null){
   myResultSet.next();
%>
<html>

<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<title>** Book VIEW **</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<link
	href="https://getbootstrap.com/docs/4.0/examples/signin/signin.css"
	rel="stylesheet" crossorigin="anonymous" />
</head>

<body bgcolor="white" text="black" link="blue" vlink="purple" alink="red">
<center>
<table border="1" cellspacing="0" width="400" bordercolor="#9AD2F7"
		bordercolordark="white" bordercolorlight="#B9E0FA">
		
	 <tr>
	<td width="150" height="40" >
	   <p align="center">
	   <span style="font-size:9pt ;">아이디</span></p>
	</td>
	<td width="513">
	   <p><span style="font-size:9pt;">
	   <%=myResultSet.getString("BOOKID")%></span></p>
	</td>
   </tr>	
			
   <tr>
	<td width="150" height="40" >
	   <p align="center">
	   <span style="font-size:9pt ;">책 제 목</span></p>
	</td>
	<td width="513">
	   <p><span style="font-size:9pt;">
	   <%=myResultSet.getString("BOOKNAME")%></span></p>
	</td>
   </tr>
   <tr>
	<td width="150" height="40">
	   <p align="center">
	   <span style="font-size:9pt ;">출 판 사</span></p>
	</td>
	<td width="513">
	   <p><span style="font-size:9pt;">
	   <%=myResultSet.getString("PUBLISHER")%></span></p>
	</td>
   </tr>
   <tr>
	<td width="150" height="40">
	   <p align="center">
	   <span style="font-size:9pt ;">가 격</span></p>
	</td>
	<td width="513">
	   <p><span style="font-size:9pt;">
	   <%=myResultSet.getString("PRICE")%></span></p>
	</td>
   </tr>
</table>
<table cellpadding="0" cellspacing="0" width="400" height="23">
   <tr>
	<td width="150">
	   <p align="right"><span style="font-size:9pt;">
	   <a href="booklist.jsp?">
	   <font color="black">목록</font></a></span></p>
	</td>
   </tr>
</table>
</center>
<%
  }
  stmt.close();
  dbconn.close();
%>
</body>
</html>
