<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="db.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel = "stylesheet" href="css_0603.css">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="nav.jsp"></jsp:include>
	<%
	String id = request.getParameter("id");

	
	pstmt = con.prepareStatement("SELECT * FROM emp_money where em_no = ?");
	pstmt.setString(1, id);
	rs = pstmt.executeQuery();
	%>
	<div>
		<table border="2">
			<tr>
				<td>사원번호</td>
				<td>서북권</td>
				<td>서남권</td>
				<td>동북권</td>
				<td>동남권</td>
				<td>도심권</td>
			</tr>
			<%
			while (rs.next()) {
			%>
			<tr>
				<td><%=rs.getString(1)%></td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(3)%></td>
				<td><%=rs.getString(4)%></td>
				<td><%=rs.getString(5)%></td>
				<td><%=rs.getString(6)%></td>
			</tr>
			<%
			}
			%>
		</table>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>