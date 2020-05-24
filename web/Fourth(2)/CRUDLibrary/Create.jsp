<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2020/4/17
  Time: 14:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean id="dbbook" class="Fourth.Library.DBLibrary"/>
<html>
<head>
    <link rel="stylesheet" href="../CSS/CU.css">
    <title>Input Book info</title>
</head>
<body>
<form action="Create2.jsp" method="post" name="form">
    <p>ID：
        <label>
            <input type="text" name="id" size="25">
        </label>
    <p>Name：
        <label>
            <input type="text" name="name" size="25">
        </label>
    <p>Author：
        <label>
            <input type="text" name="author" size="25">
        </label>
    <p>Publish：
        <label>
            <input type="text" name="publish" size="25">
        </label>
    <p>Price：
        <label>
            <input type="text" name="price" size="25">
        </label>
        <br><br>
        <input type="submit" name="submit" value="确定" class="input">
</form>
</body>
</html>