package Fourth.LoginRegister;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;

/**
 * @author PatrickStar
 * @version V1.8
 * @date 2020/4/22 16:24
 */

public class DBUser {

    /**
     * @param user 用户信息
     * @return void
     * @declaration 向数据库中添加一个用户(user)
     * @author PatrickStar
     * @date 2020/4/23 13:02
     */
    public void createUser(User user) {
        String sql = "insert into user(name,password) values(?,?)";  // SQL插入语句
        try {
            PreparedStatement pstmt = DBConnection.getConnection().prepareStatement(sql);
            pstmt.setString(1, user.getUserName()); // 设置第一个参数，用户名
            pstmt.setString(2, user.getPassword()); // 第二个参数，密码
            pstmt.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    /**
     * @param user 用户输入的用户信息
     * @return boolean
     * @declaration 判断用户登陆信息是否匹配
     * @author PatrickStar
     * @date 2020/4/23 13:01
     */
    public boolean checkLogin(User user) {
        String sql = "select * from user where name='" + user.getUserName() + "'";
        try {
            Statement statement = DBConnection.getConnection().createStatement();
            ResultSet rs = statement.executeQuery(sql);
            // 如果用户存在且输入的密码与数据库中密码一致,返回true
            if (rs.next()) {
                return user.getPassword().equals(rs.getString(2));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

    /**
     * @param user     用户输入的信息
     * @param password 用户输入的二次密码
     * @return boolean
     * @declaration 判断用户的注册信息是否合理
     * @author PatrickStar
     * @date 2020/4/23 14:18
     */
    public boolean checkRegister(User user, String password) {
        Collection<String> userName = new ArrayList<>(); // 存放数据库中所有用户的用户名
        String sql = "select * from user ";
        try {
            Statement statement = DBConnection.getConnection().createStatement();
            ResultSet rs = statement.executeQuery(sql);
            while (rs.next()) {
                userName.add(rs.getString(1));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        // 如果用户输入的用户名不存在且输入的密码和二次密码一致，返回true
        return !userName.contains(user.getUserName()) && user.getPassword().equals(password);
    }

    /**
     * @param args 不知道
     * @return void
     * @declaration main函数，用于测试
     * @author PatrickStar
     * @date 2020/4/23 13:03
     */
    public static void main(String[] args){
        User user = new User();
        DBUser db = new DBUser();
        user.setUserName("111");
        user.setPassword("333");
        String password = "333";
        System.out.println(db.checkRegister(user, password));
    }
}
