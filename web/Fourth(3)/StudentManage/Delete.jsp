<%--
  Description: 
  Author: PatrickStar
  Date: 2020/5/2
  Time: 16:57
  LastTime: 2020/5/02 15：00
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean id="dbUser" class="Fourth.StudentManage.DBUser"/>
<html>
<head>
    <title>delete</title>
</head>
<body>
<%
    String s = request.getParameter("id");
    dbUser.deleteUser(s);
    response.sendRedirect("Pagination.jsp");
%>
</body>
</html>
