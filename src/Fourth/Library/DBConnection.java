package Fourth.Library;
import java.sql.*;

public class DBConnection {
    static String url = "jdbc:mysql://localhost:3306/library?characterEncoding=utf-8";
    static String username = "root";
    static String password = "superior..";
    static Connection conn;
    public static Connection getConnection() {
        try{
            Class.forName("com.mysql.jdbc.Driver");
        }catch(ClassNotFoundException e){
            e.getMessage();
        }
        try {
            conn =DriverManager.getConnection(url,username,password);
        }catch (SQLException e) {
            e.getMessage();
        }
        if(conn==null){
            System.out.println("连接失败");
        }
        return conn;
    }

}



