<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="css.css">
</head>
<body>	

	<jsp:include page="header.jsp"/>
	<jsp:include page="nav.jsp"/>
	<section>
		<%
			String cont = request.getParameter("cont");
			if(cont == null) {
				cont = "section.jsp";
			}
		%>
		<jsp:include page="<%= cont %>"/>
	</section> 
	<jsp:include page="footer.jsp"/>
</body>
</html>