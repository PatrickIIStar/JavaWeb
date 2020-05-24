<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%request.setCharacterEncoding("utf-8"); %>
<html>
<head>
    <title>Untitled Document</title>
</head>
<jsp:useBean id="Student" class="Fourth.Standard.Student" scope="page">
    <jsp:setProperty name="Student" property="*"/>
</jsp:useBean>
<jsp:useBean id="DBStudent" class="Fourth.Standard.DBStudent" scope="page"/>
<body>
<%
    try {
        DBStudent.addStudent(Student);
    } catch (Exception e) {
        e.printStackTrace();
    }
    response.sendRedirect("select.jsp");%>
</body>
</html>