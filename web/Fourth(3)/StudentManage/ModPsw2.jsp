<%@ page import="Fourth.StudentManage.PersonalInfo" %><%--
  Description: 
  Author: PatrickStar
  Date: 2020/5/3
  Time: 12:37
  LastTime: 2020/5/03 13:13
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>ModifyPassword</title>
</head>
<body>
<h1>ModifyPassword</h1>
<%
    String id = (String) session.getAttribute("id");
    String newPassword = request.getParameter("newPassword");
    String confirmPassword = request.getParameter("confirmPassword");
    PersonalInfo user = new PersonalInfo();
    if (user.checkPassword(newPassword, confirmPassword)) {
        user.modifyPassword(id, newPassword);
        response.sendRedirect("ModifyPswSuccess.jsp");
    } else {
        response.sendRedirect("ModifyPswError.jsp");
    }
%>
</body>
</html>
