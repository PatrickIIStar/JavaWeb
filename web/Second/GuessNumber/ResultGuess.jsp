<%@ page contentType="text/html; charset=GB2312" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
</head>
<body>
<%
    String str = request.getParameter("radius");
    if (str == null) {
        str = "0";
    }
    int guessNumber = Integer.parseInt(str);
    int realNumber = (int) session.getAttribute("save");
    if (guessNumber == realNumber) {
        int n = (int) session.getAttribute("count");
        n = n + 1;
        session.setAttribute("count", n);
        response.sendRedirect("Success.jsp");
    } else if (guessNumber < realNumber) {
        int n = (int) session.getAttribute("count");
        n = n + 1;
        session.setAttribute("count", n);
        response.sendRedirect("Small.jsp");
    } else {
        int n = (int) session.getAttribute("count");
        n = n + 1;
        session.setAttribute("count", n);
        response.sendRedirect("Large.jsp");
    }
%>
</body>
</html>