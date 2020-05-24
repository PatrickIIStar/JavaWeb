<%--
  Description: 
  Author: PatrickStar
  Date: 2020/5/3
  Time: 12:29
  LastTime: 2020/5/03 13:13
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>ModifyPassword</title>
</head>
<body>
<h1>ModifyPassword</h1>
<form method="post" action="ModPsw2.jsp">
    <table border="0">
        <tr>
            <td>输入新密码：</td>
            <td>
                <label><input type="password" name="newPassword"></label>
            </td>
        </tr>
        <tr>
            <td>再次输入新密码：</td>
            <td>
                <label><input type="password" name="confirmPassword"></label>
            </td>
        </tr>
        <tr>
            <td style="height: 50px;text-align: center">
                <input type="submit">
            </td>
            <td style="text-align: center">
                <input type="reset">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
