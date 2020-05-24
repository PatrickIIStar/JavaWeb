<%--
  Description: 
  Author: PatrickStar
  Date: 2020/5/3
  Time: 13:19
  LastTime: 2020/5/03 15：00
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Temp</h1>
<%
    String id = request.getParameter("id");
    session.setAttribute("id",id);
    response.sendRedirect("PersonalInfo.jsp");
%>
</body>
</html>
