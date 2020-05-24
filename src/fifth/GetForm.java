package fifth;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * @author PatrickStar
 * @version V1.0
 * @date 2020/5/11 9:50
 */
@WebServlet(value = "/Fifth/GetForm",name = "GetForm")
public class GetForm extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("username");
        response.setContentType("text/html; charset=utf-8");
        PrintWriter out = response.getWriter();
        out.print("用户名：" + name);
        out.println();
        out.flush();
        out.close();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
