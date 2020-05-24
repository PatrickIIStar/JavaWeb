<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" %>
<html>
<head>
    <title>插入学生</title>
</head>
<body>
<form method=post action="insertdo.jsp">
    <table border=0>
        <tr>
            <td height="54" align="center">ID：</td>
            <td width="181" height=54>
                <input name=stuID>
            </TD>
        </TR>
        <tr>
            <td height="54" align="center">用户名：</td>
            <td width="181" height=54>
                <input name=name>
            </TD>
        </TR>
        <tr>
            <td height="54" align="center">地址：</td>
            <td width="181" height=54>
                <input name=address>
            </TD>
        </TR>
        <tr>
            <td height="54" align="center">出生年月：</td>
            <td width="181" height=54>
                <input name=birthday>
            </TD>
        </TR>
        <tr>
            <td>
                <input type="submit" value=插入 %>
            </Td>
        </TR>
    </table>
</form>
</body>
</html>
