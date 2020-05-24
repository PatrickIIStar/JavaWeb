<%--
  Description: 
  Author: PatrickStar
  Date: 2020/4/23
  Time: 13:38
  LastTime: 2020/4/25 13:43
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<% response.setHeader("refresh", "5; url=Register.jsp");%>
<html>
<head>
    <title>RegisterError</title>
</head>
<body>
<div>
    <p>用户名已存在或密码不一致</p>
    <p>5秒后自动跳转到注册界面</p>
    <p style="text-align: center;width: 150px">
        如果未跳转<a href="Register.jsp">点此</a>跳转
    </p>
</div>
</body>
</html>
