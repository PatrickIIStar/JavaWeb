package Fourth.Standard;

import java.sql.*;
import java.util.ArrayList;
import java.util.Collection;


public class DBStudent {
    private final Connection conn;

    public DBStudent() {
        conn = DBConnection.getConnection();
    }

    // 获得所有student表的记录返回为一个Vector
    public Collection<Student> getAllStudent() {
        Collection<Student> stuVector = new ArrayList<>();
        Statement stmt;
        try {
            if (conn != null) {
                stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery("SELECT * FROM student");
                while (rs.next()) {
                    Student stu = new Student();
                    stu.setStuID(rs.getString(1));
                    stu.setName(rs.getString(2));
                    stu.setAddress(rs.getString(3));
                    stu.setBirthday(rs.getString(4));

                    stuVector.add(stu);
                }

            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return stuVector;
    }

    /*添加一个学生，使用Student值对象作为参数传给这个方法。
     */
    public void addStudent(Student student) throws Exception {

        PreparedStatement pstmt = conn.prepareStatement("insert into student(ID,Name,Addr,Birthday) values(?,?,?,?)");
        pstmt.setString(1,student.getStuID());
        pstmt.setString(2, student.getName());
        pstmt.setString(3, student.getAddress());
        pstmt.setString(4, student.getBirthday());
        pstmt.execute();

    }

    /**
     * 更改商品的信息，使用Product值对象作为参数传给这个方法。
     */
    public void modifyStudent(Student student, String stuId) throws Exception {

        PreparedStatement pstmt = conn.prepareStatement("update student set Name=?, Addr=?,Birthday=? where ID=?");

        pstmt.setString(1, student.getName());
        pstmt.setString(2, student.getAddress());
        pstmt.setString(3, student.getBirthday());
        pstmt.setString(4, stuId);
        pstmt.execute();
    }

    /**
     * 删除没个商品，指定商品的ID
     */
    public void deleteStudent(String stuId) throws Exception {
        Statement stmt = conn.createStatement();
        stmt.execute("delete from student where ID='" + stuId + "'");
    }

    public Student getStudentInfo(String stuId) throws Exception {

        Statement stmt = conn.createStatement();
        ResultSet rst = stmt.executeQuery("select * from student where ID='" + stuId + "'");
        Student student = null;
        while (rst.next()) {
            student = new Student();
            student.setName(rst.getString(2));
            student.setAddress(rst.getString(3));
            student.setBirthday(rst.getString(4));

        }
        return student;
    }
}
	


