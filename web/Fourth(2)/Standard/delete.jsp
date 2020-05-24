<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Insert title here</title>
</head>
<body>
<jsp:useBean id="DBStudent" class="Fourth.Standard.DBStudent" scope="page"/>
<%
    String id = request.getParameter("id");
    DBStudent.deleteStudent(id);
    response.sendRedirect("select.jsp");
%>
</body>
</html>