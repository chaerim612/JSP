<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<%
  //로그아웃 클릭시 파라미터를 통해서 로그아웃 여부 판단
  String logout=request.getParameter("logout");
  if(logout !=null){
	//id에 null값을 부여
	session.setAttribute("id", null);
	//세션 유지시간을 kill
	session.setMaxInactiveInterval(0);
  }
 //세션을 통하여 id를 읽어드림
 String id=(String)session.getAttribute("id");
 //로그인이 되어 있지 않다면 session값이 null처리 해줌
  if(id==null){
	  id="Guest";
  }
%>



 <center>
 <table width="1200" >
 <tr height="100">
 <%-- 로고 이미지 --%>
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
    <%= id%>님  <button onclick="location.href='SessionMain.jsp?center=SessionLoginForm.jsp'">로그인</button>
    <% }else{  %>
    <%= id%>님   <button onclick="location.href='SessionMain.jsp?logout=1'">로그아웃</button>
    <% }%> 
    </td>
 </tr> 
 </table>
 
 </center>

</body>
</html>