<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
 <%
//������ �Ѿ���� �ʴ°��
/* String id = request.getParameter("id");
String pass = request.getParameter("pass");  */
	 
 //������ �Ѿ���� ���
 String id = (String)session.getAttribute("id");
 String paas= (String)session.getAttribute("paas"); 
 %>

<center>
 <h1>����  �α��� ó�� 2</h1>
   �Ѿ�� ������....<br>
 <hr>
 <h2>  <%=id %>�� �氩���ϴ�.</h2>

  </center>
</body>
</html>