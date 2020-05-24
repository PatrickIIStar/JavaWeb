<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="Fourth.Student.Student" %>
<%@ page import="java.sql.SQLException" %>
<jsp:useBean id="dbstudent" class="Fourth.Student.DBStudent"/>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="../CSS/CU.css">
    <meta charset="ISO-8859-1">
    <title>Update Student Info</title>
</head>
<body>
<%
    String id = request.getParameter("id");
    Student student = new Student();
    try {
        student = dbstudent.preUpdateStudent(id);
    } catch (SQLException throwables) {
        throwables.printStackTrace();
    }
%>
<form action="Update2.jsp" method="post" name="form">
    <input type="hidden" name="id" value="<%=student.getId() %>">
    <p>姓名：
        <label>
            <input name="name" size="25" type="text" value="<%=student.getName() %>">
        </label>
    <p>地址：
        <label>
            <input name="addr" size="25" type="text" value="<%=student.getAddr()%>">
        </label>
    <p>生日：
        <label>
            <input name="birthday" size="25" type="text" value="<%=student.getBirthday() %>">
        </label>
        <br><br>
        <input type="submit" name="submit" value="确定" class="input"></form>
<br>
</body>
</html>