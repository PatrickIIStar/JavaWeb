<%@ page contentType="text/html; charset=GB2312" %>
<!DOCTYPE html>
<html>
<head>
    <title>Insert title here</title>
</head>
<body>
<%
    String Username = request.getParameter("username");
    String Password = request.getParameter("password");
    String CookieName = "";
    String CookiePsw = "";
    Cookie[] cookie = request.getCookies();
    for (Cookie c : cookie) {
        if (c.getName().equals("uname")) {
            CookieName = c.getValue();
        }
        if (c.getName().equals("psw")) {
            CookiePsw = c.getValue();
        }
    }
    //out.print(CookieName+CookiePsw);

    if ((Username.equals(CookieName)) && (Password.equals(CookiePsw))) {
        response.sendRedirect("Success.jsp");
    } else {
        response.sendRedirect("Failure.jsp");
    }

%>
</body>
</html>