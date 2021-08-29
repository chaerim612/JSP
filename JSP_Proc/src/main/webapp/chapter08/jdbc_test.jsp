<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% request.setCharacterEncoding("UTF-8"); %>
<% 
	//데이터베이스 연결 관련 클래스의 인스턴스 변수 선언
	Connection con=null;	//연결ㄴㅅ
	PreparedStatement pstmt=null;	//sql코드
	//ResultSet rs=	//결과값 받기
	
	//SQL 코드 결과값 반환하는 클래스의 인스턴스 변수
	//ResultSet rs= //결과값 받기
	//데이터베이스 연결 관련 문자열 선언
	String jdbc_driver="oracle.jdbc.driver.OracleDriver";
	String jdbc_url="jdbc:oracle:thin:@localhost:1521:xe";
	
	
	try{
		
		//jdbc 드라이버 로드
		Class.forName(jdbc_driver);
		
		//연결 정보
		con=DriverManager.getConnection(jdbc_url,"system","1234");
		
		//SQL문 작성을 위한 statement 작성
		String sql="insert into jdbc_test values(?,?)";
		
		pstmt=con.prepareStatement("insert into jdbc_test values(?,?)");
		pstmt.setString(1, request.getParameter("username"));
		pstmt.setString(2, request.getParameter("email"));
		
		//username값을 입력한 경우 sql로 수행
		if(request.getParameter("username")!=null){
			pstmt.executeUpdate();
		}
		
	}catch(Exception e){
		e.printStackTrace();
	}
%>
<html>
<head>
<title>jdbc test</title>
</head>
<body>
	<div align=center>
		<h2>고객 등록</h2>
		<hr />
		<form action="jdbc_test.jsp" method="post">
			고객 이름 : <input type="text" name="username" /> <br />
			고객 이메일 : <input type="text" name="email"/> <br />
			<input type="submit" value="간단회원가입"/>
		</form>
	<hr />
	</div>
	# 등록 목록<p/>
	<% 
		try{
			String sql="select username,email from jdbc_test";
			pstmt=con.prepareStatement(sql);
			
			//Select를 수행하고 데이터 정보가 ResultSet 클래스에 담겨서 값을 반환함
			ResultSet rs=pstmt.executeQuery();
			int i=1;
			//마지막 데이터까지 반복해서 가져옴
			while(rs.next()) {
				out.print(i+" : "+rs.getString(1)+", "+rs.getString("email")+"<br>");
				i++;
			}
			rs.close();
			pstmt.close();
			con.close();
			
		}catch(Exception e){
			e.printStackTrace();
		}
	%>
</body>
</html>