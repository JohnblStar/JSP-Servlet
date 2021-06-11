<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="db.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		pstmt = con.prepareStatement("insert into score_tbl values(?, ?, ?, ?, ?)");
		pstmt.setString(1, request.getParameter("hak"));
		pstmt.setString(2, request.getParameter("kor"));
		pstmt.setString(3, request.getParameter("math"));
		pstmt.setString(4, request.getParameter("en"));
		pstmt.setString(5, request.getParameter("his"));
		pstmt.executeUpdate();
	%>
	
	<script>
		location.href="index.jsp";
	</script>
</body>
</html>