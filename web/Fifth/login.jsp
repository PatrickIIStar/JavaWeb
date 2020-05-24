<%--
  Description: 
  Author: PatrickStar
  Date: 2020/5/11
  Time: 11:27
  LastTime: 2020/05/12 18:03
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/LoginServlet" method="post">
<table>
    <tr>
        <td>用户名</td>
        <td>
            <label>
            <input type="text" name="name">
            </label>
        </td>
    </tr>
    <tr>
        <td>密码</td>
        <td>
            <label>
                <input type="password" name="psw">
            </label>
        </td>
    </tr>
    <tr>
        <td>
            <input type="submit" value="登陆">
        </td>
    </tr>
</table>
</form>
</body>
</html>
