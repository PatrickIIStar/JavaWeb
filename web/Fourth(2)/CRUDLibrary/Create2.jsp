<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2020/4/17
  Time: 14:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<%@ page import="java.sql.SQLException" %>
<jsp:useBean id="dbbook" class="Fourth.Library.DBLibrary"/>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String id = request.getParameter("id");
    String price = request.getParameter("price");
    String[] ids = new String[0]; // 获取学生表所有ID
    try {
        ids = dbbook.getAllBookId();
    } catch (SQLException throwables) {
        throwables.printStackTrace();
    }
    if (id == null || id.equals("") || dbbook.ifIdExist(id, ids)) { // 如果ID为空或表中已存在则重新输入
        response.sendRedirect("Create.jsp");
    } else {
        String name = new String(request.getParameter("name")
                .getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8); //获取所输字符并转码防止乱码
        String author = new String(request.getParameter("author")
                .getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
        String publish = new String(request.getParameter("publish")
                .getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
        try {
            dbbook.createBook(id, name, author, publish, Integer.parseInt(price));
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        response.sendRedirect("Select.jsp");
    }
%>
</body>
</html>
