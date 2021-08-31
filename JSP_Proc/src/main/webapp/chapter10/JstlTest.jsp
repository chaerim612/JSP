<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Jstl Test</title>
</head>
<body>
<!-- if문 사용법 : EL을 사용해 조건문 구현 -->
<c:if test="${4>3 }">
수업시작 <br />
</c:if>
<p>=========================================================</p>
<!-- 변수 선언 -->
<c:set var="i" value="4"></c:set>
<!-- int i=4 --> 
<%-- <% request.setAttribute("i", 4) %>와 같음 --%>

<c:if test="${i>3}">점심시간</c:if>
<p>=========================================================</p>
<!-- 반복문1 : begin ~ end -->
<!-- for(int i=1;i<11;i++) -->
<c:forEach var="i" begin="1" end="10">
<c:set var="sum" value="${sum=sum+i }"></c:set>
</c:forEach>
sum: ${sum }
<p>=========================================================</p>
<!-- 반복문2 : begin ~ end ~ step -->
<c:forEach var="j" begin="1" end="10" step="${j+2 }">
<c:set var="sum2" value="${sum2=sum2+j }"></c:set>
</c:forEach>
sum2: ${sum2 }
<p>=========================================================</p>

</body>
</html>