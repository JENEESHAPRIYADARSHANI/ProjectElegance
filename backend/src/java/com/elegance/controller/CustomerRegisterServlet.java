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
            boolean result = customerUtil.usernameAvailability(username);
            
            if (result) {
                boolean success = customerUtil.registerCustomer(username, email, password, role);
                
                if (success) {
                    String message = "<p style='color:blue'>Congratulations 😊 Successfully SignUp!</p>";
                    request.setAttribute("message", message);
                    RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
                    dispatcher.forward(request, response);
                    return;
                } else {
                    String message = "<p style='color:red'>Sorry 😔 Your request cannot be completed!</p>";
                    request.setAttribute("message", message);
                }
            } else {
                String message = "<p style='color:red'>Username already taken! 😢</p>";
                request.setAttribute("message", message);
            }
        } else {
            String message = "<p style='color:red'>Password and Confirm Password do not match!</p>";
            request.setAttribute("message", message);
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher("/Signup.jsp");
        dispatcher.forward(request, response);
    }
}