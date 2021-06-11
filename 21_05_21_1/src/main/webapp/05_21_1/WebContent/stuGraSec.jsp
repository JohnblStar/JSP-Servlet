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
		pstmt = con.prepareStatement("SELECT m.id, m.name, substr(m.id, 1, 1), substr(m.id, 2, 2), substr(m.id, 4, 5), "
									+ "m.gender, s.korean, s.math, s.english, s.history, "
									+ "(s.korean+s.math+s.english+s.history) as SUM, "
									+ "(s.korean+s.math+s.english+s.history) / 4 as AVG, "
									+ "ROW_NUMBER() OVER (ORDER BY (s.korean+s.math+s.english+s.history) / (4) asc) as RANK "
									+ "FROM member_tbl m "
									+ "JOIN "
									+ "score_tbl s "
									+ "ON m.id = s.id");
		rs = pstmt.executeQuery();
	%>
	
	<div align="center" style="text-align: center">
		<h2>학생성적 조회</h2>
		<table align="center" style="text-align: left" border='1'>
			<tr>
				<td>학번</td>
				<td>이름</td>
				<td>학년</td>
				<td>반</td>
				<td>번호</td>
				<td>성별</td>
				<td>국어</td>
				<td>수학</td>
				<td>영어</td>
				<td>역사</td>
				<td>합계</td>
				<td>평균</td>
				<td>순위</td>
			</tr>
			
			<% int rank = 1; while(rs.next() && rank < 10000) { %>
				<tr>
					<td><%= rs.getString(1) %></td>
					<td><%= rs.getString(2) %></td>
					<td><%= rs.getString(3) %></td>
					<td><%= rs.getString(4) %></td>
					<td><%= rs.getString(5) %></td>
					<td><%= rs.getString(6) %></td>
					<td><%= rs.getString(7) %></td>
					<td><%= rs.getString(8) %></td>
					<td><%= rs.getString(9) %></td>
					<td><%= rs.getString(10) %></td>
					<td><%= rs.getString(11) %></td>
					<td><%= rs.getString(12) %></td>
					<td><%= rs.getString(13) %></td>
				</tr>
			<% } %>
			
			<tr>
				<td colspan="6"> </td>
				<td>국어 총합</td>
				<td>수학 총합</td>
				<td>영어 총합</td>
				<td>역사 총합</td>
				<td>총합</td>
				<td>총평균</td>
				<td>-------</td>
			</tr>
			
			<% 
				pstmt = con.prepareStatement("SELECT sum(korean), sum(math), sum(english), sum(history), sum(korean+math+english+history), avg(korean+math+english+history) FROM score_tbl");
				rs = pstmt.executeQuery();
			%>
			
			<tr>
				<td colspan="6"> </td>
				<% if(rs.next()) { %>
				 	<td><%= rs.getString(1) %></td>
				 	<td><%= rs.getString(2) %></td>
				 	<td><%= rs.getString(3) %></td>
				 	<td><%= rs.getString(4) %></td>
				 	<td><%= String.format("%.1f", rs.getDouble(5)) %></td>
				 	<td><%= rs.getString(6) %></td>
				<% } %> 	
				<td>-------</td> 
			</tr>	 
		</table>
	</div>
</body>
</html>