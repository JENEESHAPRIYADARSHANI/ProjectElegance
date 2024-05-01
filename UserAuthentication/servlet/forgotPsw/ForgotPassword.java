package com.elegance.forgotPsw;

import com.elegance.util.customerUtil;
import java.io.IOException;
import java.util.Properties;
import java.util.Random;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "ForgotPassword", urlPatterns = "/ForgotPassword")
public class ForgotPassword extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(); // Create a session if it doesn't exist

        String email = request.getParameter("email");
        
        boolean result = customerUtil.emailAvailability(email);

        if (email != null && !email.isEmpty() ) {
            try {
                // Generate OTP
                int otpValue = generateOTP();

                // Send OTP via email
                boolean emailSent = sendOTPByEmail(email, otpValue);

                if (emailSent) {
                    // Set OTP and email in session
                    session.setAttribute("otp", otpValue);
                    session.setAttribute("email", email);
                    request.setAttribute("message", "OTP is sent to your email id");
                    request.getRequestDispatcher("/EnterOtp.jsp").forward(request, response);
                } else {
                    request.setAttribute("error", "Failed to send OTP. Please try again later.");
                    request.getRequestDispatcher("/forgetPsw.jsp").forward(request, response);
                }
            } catch (Exception e) {
                e.printStackTrace();
                request.setAttribute("error", "An unexpected error occurred.");
                request.getRequestDispatcher("/forgetPsw.jsp").forward(request, response);
            }
        } else {
            request.setAttribute("error", "Please provide a valid email address.");
            request.getRequestDispatcher("/forgetPsw.jsp").forward(request, response);
        }
    }

    private int generateOTP() {
        Random rand = new Random();
        return rand.nextInt(999999);
    }

    private boolean sendOTPByEmail(String email, int otpValue) {
        // Sender's email and password
        final String senderEmail = "eleganceeco52@gmail.com"; // Change this
        final String senderPassword = "tnkjcskyyjaggwjv"; // Change this

        // SMTP server configuration
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com"); // For Gmail
        props.put("mail.smtp.port", "587"); // For Gmail

        // Create a session with authentication
        Session session = Session.getInstance(props, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(senderEmail, senderPassword);
            }
        });

        try {
            // Create a MimeMessage object
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(senderEmail)); // Set sender's email
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email)); // Set recipient's email
            message.setSubject("OTP for Password Reset"); // Set email subject
            message.setText("Your OTP is: " + otpValue); // Set email content

            // Send the email
            Transport.send(message);
            System.out.println("Email sent successfully.");
            return true;
        } catch (MessagingException e) {
            e.printStackTrace();
            System.out.println("Failed to send email: " + e.getMessage());
            return false;
        }
    }
}