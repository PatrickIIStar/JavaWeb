<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2020/4/17
  Time: 14:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.sql.SQLException" %>
<jsp:useBean id="dbbook" class="Fourth.Library.DBLibrary"/>
<html>
<head>
    <title>delete</title>
</head>
<body>
<%
    String id = request.getParameter("id");
    try {
        dbbook.deleteBook(id);
    } catch (SQLException throwables) {
        throwables.printStackTrace();
    }
    response.sendRedirect("Select.jsp");
%>
<%=id %>
</body>
</html>
