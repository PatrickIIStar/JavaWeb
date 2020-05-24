<%@ page import="Fourth.StudentManage.Info" %>
<%@ page import="Fourth.StudentManage.LoginConfig" %>
<%@ page import="Fourth.StudentManage.PersonalInfo" %>
<%@ page import="java.util.Collection" %>
<%--
  Description: 
  Author: PatrickStar
  Date: 2020/5/2
  Time: 18:06
  LastTime: 2020/5/03 13:13
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>PersonalInfo</title>
</head>
<body>
<h1>普通用户</h1>
<%
    String login_id = (String) session.getAttribute("id");
    PersonalInfo pi = new PersonalInfo();
    Collection<LoginConfig> loginConfigs = pi.getPersonalConfig(login_id);
    Collection<Info> user_info = pi.getPersonalInfo(login_id);
    for (LoginConfig loginConfig : loginConfigs) {
%>
<table>
    <tr>
        <td>学号：</td>
        <td><%=loginConfig.getLogin_id()%>
        </td>
    </tr>
    <tr>
        <td>密码：</td>
        <td><%=loginConfig.getLogin_psw()%>
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
        <td><%=info.getName()%>
        </td>
    </tr>
    <tr>
        <td>性别：</td>
        <td><%=info.getGender()%>
        </td>
    </tr>
    <tr>
        <td>民族：</td>
        <td><%=info.getNation()%>
        </td>
    </tr>
    <tr>
        <td>专业：</td>
        <td><%=info.getMajor()%>
        </td>
    </tr>
    <tr>
        <td>学院：</td>
        <td><%=info.getCollege()%>
        </td>
    </tr>
    <tr>
        <td><a href="ModPsw.jsp">修改密码</a></td>
    </tr>
</table>
<%
    }
%>
</body>
</html>
