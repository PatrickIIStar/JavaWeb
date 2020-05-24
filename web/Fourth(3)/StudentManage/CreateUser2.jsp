<%--
  Description: 
  Author: PatrickStar
  Date: 2020/5/3
  Time: 13:42
  LastTime: 2020/5/03 15：00
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%request.setCharacterEncoding("utf-8");%>
<jsp:useBean id="user_info" class="Fourth.StudentManage.Info">
    <jsp:setProperty name="user_info" property="*"/>
</jsp:useBean>

<jsp:useBean id="login_config" class="Fourth.StudentManage.LoginConfig">
    <jsp:setProperty name="login_config" property="*"/>
</jsp:useBean>

<jsp:useBean id="DBUser" class="Fourth.StudentManage.DBUser"/>
<html>
<head>
    <title>CreateUser</title>
</head>
<body>
<%
    if (login_config.getId() != null && login_config.getLogin_psw() != null && DBUser.checkAdd(login_config)) {
        DBUser.createUserLogin(login_config);
        DBUser.createUserInfo(user_info, login_config);
        DBUser.createRole(login_config);
        response.sendRedirect("Pagination.jsp");
    } else {
        out.print("错误,用户名或密码为空或用户已存在");
%>
<a href="CreateUser.jsp">点此重新添加</a>
<%
    }
%>
</body>
</html>
