<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="db.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판매등록</title>
<link rel="stylesheet" href="css.css">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="nav.jsp"></jsp:include>
	<form action="selluppro.jsp" method="post">
		<div>
			<h2>판매등록</h2>
			<table border="2">
				<tr>
					<td>비번호</td>
					<td><input type="text" name="n1"></td>
				</tr>
				<tr>
					<td>상품코드</td>
					<td><input type="text" name="n2"></td>
				</tr>
				<tr>
					<td>판매날짜</td>
					<td><input type="text" name="sysdate"></td>
				</tr>
				<tr>
					<td>매장코드</td>
					<td><input type="text" name="n4"></td>
				</tr>
				<tr>
					<td>판매수량</td>
					<td><input type="text" name="n5"></td>
				</tr>
				<tr>
					<td id="td1" colspan="2" style="text-align: center"><input
						type="submit" value="등록" style="margin-right: 2px"> <input
						type="reset" value="다시쓰기" style="margin-left: 2px"></td>
				</tr>
			</table>
		</div>
	</form>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>