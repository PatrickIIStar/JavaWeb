<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2020/4/17
  Time: 15:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="Fourth.Library.Book" %>
<%@ page import="java.sql.SQLException" %>
<jsp:useBean id="dbbook" class="Fourth.Library.DBLibrary"/>
<html>
<head>
    <link rel="stylesheet" href="../CSS/CU.css">
    <title>Title</title>
</head>
<body>
<%
    String id = request.getParameter("id");
    Book book = new Book();
    try {
        book = dbbook.preUpdateBook(id);
    } catch (SQLException throwables) {
        throwables.printStackTrace();
    }
%>
<form action="Update2.jsp" method="post" name="form">
    <input type="hidden" name="id" value="<%=book.getId() %>">
    <p>Name：
        <label>
            <input name="name" size="25" type="text" value="<%=book.getName() %>">
        </label>
    <p>Author：
        <label>
            <input name="author" size="25" type="text" value="<%=book.getAuthor()%>">
        </label>
    <p>Publish：
        <label>
            <input name="publish" size="25" type="text" value="<%=book.getPublish() %>">
        </label>
    <p>Price：
        <label>
            <input name="price" size="25" type="text" value="<%=book.getValue() %>">
        </label>
        <br><br>
        <input type="submit" name="submit" value="确定" class="input"></form>
<br>
</body>
</html>
