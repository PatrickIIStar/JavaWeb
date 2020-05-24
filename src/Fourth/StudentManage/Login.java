package Fourth.StudentManage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * @author PatrickStar
 * @version V1.2
 * @date 2020/5/2 17:11
 */

public class Login {
    private final Connection conn;

    /**
     * @declaration 构造函数，连接数据库
     * @author PatrickStar
     * @date 2020/5/2 22:42
     */
    public Login() {
        conn = DBConnection.getConnection();
    }

    /**
     * @param user 用户输入的登录信息
     * @return boolean
     * @declaration 判断用户登陆信息是否匹配
     * @author PatrickStar
     * @date 2020/5/2 22:38
     */
    public boolean checkLogin(LoginConfig user) {
        String sql = "select * from login_config where login_id='" + user.getLogin_id() + "'";
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery(sql);
            // 如果用户存在且输入的密码与数据库中密码一致,返回true
            if (rs.next()) {
                return user.getLogin_psw().equals(rs.getString(3));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

    /**
     * @param user 用户输入的登录信息
     * @return boolean
     * @declaration 判断该用户是管理员还是普通用户
     * @author PatrickStar
     * @date 2020/5/2 22:39
     */
    public boolean checkRole(LoginConfig user) {
        String s = "(select id from login_config where login_id='" + user.getLogin_id() + "')";
        String temp = null;
        try {
            // 先由登录名搜索对应的id,再用id搜索对应的权限
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery(s);
            if (rs.next()) {
                temp = rs.getString(1);
            }
            String sql = "select * from role where id='" + temp + "'";
            rs = statement.executeQuery(sql);
            if (rs.next()) {
                return rs.getBoolean("role");
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }
}
