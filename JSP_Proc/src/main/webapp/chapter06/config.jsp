<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Config</title>
</head>
<body>
<div align="center">
<h2>Config</h2>
<hr />
<%=config.getInitParameter("workspace") %><br>
<%=config.getInitParameterNames()%>
</div>
</body>
</html>

<!-- 웹 컨테이너 생성될 때, 전역변수처럼 초기화된 값을 사용하고자 할때 활용됨
설정된 값은 web.xml에 등록 가능 -->