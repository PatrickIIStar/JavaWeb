package Fourth.LoginRegister;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.DriverManager;
/**
 * @author PatrickStar
 * @version V2.0
 * @date 2020/4/22 15:42
 */

public class DBConnection {
    static String url = "jdbc:mysql://localhost:3306/loginregister?characterEncoding=utf-8";
    static String username = "root";
    static String password = "superior..";
    static Connection conn;

    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.getMessage();
        }
        try {
            conn = DriverManager.getConnection(url, username, password);
        } catch (SQLException e) {
            e.getMessage();
        }
        if (conn == null) {
            System.out.println("连接失败");
        }
        return conn;
    }
}


