<%@ page contentType="text/html; charset=GB2312" %>
<html>
<body>
<p>������һ����</p>
<form action="input.jsp" method="get" name="form">
    <label>
        <input type="text" name="radius">
    </label>
    <input type="submit" name="submit" value="ȷ��"></form>
<%
    String str = request.getParameter("radius");
    if (str != null) {
        int r;
        r = Integer.parseInt(str);
%>
<jsp:forward page='result.jsp'>
    <jsp:param value="<%=r %>" name="integer"/>
</jsp:forward>
<%
    }
%>
</body>
</html>