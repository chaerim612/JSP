<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<%
  //�α׾ƿ� Ŭ���� �Ķ���͸� ���ؼ� �α׾ƿ� ���� �Ǵ�
  String logout=request.getParameter("logout");
  if(logout !=null){
	//id�� null���� �ο�
	session.setAttribute("id", null);
	//���� �����ð��� kill
	session.setMaxInactiveInterval(0);
  }
 //������ ���Ͽ� id�� �о�帲
 String id=(String)session.getAttribute("id");
 //�α����� �Ǿ� ���� �ʴٸ� session���� nulló�� ����
  if(id==null){
	  id="Guest";
  }
%>



 <center>
 <table width="1200" >
 <tr height="100">
 <%-- �ΰ� �̹��� --%>
  <td colspan="2" align="center" width="220">
  <img alt="" src="./img/logo.jpg" width="200" height="70">
  </td>
  <td align="center" colspan="4"> <font size="10" color="orange">My Own Spring Camp</font></td>
 </tr>
 <tr height="50">
  <td width="130" align="center"> <a href="IncludeTest.jsp?camping=1" style="text-decoration:none">Tent</a></td>
  <td width="130" align="center"> <a href="IncludeTest.jsp?camping=2" style="text-decoration:none">Chair</a></td>
  <td width="130" align="center"> <a href="IncludeTest.jsp?camping=3" style="text-decoration:none">Dishware</a></td>
  <td width="130" align="center"> <a href="IncludeTest.jsp?camping=4" style="text-decoration:none">Sleeping bag</a></td>
  <td width="130" align="center"> <a href="IncludeTest.jsp?camping=5" style="text-decoration:none">Lantern</a></td>
  <td width="130" align="center"> <a href="IncludeTest.jsp?camping=6" style="text-decoration:none">Table</a></td>
   <td width="170" align="center"> 
   <%
    if(id.equals("Guest")){
   %>
    <%= id%>��  <button onclick="location.href='SessionMain.jsp?center=SessionLoginForm.jsp'">�α���</button>
    <% }else{  %>
    <%= id%>��   <button onclick="location.href='SessionMain.jsp?logout=1'">�α׾ƿ�</button>
    <% }%> 
    </td>
 </tr> 
 </table>
 
 </center>

</body>
</html>