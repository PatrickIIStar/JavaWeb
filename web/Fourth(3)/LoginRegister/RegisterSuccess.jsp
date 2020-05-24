<%--
  User: PatrickStar
  Date: 2020/4/22
  Time: 22:49
  LastTime: 2020/4/23 13:32
--%>

<%@ page contentType="text/html;charset=UTF-8"%>
<% response.setHeader("refresh", "5; url=Login.jsp");%>
<html>
<head>
    <link rel="stylesheet" href="../CSS/LR.css">
    <title>Tip</title>
</head>
<body>
<div>
    <h2>注册成功</h2>
    <p>5秒后自动跳转到登陆界面</p>
    <p style="text-align: center;width: 150px">
        如果未跳转<a href="Login.jsp">点此</a>跳转
    </p>
</div>
</body>
</html>
