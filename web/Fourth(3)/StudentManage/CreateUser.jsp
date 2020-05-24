<%--
  Description: 
  Author: PatrickStar
  Date: 2020/5/3
  Time: 13:36
  LastTime: 2020/5/03 15：00
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>CreateUser</title>
</head>
<body>
<h1>CreateUser</h1>
<form method="post" action="CreateUser2.jsp">
    <table>
        <tr>
            <td>用户名：</td>
            <td>
                <label>
                    <input type="text" name=id>
                </label>
            </td>
        </tr>
        <tr>
            <td>密码：</td>
            <td>
                <label>
                    <input type="text" name=login_psw>
                </label>
            </td>
        </tr>
        <tr>
            <td>姓名：</td>
            <td>
                <label>
                    <input type="text" name=name>
                </label>
            </td>
        </tr>
        <tr>
            <td>性别：</td>
            <td>
                <label>
                    <input type="text" name=gender>
                </label>
            </td>
        </tr>
        <tr>
            <td>专业：</td>
            <td>
                <label>
                    <input type="text" name=major>
                </label>
            </td>
        </tr>
        <tr>
            <td>学院：</td>
            <td>
                <label>
                    <input type="text" name=college>
                </label>
            </td>
        </tr>
        <tr>
            <td>民族：</td>
            <td>
                <label>
                    <input type="text" name=nation>
                </label>
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
