<%@page import="java.text.Format"%>
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
		<%
		pstmt = con.prepareStatement("SELECT sl.saleno, sl.pcode, substr(sl.saledate, 0, 8), "
				+ "sl.scode ,pr.name, sl.amount, "
				+ "TO_CHAR((pr.cost * sl.amount), 'FM999,999,999') as PUl "
				+ "FROM tbl_salelist_01 sl "
				+ "JOIN "
				+ "tbl_product_01 pr "
				+ "ON sl.pcode = pr.pcode"
				);
		rs = pstmt.executeQuery();
		%>
		<h2>판매현황</h2>
		<table border="2">
			<tr>
				<td>비번호</td>
				<td>상품코드</td>
				<td>판매날짜</td>
				<td>매장코드</td>
				<td>상품명</td>
				<td>판매수량</td>
				<td>총판매액</td>
			</tr>
			<% while(rs.next()) {%>
			<tr>
				<td><%= rs.getString(1) %></td>
				<td><%= rs.getString(2) %></td>
				<td><%= rs.getString(3) %></td>
				<td><%= rs.getString(4) %></td>
				<td><%= rs.getString(5) %></td>
				<td><%= rs.getString(6) %></td>
				<td><%= rs.getString(7) %></td>
			</tr>
			<% } %>
		</table>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>