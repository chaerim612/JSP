<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
	<center>

		<!-- ���� Ȱ��� ��� -->
		<h1>���� �α��� ó�� 1</h1>
		<%
		  //���尴ü�� ����� ���
		  String id = request.getParameter("id");
		  String pass = request.getParameter("pass");
		  // ----------------------
		  
		  //���尴ü�� session�� �̿��ؼ� ���̵� ó��
		  session.setAttribute("id", id);
		  session.setAttribute("pass", pass);
		  session.setAttribute("name", "chalie");
		  
		  session.setMaxInactiveInterval(60);//1���� �ǹ� 
		  
		  response.sendRedirect("IncludeTest.jsp");
		  
		 %>

	</center>
</body>
</html>