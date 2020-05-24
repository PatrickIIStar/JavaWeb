<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="../CSS/CU.css">
    <meta charset="ISO-8859-1">
    <title>Input Student info</title>
</head>
<body>
<form action="Create2.jsp" method="post" name="form">
    <p>编号：
        <label>
            <input type="text" name="id" size="25">
        </label>
    <p>姓名：
        <label>
            <input type="text" name="name" size="25">
        </label>
    <p>地址：
        <label>
            <input type="text" name="addr" size="25">
        </label>
    <p>生日：
        <label>
            <input type="text" name="birthday" size="25">
        </label>
        <br><br>
        <input type="submit" name="submit" value="确定" class="input">
</form>
</body>
</html>