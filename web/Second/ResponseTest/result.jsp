<%@ page  contentType="text/html; charset=GB2312" %>
<!DOCTYPE html>
<html>
<head>
    <title>Insert title here</title>
</head>
<body>
��������ǣ�
<%=request.getParameter("integer") %>
<%
    int r = Integer.parseInt(request.getParameter("integer"));
    if (r < 0) {
        response.setContentType("text/plain");
        out.print("�������ƽ���ǣ�" + Math.pow(r, 2));
    } else if (r < 100) {
        response.setContentType("application/msword");
        out.print("������������ǣ�" + Math.pow(r, 2) * r);
    } else if (r > 100) {
        response.setStatus(404);
    } else {
        response.sendRedirect("input.jsp");
    }
%>
</body>
</html>