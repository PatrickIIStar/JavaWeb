<%@ page language="java" contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
</head>
<body>
<p>根据学号查询</p>
<form action="ByNumber.jsp" method="post" name="form">
    <p>输入学号：<input type="text" name="id">
        <input type="submit" name="submit" value="确定"></form>
<br>
<p>根据姓名(模糊)查询</p>
<form action="ByName.jsp" method="post" name="form2">
    <p>姓名含有：<input type="text" name="name">
        <input type="submit" name="submit" value="添加" style="width:200px; heitht:30px"></form>
</body>
</html>