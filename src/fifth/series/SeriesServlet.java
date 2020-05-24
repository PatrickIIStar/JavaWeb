package fifth.series;

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
 * @date 2020/5/12 17:16
 */
@WebServlet(value = "/Fifth/Series/SeriesServlet",name = "Series")
public class SeriesServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        Series series = new Series();
        HttpSession session = request.getSession(); // session对象，存放不同的显示信息
        String ari = "等差数列的公差";
        String geo = "等比数列的公比";
        String firstItem = request.getParameter("firstItem");
        String numOfItem = request.getParameter("numOfItem");
        String tolerance = request.getParameter("tolerance");
        String commonRatio = request.getParameter("commonRatio");
        series.setFirstItem(Double.parseDouble(firstItem));
        series.setNumOfItem(Integer.parseInt(numOfItem));
        // 如果公差為null，説明等比數列的提交按鈕被按下
        if(tolerance==null){
            series.setCommonRatio(Double.parseDouble(commonRatio));
            series.setRes(new Geometric().sum(series.getFirstItem(),series.getCommonRatio(),series.getNumOfItem()));
            session.setAttribute("tip",geo);  // 如果提交的是等比数列，提示信息为geo
            session.setAttribute("num",series.getCommonRatio()); // 并存放公比
        }else {
            series.setTolerance(Double.parseDouble(tolerance));
            series.setRes(new Arithmetic().sum(series.getFirstItem(),series.getTolerance(),series.getNumOfItem()));
            session.setAttribute("tip",ari);   // 如果提交的是等差数列，提示信息为ari
            session.setAttribute("num",series.getTolerance());  // 并存放公差
        }
        request.setAttribute("series",series); // 将series对象存入request
        request.getRequestDispatcher("/Fifth/Series/showRes.jsp")
                .forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
