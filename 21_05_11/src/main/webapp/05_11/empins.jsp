<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="db.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css.css">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="nav.jsp"></jsp:include>
	<div>
		<form method="post" action="empinspro.jsp">
			<h2>사원매출등록</h2>
			<table border="2">
				<tr>
					<td>사원번호</td>
					<td>서북권</td>
					<td>서남권</td>
					<td>동북권</td>
					<td>동남권</td>
					<td>도심권</td>
				</tr>
				<tr>
					<td><input type="text" name="n1"></td>
					<td><input type="text" name="n2"></td>
					<td><input type="text" name="n3"></td>
					<td><input type="text" name="n4"></td>
					<td><input type="text" name="n5"></td>
					<td><input type="text" name="n6"></td>
				</tr>
			</table>
			<input type="submit" value="확인">
		</form>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>