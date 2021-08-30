<%@page import="jspbook.model.MemberDAO"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member DB Join</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	//취미 부분 별도 처리
	String [] hobby=request.getParameterValues("hobby");
	//베열에 있는 내용을 하나의 스트링으로 저장하기 위한 변수형
	String texthobby="";
	
	for(int i=0;i<hobby.length;i++){
		texthobby+=hobby[i]+" ";
	}
%>
<jsp:useBean id="mbean" class="jspbook.model.MemberDBBean">
	<jsp:setProperty name="mbean" property="*"/> <!-- 서버로 넘어간 속성을 매핑해 setter -->
</jsp:useBean>
<% 
	mbean.setHobby(texthobby);	//스트링 처리 될 변수명으로 대체
	
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String user="system";
	String pass="1234";
	/*
	try{
		//1. 드라이버 로딩
		Class.forName("oracle.jdbc.driver.OracleDriver");	//ojdbc6.jar을 로드함
		//2. 해당 데이터베이스에 접속
		Connection con=DriverManager.getConnection(url,user,pass);
		//여기까지가 데이터베이스 접속 완료
		
		//3. 쿼리 준비
		
		//5. 자원 반납
		con.close();
		
	}catch(Exception e){
		e.printStackTrace();
	}*/
	MemberDAO mdao=new MemberDAO();
	mdao.insertMember(mbean);
%>
오라클에 정보 입력 완료!
</body>
</html>