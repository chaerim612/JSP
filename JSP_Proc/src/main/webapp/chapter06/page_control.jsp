<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>page_control.jsp</title>
</head>
<body>
	<h2>forward, sendRedirect 테스트</h2>
	<hr />
	<form action="forward_action2.jsp" method="post">
		forward_action : <input type="text" name="username" >
						 <input type="submit" value="Requst" >
	</form>
	
	<form action="response_sendRedirect.jsp" method="post">
		response_sendRedirect : <input type="text" name="username" >
						 <input type="submit" value="Response" >
	</form>
</body>
</html>


<%-- <jsp:forward> 액션태그(Param넘어감): 소스 복사가 아니고 제어권이 다른 페이지로 넘어갔다가 다시 돌아옴
response.sendRedirect() 메소드(Param넘어갈수 없음) : 처음 클라이언트가 요청한 URL과 전혀 다른 페이지로 넘어감(response) --%>




