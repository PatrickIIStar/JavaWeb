<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" %>
<%@ page import="Fourth.Standard.Student" %>
<%@ page import="java.util.Collection" %>
<%@ page import="java.util.Iterator" %>
<jsp:useBean id="dbstudent" class="Fourth.Standard.DBStudent"></jsp:useBean>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <title>student表的操作</title>
</head>
<body>
<%
    Collection<Student> students = dbstudent.getAllStudent();
    Iterator<Student> allStu = students.iterator();
%>
<h2>student表的查询结果：</h2>

<!--Student List-->
<table width="840" border="1" cellspacing="0" cellpadding="6">
    <tr>
        <td width="120" align="center" valign="middle">编号</td>
        <td width="145" align="center">姓名</td>
        <td width="253" align="center">地址</td>
        <td width="148" align="center">出生日期</td>
        <td>操作</td>
        <td>操作</td>
    </tr>
    <%
        while (allStu.hasNext()) {
            Student stu = allStu.next();
    %>
    <tr>
        <td height="40" align="center" valign="middle"><%=stu.getStuID()%>
        </td>
        <td align="center" valign="middle"><%=stu.getName()%>
        </td>
        <td valign="middle"><%=stu.getAddress()%>
        </td>
        <td align="center" valign="middle"><%=stu.getBirthday()%>
        </td>
        <td><a href="update.jsp?id=<%=stu.getStuID()%>">修改</a></td>
        <td><a href="delete.jsp?id=<%=stu.getStuID()%>">删除</a></td>
    </tr>
    <%
        }
    %>
</table>
<a href="insert.jsp"> 添加新学生</a>
</body>
</html>
