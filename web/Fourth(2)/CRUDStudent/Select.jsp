<%@ page contentType="text/html; charset=utf-8" %>
<%@page import="Fourth.Student.*" %>
<%@page import="java.util.Iterator" %>
<%@page import="java.util.Collection" %>
<%@ page import="java.sql.SQLException" %>
<jsp:useBean id="dbstudent" class="Fourth.Student.DBStudent"/>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="../CSS/Select.css">
    <meta charset="ISO-8859-1">
    <title>All Students info</title>
</head>
<body>
<%
    Collection<Student> students = null;
    try {
        students = dbstudent.getAllStudent();
    } catch (SQLException throwables) {
        throwables.printStackTrace();
    }
    assert students != null;
    Iterator<Student> stu = students.iterator();
    Student s;
%>
<table class="Stable">
    <tr>
        <td align="center" valign="middle">编号</td>
        <td align="center" valign="middle">姓名</td>
        <td align="center" valign="middle">地址</td>
        <td align="center" valign="middle">出生日期</td>
        <td align="center" valign="middle">操作</td>
        <td align="center" valign="middle">操作</td>
    </tr>
</table>
<%
    while (stu.hasNext()) {
        s = stu.next();
%>
<table class="Stable2">
    <tr>
        <td align="center" valign="middle"><%=s.getId()%>
        </td>
        <td align="center" valign="middle"><%=s.getName()%>
        </td>
        <td align="center" valign="middle"><%=s.getAddr()%>
        </td>
        <td align="center" valign="middle"><%=s.getBirthday()%>
        </td>
        <td align="center" valign="middle"><a href="Update.jsp?id=<%=s.getId() %>">修改</a></td>
        <td align="center" valign="middle"><a href="Delete.jsp?id=<%=s.getId() %>">删除</a></td>
    </tr>
</table>
<%
    }
%>
<br>
<form action="Create.jsp" method="post" name="form">
    <input width="15" type="submit" name="submit" value="添加" class="Sinput">
</form>
</body>
</html>