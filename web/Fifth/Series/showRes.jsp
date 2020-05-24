<%@ page import="fifth.series.Series" %><%--
  Description: 
  Author: PatrickStar
  Date: 2020/5/12
  Time: 17:32
  LastTime: 2020/05/12 18:03
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%response.setContentType("text/html;charset=utf-8");%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Series series = (Series) request.getAttribute("series");
    String tip = (String) session.getAttribute("tip");
    double num = (double)session.getAttribute("num");
%>
<form>
    <table border="1">
        <tr>
            <td>数列的首项</td>
            <td><%=tip%></td>
            <td>所求项数</td>
            <td>求和结果</td>
        </tr>
        <tr>
            <td><%=series.getFirstItem()%></td>
            <td><%=num%></td>
            <td><%=series.getNumOfItem()%></td>
            <td><%=series.getRes()%></td>
        </tr>
    </table>
</form>
</body>
</html>
