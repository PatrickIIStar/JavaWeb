<%--
  User: PatrickStar
  Date: 2020/4/22
  Time: 18:28
  LastTime: 2020/5/01 18:03
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <link rel="stylesheet" href="../CSS/LR.css">
    <title>Login</title>
</head>
<body>
<h1 style="text-align: center">用户登陆页面</h1>
<div>
    <form method="post" action="Login2.jsp">
        <table border="0">
            <tr>
                <td>用户名：</td>
                <td>
                    <label>
                        <input name=login_id>
                    </label>
                </td>
            </tr>
            <tr>
                <td>密码：</td>
                <td>
                    <label>
                        <input type="password" name=login_psw>
                    </label>
                </td>
            </tr>
        </table>
        <div>
            <table border="0">
                <tr>
                    <td width="185" style="text-align: left">
                        <label>
                            <input type="submit" value="登陆" class="input">
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
