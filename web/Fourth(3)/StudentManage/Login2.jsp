<%--
  User: PatrickStar
  Date: 2020/4/22
  Time: 22:04
  LastTime: 2020/5/02 18:03
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean id="DBuser" class="Fourth.StudentManage.Login"/>
<jsp:useBean id="User" class="Fourth.StudentManage.LoginConfig">
    <jsp:setProperty name="User" property="*"/>
</jsp:useBean>
<html>
<head>
    <title>Login Judge</title>
</head>
<body>
<%  session.setAttribute("id",User.getLogin_id());
    if (DBuser.checkLogin(User)) {
        if (DBuser.checkRole(User)) {
            response.sendRedirect("Pagination.jsp");
        } else {

            response.sendRedirect("PersonalInfo.jsp");
        }
    } else {
        out.print("错误");
%>
    <a href="Login.jsp">重新登陆</a>
<%
    }
%>
</body>
</html>
