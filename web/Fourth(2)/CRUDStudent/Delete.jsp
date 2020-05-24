<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.SQLException" %>
<jsp:useBean id="dbstudent" class = "Fourth.Student.DBStudent"/>
<!DOCTYPE html>
<html>
<head>
	<title></title>
<meta charset="ISO-8859-1">
</head>
<body>
	<%
		String s = request.getParameter("id");
		try {
			dbstudent.deleteStudent(s);
		} catch (SQLException throwables) {
			throwables.printStackTrace();
		}
		response.sendRedirect("Select.jsp");
	%>
</body>
</html>