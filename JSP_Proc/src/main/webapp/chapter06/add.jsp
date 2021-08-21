<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>add.jsp</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String productname=request.getParameter("product");
	
	//session.getAttribute의 세션으로 부터 productlist라는 이름의 ArrayList 객체를 생성하여 상픔리스트를 가져오기
	//session은 Object타입으로 반환되므로 (ArrayList)로 다운캐스팅한다
	ArrayList<String> list=(ArrayList)session.getAttribute("productlist");
	
	//list가 null이면 일단 새로운 객체를 생성
	if(list==null){
		list=new ArrayList<String>();
		session.setAttribute("productlist", list);
	}
	
	list.add(productname);

%>

<script>
	alert("<%=productname%>이(가) 추가 되었습니다.");
	history.go(-1);
</script>
</body>
</html>



<!-- history.go(0) : 현재 페이지 리로드
history.go(-1) : 전단계
history.go(-2) : 전전단계
history.back() : history.go(-1)와 동일
 -->