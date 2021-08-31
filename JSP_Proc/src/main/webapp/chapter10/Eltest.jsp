<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Eltest</title>
</head>
<body>
<h2>스크립트 릿 태그</h2>
<%
int a=3;
out.print("a = "+a);
request.setAttribute("b", "3");
request.setAttribute("hi", "5");
%>
<hr />
<h3>스크립트 태그_표현식</h3>
a=<%=a %> <br />
a=<%=a>4 %> <br />
a=<%=3+"4" %> <br /><!-- 문자데이터로 연산 시 문자 타입으로 자동 변환 -->
<hr />
<h3>EL 태그</h3>
1. a=${a } <br /> <!-- 일반 변수 선언은 받을 수 없음 -->
2. b=${b } <br />
3. hi=${hi>4 } <br /> <!-- 숫자와 문자의 관계 연산도 가능 -->
4. b=${b+4 }
</body>
</html>