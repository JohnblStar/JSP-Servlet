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
		pstmt = con.prepareStatement(
				"select sh.scode, sh.sname, TO_CHAR(sum(p.cost*s.amount), 'FM999,999,999') "
				+ "FROM "
				+ "tbl_shop_01 sh JOIN tbl_salelist_01 s "
				+ "ON sh.scode = s.scode JOIN tbl_product_01 p "
				+ "ON s.pcode = p.pcode "
				+ "group by sh.scode , sh.sname "
				+ "order by sh.scode asc"
				);
		rs = pstmt.executeQuery();
		%>
		<h2>판매현황</h2>
		<table border="2">
			<tr>
				<td>매장코드</td>
				<td>매장명</td>
				<td>매장별 판매액</td>
			</tr>
			<% while(rs.next()) {%>
			<tr>
				<td><%= rs.getString(1) %></td>
				<td><%= rs.getString(2) %></td>
				<td><%= rs.getString(3) %></td>
			</tr>
			<% } %>
		</table>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>