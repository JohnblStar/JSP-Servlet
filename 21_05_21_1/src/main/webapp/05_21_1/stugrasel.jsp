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
	pstmt = con.prepareStatement("SELECT m.id, m.name, substr(m.id,1,1), substr(m.id,2,2), substr(m.id,4,5), "
			+ "m.gender, s.korean, s.math, s.english, s.history, " 
			+ "(s.korean+s.math+s.english+s.history) as SUM, "
			+ "(s.korean+s.math+s.english+s.history) / 4 as AVG, "
			+ "ROW_NUMBER () OVER (ORDER BY (s.korean+s.math+s.english+s.history) / (4) asc) as RANK "
			+ "FROM member_tbl m " 
			+ "JOIN " 
			+ "score_tbl s " 
			+ "ON m.id = s.id ");
	rs = pstmt.executeQuery();
	%>
	<h2>학생성적 조회</h2>
	<div>
		<table border="2">
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
				<td><%=rs.getString(7)%></td>
				<td><%=rs.getString(8)%></td>
				<td><%=rs.getString(9)%></td>
				<td><%=rs.getString(10)%></td>
				<td><%=rs.getString(11)%></td>
				<td><%=rs.getString(12)%></td>
				<td><%=rs.getString(13)%></td>
			</tr>
			<%
			}
			%>
			<%
			pstmt = con.prepareStatement("select sum(korean), sum(math), sum(english), sum(history), sum(korean+math+english+history), avg(korean+math+english+history) from score_tbl");
			rs = pstmt.executeQuery();
			%>
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
			<% while(rs.next()) { %>
			<tr>
				<td colspan="6"> </td>
				<td><%=rs.getString(1) %></td>
				<td><%=rs.getString(2) %></td>
				<td><%=rs.getString(3) %></td>
				<td><%=rs.getString(4) %></td>
				<td><%=String.format("%.1f", rs.getDouble(5)) %></td>
				<td><%=rs.getString(6) %></td>
				<td>-------</td>
			</tr>
			<% } %>
		</table>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>