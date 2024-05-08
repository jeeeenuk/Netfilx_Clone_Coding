package db.common;

import java.sql.*;

public class MySqlConnect {
    static final String MYSQL_DRIVER = "com.mysql.cj.jdbc.Driver";
    static final String MYSQL_URL = "jdbc:mysql://localhost:3306/wokflix?serverTimezone=UTC";
    static final String USERNAME = "root";
    static final String PASSWORD = "1234";

    public MySqlConnect() {
        try {
            Class.forName(MYSQL_DRIVER);
        } catch (ClassNotFoundException e) {
            System.out.println("MySql Driver Not Found" + e.getMessage());
        }
    }
    public Connection getConnection() {
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(MYSQL_URL, USERNAME, PASSWORD);
        } catch (SQLException e) {
            System.out.println("MySql Connection Not Found" + e.getMessage());
        }
        return conn;
    }
    public void dbClose(ResultSet rs, PreparedStatement pstmt, Connection conn) {
        try {
            rs.close();
            pstmt.close();
            conn.close();
        } catch (SQLException|NullPointerException e) {
            e.printStackTrace();
        }
    }
    public void dbClose(PreparedStatement pstmt, Connection conn) {
        try {
            pstmt.close();
            conn.close();
        } catch (SQLException|NullPointerException e) {
            e.printStackTrace();
        }
    }
    public void dbClose(ResultSet rs, Statement stmt, Connection conn) {
        try {
            rs.close();
            stmt.close();
            conn.close();
        } catch (SQLException|NullPointerException e) {
            e.printStackTrace();
        }
    }
    public void dbClose(Statement stmt, Connection conn) {
        try {
            stmt.close();
            conn.close();
        } catch (SQLException|NullPointerException e) {
            e.printStackTrace();
        }
    }
}
