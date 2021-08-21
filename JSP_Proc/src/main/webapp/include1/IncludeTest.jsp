<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>IncludeTest</title>
</head>
<body>
<%
String campurl="";
String camping = request.getParameter("camping");
//null처리
if(camping==null){
	  campurl ="Choan_camping.jsp";
}else{
 if(camping.equals("1"))campurl="Choan_camping.jsp";
 else if(camping.equals("2"))campurl="CampingTheCity.jsp";
 else if(camping.equals("3"))campurl="Hiking.jsp";
 else if(camping.equals("4"))campurl="CampingTheCity.jsp";
 else if(camping.equals("5"))campurl="Choan_camping.jsp";
 else if(camping.equals("6"))campurl="Hiking.jsp"; 
}
%>
<center>
<table width="1200" >
<!-- Top 부분 -->
<tr>
	<td align="center" colspan="2">
		<%-- <%@ include file="Top.jsp" %> --%>
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
  <%-- <jsp:include page="Center.jsp"/>  --%><!-- 센터값이 변경되지 않음 -->
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