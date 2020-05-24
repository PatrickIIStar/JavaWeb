package fifth;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * @author PatrickStar
 * @version V1.0
 * @date 2020/5/11 10:29
 */

public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String psw = request.getParameter("psw");
        HttpSession session = request.getSession();
        if ("zzy".equals(name) && "123".equals(psw)){
            session.setAttribute("name",name);
            response.sendRedirect(request.getContextPath()+"/Fifth/success.jsp");
        }else {
            response.sendRedirect(request.getContextPath()+"/Fifth/login.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
