<%--
  Description: 
  Author: PatrickStar
  Date: 2020/4/23
  Time: 13:06
  LastTime: 2020/4/23 13:30
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<% response.setHeader("refresh", "5; url=Login.jsp");%>
<html>
<head>
    <link rel="stylesheet" href="../CSS/LR.css">
    <title>LoginError</title>
</head>
<body>
<div>
    <p>用户名不存在或密码错误</p>
    <p>5秒后自动跳转到登陆界面</p>
    <p style="text-align: center;width: 150px">
        如果未跳转<a href="Login.jsp">点此</a>跳转
    </p>
</div>
</body>
</html>
