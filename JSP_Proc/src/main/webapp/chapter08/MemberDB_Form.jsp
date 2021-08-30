<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MemberDB_Form</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<link
	href="https://getbootstrap.com/docs/4.0/examples/signin/signin.css"
	rel="stylesheet" crossorigin="anonymous" />
</head>
<body>
<center>
 <h2> 회원 가입 </h2>
 <form action="MemberDBJoin.jsp" method="post">
 <table width="600" border="1" cellpadding="5" cellspacing="1">
  <tr height="40">
   <td width="200" align="center"> 아이디 </td>
   <td width="400" align="left"> <input type="text" name="id" placeholder="아이디를 입력하세요"> </td>
  </tr> 
  <tr height="40">
   <td width="200" align="center"> 패스워드 </td>
   <td width="400" align="left"> <input type="password" name="pw1" placeholder="숫자와 문자를 혼합"> </td>
  </tr> 
  <tr height="40">
   <td width="200" align="center"> 패스워드확인 </td>
   <td width="400" align="left"> <input type="password" name="pw2" placeholder="숫자와 문자를 혼합"> </td>
  </tr> 
  <tr height="40">
   <td width="200" align="center"> 이메일 </td>
  <td width="400" align="left"> <input type="email" name="email" outline: none;> </td>
  </tr> 
    <tr height="40">
   <td width="200" align="center"> 성별 </td>
   <td width="400" align="left">    
   <input type="radio" name="gender" value="남">남
   <input type="radio" name="gender" value="여">여
   </td>
   </td>
  </tr> 
  <tr height="40">
   <td width="200" align="center"> 주소 </td>
   <td width="400" align="left"> <input type="text" name="address"> </td>
  </tr> 
  <tr height="40">
   <td width="200" align="center"> 전화번호 </td>
   <td width="400" align="left"> <input type="phone" name="phone"> </td>
  </tr> 
  <tr height="40">
   <td width="200" align="center"> 당신의 관심분야 </td>
	   <td width="400" align="left">
	   <input type="checkbox" name="hobby" value="여행">여행 &nbsp;&nbsp;
	   <input type="checkbox" name="hobby" value="등산">등산 &nbsp;&nbsp;
	   <input type="checkbox" name="hobby" value="음악">음악 &nbsp;&nbsp;
	   <input type="checkbox" name="hobby" value="독서">독서 &nbsp;&nbsp;
  </td>
  </tr>
  <tr height="40">
   <td width="200" align="center"> 당신의 직업은 </td>
   <td width="400" align="left">
	   <select name="job">
	   <option value="교사">교사 </option>
	   <option value="유투버">유투버 </option>
	   <option value="의사">의사</option>
	   <option value="기술사">기술사 </option>
   	  </select>
   </td>
  </tr>
   <tr height="40">
	   <td width="200" align="center"> 당신의 연령은 </td>
	   <td width="400" align="left">
	   <input type="radio" name="age" value="10">10대&nbsp;&nbsp;
	   <input type="radio" name="age" value="20">20대&nbsp;&nbsp;
	   <input type="radio" name="age" value="30">30대&nbsp;&nbsp;
	   <input type="radio" name="age" value="40">40대&nbsp;&nbsp;
  		</td>
  </tr>
  <tr height="40">
   <td width="200" align="center"> 하고싶은말 </td>
   <td width="400" align="left"> 
   <textarea rows="5" cols="40" name="info"></textarea>
   </td>
  </tr> 
   <tr height="40">
   <td width="600" align="center" colspan="2">
    <input type="submit" value="회원가입">
    <input type="reset" value="취소">
   </td>   
  </tr>
 </table>
 </form>

</body>
</html>