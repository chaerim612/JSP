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

	//session.getAttribute�� �������κ��� productlist��� �̸��� Arraylist ��ü�� ������ ��ǰ ����Ʈ ��������
	//session�� Object Ÿ������ ��ȭ���Ƿ� (Arraylist)�� �ٿ�ĳ�������ش�. 
	ArrayList<String> list = (ArrayList) session.getAttribute("productlist");

	//list�� null�̸� �ϴ� ���ο� ��ü�� ����
	if (list == null) {
		//out.println("������ ��ǰ�� �����ϴ�. ");
		list = new ArrayList<String>();
		session.setAttribute("productlist", list);
	}
	list.add(productname);
	%>

	<script>
	alert("<%=productname%> �߰�");
	history.go(-1);
	</script>
</body>
</html>

<!-- history.go(0) : ���� ������ ���ε�
history.go(-1) : ���ܰ�
history.go(-2) : �����ܰ�
history.back() : history.go(-1)�� ����
 -->