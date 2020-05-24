<%--
  User: PatrickStar
  Date: 2020/4/22
  Time: 17:11
  LastTime: 2020/4/22 23:04
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean id="dbuser" class="Fourth.LoginRegister.DBUser"/>
<jsp:useBean id="user" class="Fourth.LoginRegister.User">
    <jsp:setProperty name="user" property="*"/>
</jsp:useBean>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String password = request.getParameter("psw");
    if (dbuser.checkRegister(user, password)) {
        dbuser.createUser(user);
        response.sendRedirect("RegisterSuccess.jsp");
    } else {
%>
<jsp:forward page="RegisterError.jsp"/>
<%
    }
%>
</body>
</html>
