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
	<%
	pstmt = con.prepareStatement("select * from emp");
	rs = pstmt.executeQuery();
	%>
	<div>
		<table border="2">
			<tr>
				<td>사원번호</td>
				<td>사원이름</td>
				<td>사원직급</td>
				<td>성별</td>
			</tr>
			<% while(rs.next()) { %>
			<tr>
				<td><a href="empselpro.jsp?id=<%=rs.getString(1)%>"><%=rs.getString(1)%></a></td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(3)%></td>
				<td><%=rs.getString(4)%></td>
			</tr>
			<% } %>
		</table>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>