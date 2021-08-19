<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h2>application</h2>
<hr />
1. 서버정보 : <%=application.getServerInfo() %><br />
2. 서블릿 API 버전 정보 : <%= application.getMajorVersion()+", "+application.getMinorVersion() %>
</div>
</body>
</html>