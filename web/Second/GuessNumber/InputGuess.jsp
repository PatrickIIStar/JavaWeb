<%@ page contentType="text/html; charset=GB2312" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
</head>
<body>
<%
    int m = (int) (Math.random() * 100) + 1;
    session.setAttribute("count", 0);
    session.setAttribute("save", m);
    out.print((int) session.getAttribute("save"));
%>
<br>ÇëÊäÈëÄãµÄ²Â²â
<form action="ResultGuess.jsp" method="post" name="form">
    <label>
        <input type="text" name="radius">
    </label>
    <input type="submit" name="submit" value="È·¶¨">
</form>
</body>
</html>