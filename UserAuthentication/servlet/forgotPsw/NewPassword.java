package com.elegance.forgotPsw;

import com.elegance.DBConnect.DBConnect;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class NewPassword
 */
@WebServlet("/NewPassword")
public class NewPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		String newPassword = request.getParameter("password");
		String confPassword = request.getParameter("confirmPassword");
		
                Connection con = null;
                PreparedStatement pstmt = null;
                
		if (newPassword != null && confPassword != null && newPassword.equals(confPassword)) {

			try {
                                con = DBConnect.getConnection();
				String sql = "UPDATE user SET password = ? where email = ? ";
                                pstmt = con.prepareStatement(sql);
				pstmt.setString(1, newPassword);
				pstmt.setString(2, (String) session.getAttribute("email"));

				int rowCount = pstmt.executeUpdate();
				if (rowCount > 0) {
					response.sendRedirect("Signup.jsp?status=resetSuccess");
				} else {
					response.sendRedirect("Signup.jsp?status=resetFailed");
				}
				
			} 
                        catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

}
