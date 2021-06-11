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
	<form action="stugrainspro.jsp" method="post">
		<div>
			<h2>학생 성적 등록</h2>
			<table align="center" style="text-align: center; width: 20%;">
				<tr>
					<td>학번</td>
					<td><input type="text" name="n1"></td>
				</tr>
				<tr>
					<td>국어</td>
					<td><input type="text" name="n2"></td>
				</tr>
				<tr>
					<td>수학</td>
					<td><input type="text" name="n3"></td>
				</tr>
				<tr>
					<td>영어</td>
					<td><input type="text" name="n4"></td>
				</tr>
				<tr>
					<td>역사</td>
					<td><input type="text" name="n5"></td>
				</tr>
			</table>
			<input type="submit" value="등록">
		</div>
	</form>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>