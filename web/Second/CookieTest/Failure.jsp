<%@ page contentType="text/html; charset=GB2312" %>
<!DOCTYPE html>
<html>
<head>
    <title>Insert title here</title>
</head>
<body>
登陆失败，用户名或密码错误，请重新登录
<form action="Check.jsp" method="post">
    Username
    <label>
        <input type="text" name="username">
    </label>
    <br/><br/>
    Password
    <label>
        <input type="password" name="password">
    </label>
    <br/><br/>
    <button name="login">登陆</button>
</form>
</body>
</html>