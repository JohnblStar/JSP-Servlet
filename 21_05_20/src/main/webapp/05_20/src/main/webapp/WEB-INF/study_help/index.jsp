<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	sql = "SELECT count(*) as cnt from sys.board";
	ResultSet res = conn.prepareStatement(sql).executeQuery();
	int cnt = 0;
	if (res.next())
		cnt = res.getInt(1);
	%>
	<h2>게시물 목록</h2>
	<p>
		총
		<%=cnt%>개의 게시물이 있습니다.
	</p>
	<table>
		<colgroup>
			<col width="10%">
			<col width="15%">
			<col width="60%">
			<col width="15%">
		</colgroup>
		<thead>
			<tr>
				<th>번호</th>
				<th>작성자</th>
				<th>제목</th>
				<th>작성일</th>
			</tr>
		</thead>
		<tbody>
			<%
			sql = "SELECT * from sys.board order by reg_date asc";
			res = conn.prepareStatement(sql).executeQuery();
			String idx, writer, subject, reg_date, link;
			while (res.next()) {
				idx = res.getString("idx");
				writer = res.getString("writer");
				subject = res.getString("subject");
				reg_date = res.getString("reg_date");
				link = "./view.jsp?idx="+idx;

				if (reg_date.length() > 16)
					reg_date = reg_date.substring(0, 16);
			%>
			<tr>
				<td><%= idx %></td>
				<td><%= writer %></td>
				<td><a href = "<%= link %>"><%= subject %></a></td>
				<td><%= reg_date %></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
	<div class="btn_group right">
		<button type = "button" onclick = "lacation.href = './write.jsp'">작성</button>
	</div>
</body>
</html>