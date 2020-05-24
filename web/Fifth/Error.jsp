<%--
  Description: 
  Author: PatrickStar
  Date: 2020/5/23
  Time: 17:46
  LastTime: 
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>error</title>
</head>
<body>
你的IP是：
<%=request.getRemoteAddr()%>
<br>
该IP不能访问该资源
</body>
</html>
