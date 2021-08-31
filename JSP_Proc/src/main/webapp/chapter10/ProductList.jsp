<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ProductList</title>
</head>
<body>
<div align="center">
	<h2>상품목록</h2>
	<hr />
	<form action="ProductSel.jsp" method=post>
		<jsp:useBean id="product" class="jspbook.ch10.Product" scope="session"/>
		<select name="sel">
			<% 
				for(String item : product.getProductList()){
					out.println("<option>"+item+"</option>");
				}
			%>
		</select>
		<input type="submit" value="선택"/>
	</form>
</div>
</body>
</html>