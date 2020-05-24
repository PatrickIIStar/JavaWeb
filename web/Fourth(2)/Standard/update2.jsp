<%@ page contentType="text/html; charset=utf-8" language="java"
         errorPage="" %>
<%
    request.setCharacterEncoding("utf-8");
%>
<html>
<head>
    <title>Insert title here</title>
</head>
<body>
<jsp:useBean id="Student" class="Fourth.Standard.Student" scope="page">
    <jsp:setProperty name="Student" property="*"/>
</jsp:useBean>
<jsp:useBean id="DBStudent" class="Fourth.Standard.DBStudent" scope="page"/>
<%
    String id = request.getParameter("id");
    DBStudent.modifyStudent(Student, id);
    response.sendRedirect("select.jsp");
%>
</body>
</html>
