<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="db.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String n1 = request.getParameter("n1");
	String n2 = request.getParameter("n2");
	String n3 = request.getParameter("n3");
	String n4 = request.getParameter("n4");
	String n5 = request.getParameter("n5");
	String n6 = request.getParameter("n6");

	pstmt = con.prepareStatement("insert into emp_money values(?,?,?,?,?,?)");
	pstmt.setString(1, n1);
	pstmt.setString(2, n2);
	pstmt.setString(3, n3);
	pstmt.setString(4, n4);
	pstmt.setString(5, n5);
	pstmt.setString(6, n6);
	pstmt.executeUpdate();
	
	if (n1 != null) {
	%>
	<form method="post" action="null.jsp"></form>
	<%	
	}
	%>
	<script>
		history.back();
	</script>
</body>
</html>