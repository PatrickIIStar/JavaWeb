<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@page import="java.sql.*" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<!DOCTYPE html>
<html>
<head>
    <style>

        table {
            border-left: 1px solid #999;

            border-spacing: 0; /*去掉单元格间隙*/
        }

        table td {
            height: 50px;

            width: 130px;

            border-bottom: 1px solid #999;

            border-right: 1px solid #999;
        }

        .a {
            border-top: 1px solid #999;

            border-spacing: 0; /*去掉单元格间隙*/
        }

    </style>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
</head>
<body>
<%
    String url = "jdbc:mysql://localhost:3306/ch08";
    String username = "root";
    String password = "superior..";
    ResultSet rs = null;
    Statement stmt = null;
    String str = new String(request.getParameter("name").getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
    try {
        Class.forName("com.mysql.jdbc.Driver");
    } catch (ClassNotFoundException e) {
        out.print("加载驱动器类出现异常");
    }
    try {
        Connection conn = DriverManager.getConnection(url, username, password);
        stmt = conn.createStatement();
        String sql = "select * from student where 姓名 like '%" + str + "%'";
        rs = stmt.executeQuery(sql);
%>
姓名含有"<%=str %>"的记录：<br>
<div class="a">
    <table>
        <tr>
            <td align="center" valign="middle">编号</td>
            <td align="center" valign="middle">姓名</td>
            <td align="center" valign="middle">地址</td>
            <td align="center" valign="middle">出生日期</td>
        </tr>
    </table>
</div>
<%
    while (rs.next()) {
        int id = rs.getInt(1);
        String name = rs.getString(2);
        String addr = rs.getString(3);
        String birthday = rs.getString(4);
%>
<table>
    <tr>
        <td align="center" valign="middle"><%=id%>
        </td>
        <td align="center" valign="middle"><%=name%>
        </td>
        <td align="center" valign="middle"><%=addr%>
        </td>
        <td align="center" valign="middle"><%=birthday%>
        </td>
    </tr>
</table>
<%
        }
    } catch (Exception e) {
        out.print("连接异常");
    }
    assert rs != null;
    try {
        rs.close();
        stmt.close();
    } catch (SQLException throwables) {
        throwables.printStackTrace();
    }

%>
</body>
</html>