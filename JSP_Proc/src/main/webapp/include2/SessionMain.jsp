<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>

<%
 //Center���� ������ �ֱ� ���ؼ� request��ü�� �̿��Ͽ� center���� �޾ƿ�
 String center=request.getParameter("center");

//ó�� SessionMain.jsp�� �����ϸ� null���� ����ǹǷ� nulló���� ����
if(center==null){
	center="Center.jsp";
}

%>

<center>
 <table width="1200" border="1">
 <!-- Top �κ� -->
 <tr height="100" >
  <td align="center" colspan="2"> 
  <jsp:include page="Top.jsp"/> 
  </td>
 </tr>
 
  <!-- Left �κ� -->
 <tr height="500">
  <td align="center" width="250"> 
  <jsp:include page="Left.jsp"/> 
  </td>
  
 <!-- Center �κ� -->
  <td align="center" width="900"> 
  <jsp:include page="<%=center%>"/> 
  </td>
 </tr> 
 
 <!-- Bottom �κ�-->
 <tr height="100">
  <td align="center" colspan="2"> 
  <jsp:include page="Bottom.jsp"/> 
  </td>
 </tr>
 
 </table>
 
 </center>

</body>
</html>