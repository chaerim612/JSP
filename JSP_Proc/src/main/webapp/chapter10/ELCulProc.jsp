<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ELCulProc</title>
</head>
<body>
<center>
<!-- 자바식 출력 -->
<%-- <%
	String num1=request.getParameter("num1");
	String operator=request.getParameter("operator");
	String num2=request.getParameter("num2");
	
	int result=0;
	
	if(operator.equals("+")){
		result=Integer.parseInt(num1)+Integer.parseInt(num2);
	}else if(operator.equals("-")){
		result=Integer.parseInt(num1)-Integer.parseInt(num2);
	}else if(operator.equals("*")){
		result=Integer.parseInt(num1)*Integer.parseInt(num2);
	}else if(operator.equals("/")){
		result=Integer.parseInt(num1)/Integer.parseInt(num2);
	}
%> --%>
	<%
		String operator=request.getParameter("operator");
		if(operator.equals("+")){
		%>
			결과는 : ${param.num1 + param.num2}
		<%	
		}else if(operator.equals("-")){
			%>
			결과는 : ${param.num1 - param.num2}
			<%
		}else if(operator.equals("*")){
			%>
			결과는 : ${param.num1 * param.num2}
			<%
		}else if(operator.equals("/")){
			%>
			결과는 : ${param.num1 / param.num2}
			<%
		}
	%>
</center>	
</body>
</html>