<%@ page import="java.sql.*" contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
//연결
 Class.forName("oracle.jdbc.driver.OracleDriver");
 String url="jdbc:oracle:thin:@localhost:1521:xe"; 
 Connection dbconn=DriverManager.getConnection(url, "madang", "1234");
 //쿼리 실행
 Statement stmt = dbconn.createStatement();
 ResultSet myResultSet=stmt.executeQuery("SELECT * FROM Book");
%>
<html>

<head>
<meta http-equiv="content-type" content="text/html; charset=euc-kr">
<title>** BOOK LIST **</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<link
	href="https://getbootstrap.com/docs/4.0/examples/signin/signin.css"
	rel="stylesheet" crossorigin="anonymous" />
</head>

<body bgcolor="white" text="black" link="blue" vlink="purple" alink="red">
<center>
<table  width="400" border="1" cellspacing="0" cellpading="5">
    <tr>
        <td width="150" height="30" bgcolor="#D2E9F9" align="center">
            <span style="font-size:8pt;"><b>BOOKNAME</b></span></p>
        </td>
        <td width="150" height="30" bgcolor="#D2E9F9" align="center">
            <span style="font-size:8pt;"><b>PUBLISHER</b></span></p>
        </td>
        <!-- <td width="70" height="30" bgcolor="#D2E9F9">
            <p align="center">
            <span style="font-size:8pt;"><b>PRICE</b></span></p>
        </td> -->
    </tr>
 <%
 if(myResultSet!=null){
  while(myResultSet.next()){
     String W_BOOKID=myResultSet.getString("bookid");
     String W_BOOKNAME=myResultSet.getString("bookname");
     String W_PUBLISHER=myResultSet.getString("publisher");
     /* String W_PRICE=myResultSet.getString("price"); */
 %>   
    <tr>
	    <td width="150" height="30">
             <p><span style="font-size:9pt;">
             <a href="bookview.jsp?bookid=<%=W_BOOKID%>"><font face="돋움체" color="black"><%=W_BOOKNAME%></font></a></span></p>
         </td>
	    <td width="150" height="30">
            <p align="center"><span style="font-size:9pt;">
            <font face="돋움체"><%=W_PUBLISHER%></font></span></p>
        </td>

       <%--  <td width="50" height="30">
            <p align="center"><span style="font-size:9pt;">
            <font face="돋움체"><%=W_PRICE%></font></span></p>
        </td> --%>
    </tr>
 <%
    }
   }
   stmt.close();
   dbconn.close();
 %>    
 </center>
</table>
<center>
<table cellpadding="0" cellspacing="0" width="400" height="23">
    <tr>
        <td width="1350">
            <p align="right"><b><a href="booklist.jsp">
            <font size="1" face="돋움체" color="black">LIST</font></a></b></p>
        </td>
    </tr>
</table>
</center>
</body>
</html>