package Fourth.StudentManage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;

/**
 * @author PatrickStar
 * @version V1.0
 * @date 2020/5/3 9:40
 */
public class PersonalInfo {
    private final Connection conn;

    public PersonalInfo() {
        conn = DBConnection.getConnection();
    }

    /**
     * @param id 个人id
     * @return java.util.Collection<Fourth.StudentManage.LoginConfig> 存放在集合中
     * @declaration 获取个人的登陆信息
     * @author PatrickStar
     * @date 2020/5/3 13:30
     */
    public Collection<LoginConfig> getPersonalConfig(String id) {
        String sql = "select * from login_config where login_id='" + id + "'";
        Collection<LoginConfig> login_config = new ArrayList<>();
        ResultSet rs;
        try {
            Statement statement = conn.createStatement();
            rs = statement.executeQuery(sql);
            if (rs.next()) {
                LoginConfig user = new LoginConfig();
                user.setId(rs.getString(1));
                user.setLogin_id(rs.getString(2));
                user.setLogin_psw(rs.getString(3));
                login_config.add(user);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return login_config;
    }

    /**
     * @param id 个人id
     * @return java.util.Collection<Fourth.StudentManage.Info> 返回集合
     * @declaration 获取个人详细信息
     * @author PatrickStar
     * @date 2020/5/3 13:31
     */
    public Collection<Info> getPersonalInfo(String id) {
        String sql = "select * from info where id='" + id + "'";
        Collection<Info> user_info = new ArrayList<>();
        ResultSet rs;
        try {
            Statement statement = conn.createStatement();
            rs = statement.executeQuery(sql);
            if (rs.next()) {
                Info info = new Info();
                info.setId(rs.getString("id"));
                info.setCollege(rs.getString("college"));
                info.setMajor(rs.getString("major"));
                info.setNation(rs.getString("nation"));
                info.setGender(rs.getString("gender"));
                info.setName(rs.getString("name"));
                user_info.add(info);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return user_info;
    }

    /**
     * @param id          个人id
     * @param newPassword 新密码
     * @return void
     * @declaration 更新数据库中密码
     * @author PatrickStar
     * @date 2020/5/3 13:32
     */
    public void modifyPassword(String id, String newPassword) {
        String sql = "update login_config set login_psw='" + newPassword + "' where id='" + id + "'";
        try {
            Statement statement = conn.createStatement();
            statement.execute(sql);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    /**
     * @param newPassword     新密码
     * @param confirmPassword 确认新密码
     * @return boolean 如果输入不为空且两次输入相同返回true
     * @declaration 判断密码格式是否正确
     * @author PatrickStar
     * @date 2020/5/3 13:31
     */
    public boolean checkPassword(String newPassword, String confirmPassword) {
        return !newPassword.equals("") && !confirmPassword.equals("") && newPassword.equals(confirmPassword);
    }
}
