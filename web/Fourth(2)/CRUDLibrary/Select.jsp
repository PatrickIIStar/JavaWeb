<%@ page import="Fourth.Library.Book" %>
<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2020/4/17
  Time: 13:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.Collection" %>
<jsp:useBean id="dbbook" class="Fourth.Library.DBLibrary"/>
<html>
<head>
    <title>All Books info</title>
    <link rel="stylesheet" href="../CSS/Select.css">
</head>
<body>
<table class="Stable">
    <tr>
        <td align="center" valign="middle">ID</td>
        <td align="center" valign="middle">Name</td>
        <td align="center" valign="middle">Author</td>
        <td align="center" valign="middle">Publish</td>
        <td align="center" valign="middle">Price</td>
        <td align="center" valign="middle">操作</td>
        <td align="center" valign="middle">操作</td>
    </tr>
</table>
<%
    Collection<Book> books = null;
    try {
        books = dbbook.getAllBook();
    } catch (SQLException throwables) {
        throwables.printStackTrace();
    }
    if (books != null) {
        for (Book b : books) {
%>
<table class="Stable2">
    <tr>
        <td align="center" valign="middle"><%=b.getId()%>
        </td>
        <td align="center" valign="middle"><%=b.getName()%>
        </td>
        <td align="center" valign="middle"><%=b.getAuthor()%>
        </td>
        <td align="center" valign="middle"><%=b.getPublish()%>
        </td>
        <td align="center" valign="middle"><%=b.getValue()%>
        </td>
        <td align="center" valign="middle"><a href="Update.jsp?id=<%=b.getId()%>">修改</a></td>
        <td align="center" valign="middle"><a href="Delete.jsp?id=<%=b.getId()%>">删除</a></td>
    </tr>
</table>
<%
        }
    }
%>
<br>
<form action="Create.jsp" method="post" name="form">
    <input width="15" type="submit" name="submit" value="添加" class="Sinput">
</form>
</body>
</html>
