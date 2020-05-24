<%@ page import="Fourth.StudentManage.Info" %>
<%@ page import="Fourth.StudentManage.Pagination" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.Collection" %>
<%--
  Description: 
  Author: PatrickStar
  Date: 2020/4/29
  Time: 14:35
  LastTime: 2020/4/29 21:36
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <link rel="stylesheet" href="../CSS/Select.css">
    <meta http-equiv="Content-Type" content="text/html;charset=GB2312">
    <title>pagination</title>
</head>
<script language="JavaScript">
    function Jumping() {
        document.PageForm.submit();
    }

    function gotoPage(pageNum) {
        document.PageForm.jumpPage.value = pageNum;
        document.PageForm.submit();
    }
</script>
<body>
<h1 align="center">管理员界面</h1>
<table class="Stable">
    <tr>
        <td>学号</td>
        <td>姓名</td>
        <td>性别</td>
        <td>专业</td>
        <td>操作</td>
        <td>操作</td>
        <td>操作</td>
    </tr>
</table>
<% int pageNo = 1;
    String strPage = request.getParameter("jumpPage");
    if (strPage != null) {
        pageNo = Integer.parseInt(strPage);
    }
    Pagination pageCtl = new Pagination();
    pageCtl.setRowsPerPage(3);
    try {
        pageCtl.setSql("select * from info");
        pageCtl.setRowsCount(pageCtl.countRows());
        pageCtl.setPagesCount(pageCtl.countPages());
        Collection<Info> info = pageCtl.getPage(pageNo);
        for (Info i : info) {
%>
<table class="Stable2">
    <tr>
        <td><%=i.getId()%>
        </td>
        <td><%=i.getName()%>
        </td>
        <td><%=i.getGender()%>
        </td>
        <td><%=i.getMajor()%>
        </td>
        <td><a href="ModifyInfo.jsp?id=<%=i.getId()%>">修改</a></td>
        <td><a href="Delete.jsp?id=<%=i.getId()%>">删除</a></td>
        <td><a href="Temp.jsp?id=<%=i.getId()%>">查看</a> </td>
    </tr>
</table>
<%
        }
    } catch (SQLException throwables) {
        throwables.printStackTrace();
    }
%>
<div style="margin-left:120px ">
    <a href="CreateUser.jsp">添加</a>
</div>
<form action="Pagination.jsp" method="post" name="PageForm">
    每页<%=pageCtl.getRowsPerPage()%>行&nbsp;
    共<%=pageCtl.getRowsCount()%>行&nbsp;
    第<%=pageNo%>页&nbsp;
    共<%=pageCtl.getPagesCount()%>页
    <br>
    <% if (pageNo == 1) {
        out.print("首页  上一页");
    } else {
    %>
    <a href="javascript:gotoPage(1)">首页</a>&nbsp;
    <a href="javascript:gotoPage(<%=pageNo-1%>)">上一页</a>&nbsp;
    <%
        }
    %>
    <%
        if (pageNo == pageCtl.getPagesCount()) {
            out.print("下一页  尾页");
        } else {
    %>
    <a href="javascript:gotoPage(<%=pageNo+1%>)">下一页</a>&nbsp;
    <a href="javascript:gotoPage(<%=pageCtl.getPagesCount()%>)">尾页</a>
    <%
        }
    %>
    &nbsp;转到第
    <label>
        <select name="jumpPage" onchange="Jumping()">
            <%
                for (int i = 1; i <= pageCtl.getPagesCount(); i++) {
                    if (i != pageNo) {
            %>
            <option value=<%=i%>><%=i%>
            </option>
            <%
            } else {
            %>
            <option selected value=<%=i%>><%=i%>
            </option>
            <%
                    }
                }
            %>
        </select>页
    </label>
</form>
</body>
</html>
