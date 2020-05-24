package Fourth.StudentManage;


import java.sql.*;
import java.util.ArrayList;
import java.util.Collection;

/**
 * @author PatrickStar
 * @version V1.0
 * @date 2020/5/2 16:31
 */

public class DBUser {
    private final Connection conn;

    /**
     * @declaration 构造函数，连接数据库
     * @author PatrickStar
     * @date 2020/5/2 22:43
     */
    public DBUser() {
        conn = DBConnection.getConnection();
    }

    /**
     * @param user 要添加的登录信息
     * @return void
     * @declaration 向login_config表中添加一个用户登陆信息
     * @author PatrickStar
     * @date 2020/5/2 22:43
     */
    public void createUserLogin(LoginConfig user) {
        String sql = "insert into login_config(id,login_id,login_psw) values(?,?,?)";
        try {
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, user.getId());
            pstmt.setString(2, user.getId());
            pstmt.setString(3, user.getLogin_psw());
            pstmt.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    /**
     * @param user 该用户的详细信息
     * @param lc   获取该用户id
     * @return void
     * @declaration 向info表中添加一个用户的详细信息,id为该表外键
     * @author PatrickStar
     * @date 2020/5/2 22:44
     */
    public void createUserInfo(Info user, LoginConfig lc) {
        String sql = "insert into info(id,name,gender,nation,major,college) values(?,?,?,?,?,?)";
        try {
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, lc.getId());
            pstmt.setString(2, user.getName());
            pstmt.setString(3, user.getGender());
            pstmt.setString(4, user.getNation());
            pstmt.setString(5, user.getMajor());
            pstmt.setString(6, user.getCollege());
            pstmt.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    /**
     * @param lc 用于获取用户id
     * @return void
     * @declaration 为lc用户赋予权限,默认为普通用户,id为该表外键
     * @author PatrickStar
     * @date 2020/5/2 22:45
     */
    public void createRole(LoginConfig lc) {
        String sql = "insert into role(id) values(?)";
        try {
            PreparedStatement preparedStatement = conn.prepareStatement(sql);
            preparedStatement.setString(1, lc.getId());
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    /**
     * @param id 要删除的用户id
     * @return void
     * @declaration 删除一个用户
     * @author PatrickStar
     * @date 2020/5/2 22:46
     */
    public void deleteUser(String id) {
        String sql = "delete from login_config where id='" + id + "'";
        try {
            Statement statement = conn.createStatement();
            statement.execute(sql);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    /**
     *
     * @declaration 修改用户的详细信息
     * @author PatrickStar
     * @param info 输入的新用户信息
     * @param id 用户id
     * @return void
     * @date 2020/5/3 14:40
     */
    public void modifyInfo(Info info,String id){
        String sql = "update info set name=?,gender=?,nation=?,major=?,college=? where id=?";
        try {
            PreparedStatement preparedStatement = conn.prepareStatement(sql);
            preparedStatement.setString(1,info.getName());
            preparedStatement.setString(2,info.getGender());
            preparedStatement.setString(3,info.getNation());
            preparedStatement.setString(4,info.getMajor());
            preparedStatement.setString(5,info.getCollege());
            preparedStatement.setString(6,id);
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }


    /**
     * @param user   输入的登陆信息
     * @return boolean
     * @declaration 判断要添加的用户是否存在
     * @author PatrickStar
     * @date 2020/4/23 14:18
     */
    public boolean checkAdd(LoginConfig user) {
        Collection<String> userName = new ArrayList<>(); // 存放数据库中所有用户的用户名
        String sql = "select * from login_config ";
        try {
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery(sql);
            while (rs.next()) {
                userName.add(rs.getString(1));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        // 如果用户输入的用户名不存在且输入的密码和二次密码一致，返回true
        return !userName.contains(user.getId());
    }
}
