package com.elegance.controller;

import com.elegance.util.customerUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CustomerRegisterServlet", urlPatterns = "/CustomerRegisterServlet")
public class CustomerRegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmpassword");
        String role = "customer";

        if (password.equals(confirmPassword)) {
            boolean result = customerUtil.emailAvailability(email);

            if (result) {
                boolean success = customerUtil.registerCustomer(username, email, password, role);

                if (success) {
                    String message = "Congratulations Successfully SignUp!";
                    request.setAttribute("message", message);
                    RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
                    dispatcher.forward(request, response);
                    return;
                } else {
                    String message = "Sorry Your request cannot be completed!";
                    request.setAttribute("message", message);
                }
            } else {
                String message = "u already have registered from this email!";
                request.setAttribute("message", message);
            }
        } else {
            String message = "Password and Confirm Password do not match!";
            request.setAttribute("message", message);
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher("Signup.jsp");
        dispatcher.forward(request, response);
    }
}
