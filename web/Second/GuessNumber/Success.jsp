<%@ page contentType="text/html; charset=GB2312" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
</head>
<body>
恭喜你猜对了！
答案是<%=session.getAttribute("save") %><br>
你一共用了<%=session.getAttribute("count") %>次<br>
<a href="InputGuess.jsp">继续玩</a>
</body>
</html>