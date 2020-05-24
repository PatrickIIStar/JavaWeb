<%--
  User: PatrickStar
  Date: 2020/4/22
  Time: 22:04
  LastTime: 2020/4/23 13:31
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean id="DBuser" class="Fourth.LoginRegister.DBUser"/>
<jsp:useBean id="User" class="Fourth.LoginRegister.User">
    <jsp:setProperty name="User" property="*"/>
</jsp:useBean>
<html>
<head>
    <title>Login Judge</title>
</head>
<body>
<%
    if (DBuser.checkLogin(User)) {
        response.sendRedirect("LoginSuccess.jsp");
    } else {
%>
<jsp:forward page="LoginError.jsp"/>
<%
    }

%>
</body>
</html>
