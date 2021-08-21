<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>twitter_login</title>

	<style>
		div{
			margin:0px;
			padding:1px;
			background-color:#00BFFF;
			text-align: center;
			color:white;
		}
		h2{
			margin:0px;
		}
	</style>

</head>
<body>
<div>
	<h2>트위터 로그인</h2>
	<hr width="70%" color="white" />
	<form action="twitter_list.jsp" method="post" >
		<input type="text" name="username" placeholder="로그인하세요." required="required" autofocus />
		<input type="submit" value="로그인" />
	</form>
	<hr width="70%" color="white" />
</div>
</body>
</html>