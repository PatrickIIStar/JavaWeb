package fifth;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;
import java.io.IOException;

/**
 * @author PatrickStar
 * @version V1.0
 * @date 2020/5/23 17:36
 * @declaration 过滤器作业
 */
@WebFilter(filterName = "IPFilter", urlPatterns = "/*", initParams = {
        @WebInitParam(name = "IP", value = "192.168.0.100")
})

public class IPFilter implements Filter {
    private String rejectIP;

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("Error.jsp");
        String remoteIP = req.getRemoteAddr();
        if (rejectIP.equals(remoteIP)) {
            dispatcher.forward(req, resp);
            return;
        }
        chain.doFilter(req, resp);
    }

    public void init(FilterConfig config) throws ServletException {
        rejectIP = config.getInitParameter("IP");
    }
}
