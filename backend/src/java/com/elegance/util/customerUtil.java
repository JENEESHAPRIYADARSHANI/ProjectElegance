/**
 *
 * @author DELL
 */
package com.elegance.util;
import com.elegance.DBConnect.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class customerUtil {

    public static boolean registerCustomer(String username, String email, String password, String role) {
        boolean isSuccess = false;
        Connection con = null;
        PreparedStatement pstmt = null;

        try {
            con = DBConnect.getConnection();
            String sql = "INSERT INTO user(username, email, password, role) VALUES(?, ?, ?, ?)";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, username);
            pstmt.setString(2, email);
            pstmt.setString(3, password);
            pstmt.setString(4, role);

            int rowsAffected = pstmt.executeUpdate();
            isSuccess = rowsAffected > 0;
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            closeResources(pstmt, null, con);
        }

        return isSuccess;
    }

    public static boolean usernameAvailability(String username) {
        boolean isSuccess = false;
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            con = DBConnect.getConnection();
            String sql = "SELECT * FROM user WHERE username = ?";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, username);
            rs = pstmt.executeQuery();
            isSuccess = !rs.next();
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            closeResources(pstmt, rs, con);
        }

        return isSuccess;
    }

    private static void closeResources(PreparedStatement pstmt, ResultSet rs, Connection con) {
        try {
            if (pstmt != null) pstmt.close();
            if (rs != null) rs.close();
            if (con != null) con.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
}
