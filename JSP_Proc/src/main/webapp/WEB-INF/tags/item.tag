<%@ tag language="java" body-content="scriptless" pageEncoding="UTF-8"%>

<%@ attribute name="width" %>
<%@ attribute name="border" %>
<%@ attribute name="bgcolor" %>

<%@ tag import="jspbook.ch10.Product" %>
<jsp:useBean id="product" class="jspbook.ch10.Product"/>

<h2><jsp:doBody/></h2> <!-- 본체 내용 출력 -->
<table width="${width }" border="${border }" bgcolor="${bgcolor }" >
	<%
		for(String item: product.getProductList()){
			out.println("<tr><td>"+item+"</td></tr>");
		}
	%>
</table>

<!-- body-content="scriptless" : EL JSP 태그를 텍스트가 아닌 태그로 컴파일함 -->
<!-- body-content="tagdependent" : 태그를 텍스틀로 컴파일 (텍스트 문서를 주로 사용할 때) -->
<!-- body-content="empty" : 바디가 비어있어야 함 -->