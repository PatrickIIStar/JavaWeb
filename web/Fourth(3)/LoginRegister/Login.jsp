<%--
  User: PatrickStar
  Date: 2020/4/22
  Time: 18:28
  LastTime: 2020/4/23 13:36
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
    <form method="post" action="<%=request.getContextPath()%>/GetForm">
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
