<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="index.jsp?cont=stuUp.jsp"> 
	<div align="center" style="text-align: center">
		<h2>학생 성적 등록</h2>
		<table align="center" style="text-align: center; width: 20%">
			<tr>
				<td>학번</td>
				<td><input type="text" name="hak"></td>
			</tr>
			<tr>
				<td>국어</td>
				<td><input type="text" name="kor"></td>
			</tr>
			<tr>
				<td>수학</td>
				<td><input type="text" name="math"></td>
			</tr>
			<tr>
				<td>영어</td>
				<td><input type="text" name="en"></td>
			</tr>
			<tr>
				<td>역사</td>
				<td><input type="text" name="his"></td>
			</tr>
		</table>
		<input type="submit" value="등록">
	</div>
</form>
</body>
</html>