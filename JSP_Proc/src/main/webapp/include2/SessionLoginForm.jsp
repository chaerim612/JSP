<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>SessionLoginForm.jsp</title>
</head>
<body>
<center>
 
 <h2>�α��� ������ </h2>
 
 <form action="SessionLoginProc.jsp" method="post">
 <table width="300" border="1">
 <tr height="50">
  <td align="center" width="100"> ���̵� </td>
  <td width="200"> <input type="text" name="id" size="20" ></td>
 </tr>
 
 <tr height="50">
  <td align="center" width="100"> �н����� </td>
  <td width="200"> <input type="password" name="pass" size="20"></td>
 </tr>
 
 <tr height="50">
  <td align="center" colspan="2"><input type="submit" value="�α���">
  </td>
 </tr>   
 </table>
 </form>
 
 </center>

</body>
</html>