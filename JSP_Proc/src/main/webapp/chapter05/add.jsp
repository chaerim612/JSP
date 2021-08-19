<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>add</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	String productname = request.getParameter("product");

	//session.getAttribute의 세션으로부터 productlist라는 이름의 Arraylist 객체를 생성해 상품 리스트 가져오기
	//session은 Object 타입으로 반화노디므로 (Arraylist)로 다운캐스팅해준다. 
	ArrayList<String> list = (ArrayList) session.getAttribute("productlist");

	//list가 null이면 일단 새로운 객체를 생성
	if (list == null) {
		//out.println("선택한 상품이 없습니다. ");
		list = new ArrayList<String>();
		session.setAttribute("productlist", list);
	}
	list.add(productname);
	%>

	<script>
	alert("<%=productname%> 추가");
	history.go(-1);
	</script>
</body>
</html>

<!-- history.go(0) : 현재 페이지 리로드
history.go(-1) : 전단계
history.go(-2) : 전전단계
history.back() : history.go(-1)와 동일
 -->