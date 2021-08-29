<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="addr" class="jspbook.ch07.AddrBean"/>
<jsp:setProperty name="addr" property="*"/>
<jsp:useBean id="am" class="jspbook.ch07.AddrManager" scope="application"/>
<% 
	am.add(addr); //AddrBean에 등록되는 정보를 AddrManager에 모두 추가
%>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<title></title>
</head>
<body>
<div>
<h2>등록 내용</h2>
이름 : <jsp:getProperty property="username" name="addr"/> <br />
전화번호 : <%=addr.getTel() %> <br />
이메일 : <%=addr.getEmail() %> <br />
성별 : <%=addr.getGender() %> <br />
<hr />
<a href="addr_list.jsp">목록보기</a>
</div>
</body>
</html>