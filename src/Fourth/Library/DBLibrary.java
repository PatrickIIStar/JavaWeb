package Fourth.Library;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;


public class DBLibrary {
    public Collection<Book> getAllBook() throws SQLException {
        String sql = "select * from book";
        Collection<Book> bookVector = new ArrayList<>();
        Statement stmt = DBConnection.getConnection().createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        while (rs.next()) {
            Book book = new Book();
            book.setId(rs.getString(1));
            book.setName(rs.getString(2));
            book.setAuthor(rs.getString(3));
            book.setPublish(rs.getString(4));
            book.setValue(rs.getInt(5));
            bookVector.add(book);
        }
        return bookVector;
    }

    public void deleteBook(String id) throws SQLException {
        Statement stmt = DBConnection.getConnection().createStatement();
        stmt.execute("delete from book where ID='" + id + "'");

    }

    public void createBook(String id, String name, String author, String publish, int price) throws SQLException {
        String sql = "insert into book values(?,?,?,?,?)";
        PreparedStatement pstmt = DBConnection.getConnection().prepareStatement(sql);
        pstmt.setString(1, id);
        pstmt.setString(2, name);
        pstmt.setString(3, author);
        pstmt.setString(4, publish);
        pstmt.setInt(5, price);
        pstmt.executeUpdate();
    }

    public void updateBook(String id, String name, String author, String publish, int price) throws SQLException {
        String sql = "update book set name=?,author=?,publish=?,price=? where ID='" + id + "'";
        PreparedStatement pstmt = DBConnection.getConnection().prepareStatement(sql);
        pstmt.setString(1, name);
        pstmt.setString(2, author);
        pstmt.setString(3, publish);
        pstmt.setInt(4, price);
        pstmt.executeUpdate();
    }

    public Book preUpdateBook(String id) throws SQLException {
        Book book = new Book();
        String sql = "select * from book where ID='" + id + "'";
        Statement stmt = DBConnection.getConnection().createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        while (rs.next()) {
            book.setId(rs.getString(1));
            book.setName(rs.getString(2));
            book.setAuthor(rs.getString(3));
            book.setPublish(rs.getString(4));
            book.setValue(rs.getInt(5));
        }
        return book;
    }


    public boolean ifIdExist(String id, String[] ids) {
        for (String s : ids) {
            if (id.equals(s)) {
                return true;
            }
        }
        return false;
    }

    public String[] getAllBookId() throws SQLException {
        int i = 0;
        DBLibrary library = new DBLibrary();
        Collection<Book> books = library.getAllBook();
        int len = books.size();
        String[] bookID = new String[len];
        for (Book b : books) {
            bookID[i] = b.getId();
            i++;
        }
        return bookID;
    }

    public static void main(String[] args) throws SQLException {
        DBLibrary lib = new DBLibrary();
        lib.deleteBook("TP317");
        String[] s = lib.getAllBookId();
        for (String a :
                s) {
            System.out.println(a);
        }
    }
}
