<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//오라클 데이터베이스 연결 url을 설정
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="system";
String pw="1234";

//접속 코드는 네트워크에 문제가 생기면 설정이 안되므로 반드시 Exception처리를 한다. 
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection(url,user,pw);
}catch(Exception e){
	e.printStackTrace();
}
%>
내가 나오면 연결 성공!
</body>
</html>