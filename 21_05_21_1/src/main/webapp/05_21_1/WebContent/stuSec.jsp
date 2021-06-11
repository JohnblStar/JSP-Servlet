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
		pstmt = con.prepareStatement("SELECT id, name, substr(id, 1, 1), substr(id, 2, 2), substr(id, 4, 5), gender FROM member_tbl");
		rs = pstmt.executeQuery();
	%>
	
	<div align="center" style="margin-top: 15px">
		<h2>학생 조회</h2>
		
		<table border='1' align="center" style="text-align: center">
			<tr>
				<td>학번</td>
				<td>이름</td>
				<td>학년</td>
				<td>반</td>
				<td>번호</td>
				<td>성별</td>
			</tr>
			
			<% while(rs.next()) { %>
				<tr>
					<td><%= rs.getString(1) %></td>
					<td><%= rs.getString(2) %></td>
					<td><%= rs.getString(3) %></td>
					<td><%= rs.getString(4) %></td>
					<td><%= rs.getString(5) %></td>
					<td><%= rs.getString(6) %></td>
				</tr>
			<% } %>
		</table>
	</div>
</body>
</html>