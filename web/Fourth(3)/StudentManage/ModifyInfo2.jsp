<%--
  Description: 
  Author: PatrickStar
  Date: 2020/5/3
  Time: 14:06
  LastTime: 2020/5/03 15：00
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="user_info" class="Fourth.StudentManage.Info">
    <jsp:setProperty name="user_info" property="*"/>
</jsp:useBean>
<jsp:useBean id="DBUser" class="Fourth.StudentManage.DBUser"/>
<html>
<head>
    <title>ModifyInfo</title>
</head>
<body>
<h1>ModifyInfo2</h1>
<%
    String id =(String)session.getAttribute("id");
    DBUser.modifyInfo(user_info,id);
    response.sendRedirect("Pagination.jsp");
%>
</body>
</html>
