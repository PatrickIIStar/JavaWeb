<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" %>
<%@ page import=" Fourth.Standard.Student" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>修改</title>
</head>
<body>
<jsp:useBean id="DBStudent" class="Fourth.Standard.DBStudent" scope="page"/>
<%String id = request.getParameter("id");%>
<%Student student = DBStudent.getStudentInfo(id);%>
<form method=post action="update2.jsp?id=<%=id%>">
    <table border=0>
        <tr>
            <td height="54" align="center">用户名：</td>
            <td width="181" height=54>
                <input name=name value="<%=student.getName()%>">
            </TD>
        </TR>
        <tr>
            <td height="54" align="center">地址：</td>
            <td width="181" height=54>
                <input name=address value=<%=student.getAddress() %>>
            </TD>
        </TR>
        <tr>
            <td height="54" align="center">出生年月：</td>
            <td width="181" height=54>
                <input name=birthday value=<%=student.getBirthday() %>>
            </TD>
        </TR>
        <tr>
            <td>
                <input type="submit" value=修改 %>
            </Td>
        </TR>
    </table>
</form>
</body>
</html>