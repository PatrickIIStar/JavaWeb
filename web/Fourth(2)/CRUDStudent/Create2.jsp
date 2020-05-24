<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<jsp:useBean id="dbstudent" class="Fourth.Student.DBStudent"/>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <meta charset="ISO-8859-1">
</head>
<body>
<%
    String id = request.getParameter("id");
    String[] ids = new String[0]; // 获取学生表所有ID
    try {
        ids = dbstudent.getAllStudentID();
    } catch (SQLException throwables) {
        throwables.printStackTrace();
    }
    if (id == null || id.equals("") || dbstudent.ifExist(id, ids)) { // 如果ID为空或表中已存在则重新输入
        response.sendRedirect("Create.jsp");
    } else {
        String name = new String(request.getParameter("name")
                .getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8); //获取所输字符并转码防止乱码
        String addr = new String(request.getParameter("addr")
                .getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
        String birthday = new String(request.getParameter("birthday")
                .getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
        try {
            dbstudent.createStudent(id, name, addr, birthday);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        response.sendRedirect("Select.jsp");
    }
%>
</body>
</html>