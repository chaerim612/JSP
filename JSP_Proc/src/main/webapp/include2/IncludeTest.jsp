<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<%-- 
<%
 //Center값을 변경해 주기 위해서 request객체를 이용하여 center값을 받아옴
 String center=request.getParameter("center");

//처음 SessionMain.jsp를 실행하면 null값이 실행되므로 null처리를 해줌
if(center==null){
	center="Center.jsp";
}

%> --%>

<%
  //처음 IncludeTest를 실행하면 camping라는 파라미터값이 넘어오지 않기에 null처리를 해줘야 함
  String campurl="";
  String camping = request.getParameter("camping");
  //null처리
  if(camping==null){
	  campurl ="Center.jsp";
  }else{
   if(camping.equals("1"))campurl="Hiking.jsp";
   else if(camping.equals("2"))campurl="CampingInTheCity.jsp";
   else if(camping.equals("3"))campurl="Choan_camping.jsp";
   else if(camping.equals("4"))campurl="CampingInTheCity.jsp";
   else if(camping.equals("5"))campurl="Choan_camping.jsp";
   else if(camping.equals("6"))campurl="CampingInTheCity.jsp"; 
  }
 %>


<center>
 <table width="1200" border="1">
 <!-- Top 부분 -->
 <tr height="100" >
  <td align="center" colspan="2"> 
  <jsp:include page="Top.jsp"/> 
  </td>
 </tr>
 
  <!-- Left 부분 -->
 <tr height="500">
  <td align="center" width="250"> 
  <jsp:include page="Left.jsp"/> 
  </td>
  
 <!-- Center 부분 -->
  <td align="center" width="900"> 
  <jsp:include page="<%=campurl%>"/> 
  </td>
 </tr> 
 
 <!-- Bottom 부분-->
 <tr height="100">
  <td align="center" colspan="2"> 
  <jsp:include page="Bottom.jsp"/> 
  </td>
 </tr>
 
 </table>
 
 </center>

</body>
</html>