<%--
  User: PatrickStar
  Date: 2020/4/22
  Time: 16:10
  LastTime: 2020/4/22 13:04
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <link rel="stylesheet" href="../CSS/LR.css">
    <title>Register</title>
</head>
<body>
<h1 style="text-align: center">用户注册页面</h1>
<div>
    <form method="post" action="Register2.jsp">
        <table border="0">
            <tr>
                <td>用户名：</td>
                <td>
                    <label>
                        <input name=userName>
                    </label>
                </td>
            </tr>
            <tr>
                <td>密码：</td>
                <td>
                    <label>
                        <input type="password" name=password>
                    </label>
                </td>
            </tr>
            <tr>
                <td>确认密码:</td>
                <td>
                    <label>
                        <input type="password" name="psw">
                    </label>
                </td>
            </tr>
        </table>
        <div>
            <table border="0">
                <tr>
                    <td width="190" style="text-align: left">
                        <label>
                            <input type="submit" value="注册" class="input">
                        </label>
                    </td>
                    <td>
                        <label>
                            <button type="reset">重置</button>
                        </label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</div>
</body>
</html>
