<%@ page  contentType="text/html; charset=GB2312" %>
<!DOCTYPE html>
<html>
<head>
    <title>Insert title here</title>
</head>
<body>
<%
    String Username = "zzy";
    String Password = "123456";
    Cookie uname = new Cookie("uname", Username);
    Cookie psw = new Cookie("psw", Password);
    response.addCookie(uname);
    response.addCookie(psw);
%>

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
    <button name="login">µÇÂ½</button>
</form>
</body>
</html>