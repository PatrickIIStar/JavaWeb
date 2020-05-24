<%--
  Description: 
  Author: PatrickStar
  Date: 2020/5/12
  Time: 16:46
  LastTime: 2020/05/12 18:03
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>input num</title>
</head>
<body>
<form action="SeriesServlet" method="post">
    <table>
        <tr><td>等差数列求和</td></tr>
        <tr>
            <td>输入首项:</td>
            <td>
                <label>
                    <input type="text" name="firstItem" style="width: 70px">
                </label>
            </td>
            <td>输入公差:</td>
            <td>
                <label>
                    <input type="text" name="tolerance" style="width: 70px">
                </label>
            </td>
            <td>求和项数:</td>
            <td>
                <label>
                    <input type="text" name="numOfItem" style="width: 70px">
                </label>
            </td>
            <td>
                <input type="submit" value="提交">
            </td>
        </tr>
    </table>
</form>
<br>
<form action="SeriesServlet" method="post">
    <table>
        <tr><td>等比数列求和</td></tr>
        <tr>
            <td>输入首项:</td>
            <td>
                <label>
                    <input type="text" name="firstItem" style="width: 70px">
                </label>
            </td>
            <td>输入公比:</td>
            <td>
                <label>
                    <input type="text" name="commonRatio" style="width: 70px">
                </label>
            </td>
            <td>求和项数:</td>
            <td>
                <label>
                    <input type="text" name="numOfItem" style="width: 70px">
                </label>
            </td>
            <td>
                <input type="submit" value="提交">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
