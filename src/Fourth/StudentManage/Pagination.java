package Fourth.StudentManage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;

/**
 * @author PatrickStar
 * @version V2.0
 * @date 2020/4/29 14:10
 */
public class Pagination {
    private final Connection conn;
    /**
     * sql语句
     */
    private String sql;
    /**
     * 每页的行数
     */
    private int rowsPerPage;
    /**
     * 总行数
     */
    private int rowsCount;
    /**
     * 总页数
     */
    private int pagesCount;

    /**
     * 构造函数，连接数据库
     */
    public Pagination() {
        conn = DBConnection.getConnection();
    }


    public String getSql() {
        return sql;
    }

    public void setSql(String sql) {
        this.sql = sql;
    }

    public int getRowsPerPage() {
        return rowsPerPage;
    }

    public void setRowsPerPage(int rowsPerPage) {
        this.rowsPerPage = rowsPerPage;
    }

    public int getRowsCount() {
        return rowsCount;
    }

    public void setRowsCount(int rowsCount) {
        this.rowsCount = rowsCount;
    }

    public int getPagesCount() {
        return pagesCount;
    }

    public void setPagesCount(int pagesCount) {
        this.pagesCount = pagesCount;
    }

    /**
     * @param page 第page页
     * @return java.util.Collection<Fourth.StudentManage.Info>
     * @declaration 每页显示的信息
     * @author PatrickStar
     * @date 2020/4/29 14:34
     */
    public Collection<Info> getPage(int page) throws SQLException {
        Collection<Info> infoVector = new ArrayList<>();
        Statement stmt = conn.createStatement();
        int startRow = (page - 1) * getRowsPerPage() + 1; // 起始行
        int rows = getRowsPerPage();   // 每页的行数
        String pageSql = sql + " limit " + (startRow - 1) + "," + rows;
        ResultSet rs = stmt.executeQuery(pageSql);
        while (rs.next()) {
            Info info = new Info();
            info.setId(rs.getString("id"));
            info.setName(rs.getString("name"));
            info.setGender(rs.getString("gender"));
            info.setNation(rs.getString("nation"));
            info.setMajor(rs.getString("major"));
            info.setCollege(rs.getString("college"));
            infoVector.add(info);
        }
        rs.close();
        stmt.close();
        return infoVector;
    }


    /**
     * @return int
     * @declaration 数据的总行数
     * @author PatrickStar
     * @date 2020/4/29 14:20
     */
    public int countRows() throws SQLException {
        int fromPos;
        int count;  // 数据总行数
        String countSql = sql;
        countSql = countSql.toLowerCase();
        fromPos = countSql.indexOf("from");
        countSql = countSql.substring(fromPos);
        countSql = "select count(*) " + countSql;
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(countSql);
        rs.first();
        count = rs.getInt("count(*)");
        rs.close();
        stmt.close();
        return count;
    }


    /**
     * @return int
     * @declaration 计算总页数
     * @author PatrickStar
     * @date 2020/4/29 14:15
     */
    public int countPages() {

        if ((rowsCount % rowsPerPage) == 0) {
            return rowsCount / rowsPerPage;
        } else {
            return (rowsCount / rowsPerPage + 1);
        }
    }
}
