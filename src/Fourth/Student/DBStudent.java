package Fourth.Student;

import java.sql.*;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;


public class DBStudent {

    //获取全部学生信息存入List
    public Collection<Student> getAllStudent() throws SQLException {
        String sql = "select * from student";
        Collection<Student> stuVector = new ArrayList<>();
        Statement stmt = DBConnection.getConnection().createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        while (rs.next()) {
            Student student = new Student();
            student.setId(rs.getString(1));
            student.setName(rs.getString(2));
            student.setAddr(rs.getString(3));
            student.setBirthday(rs.getString(4));
            stuVector.add(student);
        }
        return stuVector;
    }


    //获取表中所有ID
    public String[] getAllStudentID() throws SQLException {
        int i = 0;
        DBStudent stu = new DBStudent();
        Collection<Student> students = stu.getAllStudent();//获取所有数据项
        Iterator<Student> allStu = students.iterator(); // 迭代器对象，Student类型变为Object类型
        int len = students.size();
        String[] ids = new String[len]; //长度为len的字符串数组
        while (allStu.hasNext()) {
            Student s = allStu.next();
            ids[i] = s.getId(); // 将数据的ID存入该数组
            i++;
        }
        return ids;
    }


    //判断所输ID是否已存在数据库中
    public boolean ifExist(String id, String[] ids) {
        for (String s : ids) {
            if (id.equals(s)) // 如果与数组中的某个数据一样，返回True
                return true;
        }
        return false;              //检索完毕，无相同向，返回False
    }

    //修改学生信息
    public Student preUpdateStudent(String id) throws SQLException {
        Student student = new Student();
        String sql = "select * from student where ID='" + id + "'";
        Statement stmt = DBConnection.getConnection().createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        while (rs.next()) {
            student.setId(rs.getString(1));
            student.setName(rs.getString(2));
            student.setAddr(rs.getString(3));
            student.setBirthday(rs.getString(4));
        }
        return student;
    }

    public void updateStudent(String id, String name, String addr, String birthday) throws SQLException {
        String sql = "update student set 姓名=?,地址=?, 出生日期=?  where ID=?";
        PreparedStatement pstmt = DBConnection.getConnection().prepareStatement(sql);
        pstmt.setString(1, name);
        pstmt.setString(2, addr);
        pstmt.setString(3, birthday);
        pstmt.setString(4, id);
        pstmt.executeUpdate();
    }


    //删除学生信息
    public void deleteStudent(String id) throws SQLException {
        Statement stmt = DBConnection.getConnection().createStatement();
        stmt.execute("delete from student where ID='" + id + "'");
    }

    //添加学生信息
    public void createStudent(String id, String name, String addr, String birthday) throws SQLException {
        String sql = "insert into student values(?,?,?,?)";
        PreparedStatement pstmt = DBConnection.getConnection().prepareStatement(sql);
        pstmt.setString(1, id);
        pstmt.setString(2, name);
        pstmt.setString(3, addr);
        pstmt.setString(4, birthday);
        pstmt.executeUpdate();
    }

    //测试
    public static void main(String[] args) throws SQLException {
        DBStudent student = new DBStudent();
        Student rs = student.preUpdateStudent("20177710948");
        System.out.println(rs.getName());
    }
}
