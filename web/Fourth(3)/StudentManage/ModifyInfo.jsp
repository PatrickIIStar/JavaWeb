<%@ page import="Fourth.StudentManage.Info" %>
<%@ page import="Fourth.StudentManage.LoginConfig" %>
<%@ page import="Fourth.StudentManage.PersonalInfo" %>
<%@ page import="java.util.Collection" %>
<%--
  Description: 
  Author: PatrickStar
  Date: 2020/5/3
  Time: 14:00
  LastTime: 2020/5/03 15：00
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>ModifyInfo</title>
</head>
<body>
<h1>Modify User Info</h1>
<%
    String login_id = request.getParameter("id");
    session.setAttribute("id",login_id);
    PersonalInfo pi = new PersonalInfo();
    Collection<LoginConfig> loginConfigs = pi.getPersonalConfig(login_id);
    Collection<Info> user_info = pi.getPersonalInfo(login_id);
    for (LoginConfig loginConfig : loginConfigs) {
%>
<form method="post" action="ModifyInfo2.jsp">
    <table>
        <tr>
            <td>学号：</td>
            <td>
               <%=loginConfig.getLogin_id()%>
            </td>
        </tr>
    </table>
    <%
        }
        for (Info info : user_info) {
    %>
    <table>
        <tr>
            <td>姓名：</td>
            <td>
                <label><input type="text" value="<%=info.getName()%>" name=name></label>
            </td>
        </tr>
        <tr>
            <td>性别：</td>
            <td>
                <label><input type="text" value="<%=info.getGender()%>" name=gender></label>
            </td>
        </tr>
        <tr>
            <td>民族：</td>
            <td>
                <label><input type="text" value="<%=info.getNation()%>" name=nation></label>
            </td>
        </tr>
        <tr>
            <td>专业：</td>
            <td>
                <label><input type="text" value="<%=info.getMajor()%>" name=major></label>
            </td>
        </tr>
        <tr>
            <td>学院：</td>
            <td>
                <label><input type="text" value="<%=info.getCollege()%>" name=college></label>
            </td>
        </tr>
        <tr>
            <td><input type="submit"></td>
        </tr>
    </table>
</form>
<%
    }
%>
</body>
</html>
