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
	<h2>학생성적 입력</h2>
	<form action="stugrainspro.jsp" method="post">
		<div>
			<table align="center" style="text-align: center; width: 20%">
				<tr>
					<th>학번</th>
					<td><input type="text" name="n1"></td>
				</tr>
				<tr>
					<th>국어</th>
					<td><input type="text" name="n2"></td>
				</tr>
				<tr>
					<th>수학</th>
					<td><input type="text" name="n3"></td>
				</tr>
				<tr>
					<th>영어</th>
					<td><input type="text" name="n4"></td>
				</tr>
				<tr>
					<th>역사</th>
					<td><input type="text" name="n5"></td>
				</tr>
			</table>
			<input type="submit" value="확인">
		</div>
	</form>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>