<%@page import="memberVO.MemberDAO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MemberDBJoin</title>
</head>
<body>
<% 
   request.setCharacterEncoding("UTF-8");
   //취미부분은 별도처리해야함
   String [] hobby=request.getParameterValues("hobby");
   //배열에 있는 내용을 하나의 스트림으로 저장하기 위한 변수방
   String texthobby="";
   
   for(int i=0;i<hobby.length;i++){
      
      texthobby +=hobby[i]+" ";
   }
%>
<jsp:useBean id="mbean" class="memberVO.MemberBean">
   <jsp:setProperty name="mbean" property="*" /> <!-- 서버로 넘어간 속성과 매핑하여 setter함 -->
</jsp:useBean>
<% 

   mbean.setHobby(texthobby); //기존 주소번지를 스트림처리된 변수방으로 대체
   
   MemberDAO mdao=new MemberDAO();
   mdao.insertMember(mbean);
   
   response.sendRedirect("Memberlist.jsp");
%>
오라클에 입력 완료~

</body>
</html>