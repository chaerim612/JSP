<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>

	<center>
		<table width="300">
			<c:forEach var="i" begin="1" end="5">
				<tr height="40">
					<!-- 공백for -->
					<c:forEach var="j" begin="1" end="${5-i }">
						<td>&nbsp;</td>
					</c:forEach>
					<!-- *for -->
					<c:forEach var="m" begin="1" end="${(i*2)-1 }">
						<td>★</td>
					</c:forEach>
				</tr>
			</c:forEach>
			<c:forEach var="i" begin="1" end="4">
				<tr height="40">
					<!-- 공백for -->
					<c:forEach var="j" begin="1" end="${i }">
						<td>&nbsp;</td>
					</c:forEach>
					<!-- *for -->
					<c:forEach var="m" begin="1" end="${9-(i*2) }">
						<td>★</td>
					</c:forEach>
				</tr>
			</c:forEach>
		</table>
	</center>

</body>
</html>