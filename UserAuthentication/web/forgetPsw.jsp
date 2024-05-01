<%-- 
    Document   : forgetPsw
    Created on : Apr 29, 2024, 9:36:47 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset='utf-8'>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <title>Forget Password</title>
        <link rel="stylesheet" href="Login_Signup/css/login.css">
        <link href='https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap' rel='stylesheet'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <style>
            body {
                background-color: #f8f9fa;
                color: #333;
                font-family: "Poppins", sans-serif;
                margin: 0;
                padding: 0;
            }

            .container {
                max-width: 600px;
                margin: 50px auto;
                padding: 30px;
                background-color: #fff;
                border-radius: 10px;
                box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            }

            .forgot {
                margin-bottom: 20px;
                text-align: center;
            }

            .forgot h2 {
                font-size: 24px;
                font-weight: 600;
                margin-bottom: 10px;
            }

            .forgot p {
                font-size: 16px;
                margin-bottom: 20px;
            }

            .forgot ol {
                list-style-type: decimal;
                padding-left: 20px;
                margin-bottom: 20px;
            }

            .forgot ol li {
                font-size: 16px;
                margin-bottom: 10px;
            }

            .form-group {
                margin-bottom: 20px;
            }

            .form-group label {
                font-size: 16px;
                font-weight: 500;
            }

            .form-control {
                width: 100%;
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 5px;
                font-size: 16px;
            }

            .form-control:focus {
                border-color: #76b7e9;
                box-shadow: 0 0 0 0.1rem #28a745;
            }

            .form-text {
                font-size: 14px;
                color: #6c757d;
            }

            .card-footer {
                text-align: center;
            }

            .btn {
                font-size: 16px;
                padding: 10px 20px;
                margin-right: 10px;
                border-radius: 5px;
            }

            .btn-success {
                background-color: black;
                border-color: #black;
                color: white;

            }



            .btn-danger {
                background-color: white;
                border-color: #black;
                color: #fff;
                color: black;
            }



        </style>
    </head>
    <body>

        <input type="hidden" id="error" value="<%= request.getAttribute("error")%>">

        <div class="container">
            <div class="forgot">
                <h2>Forgot your password?</h2>
                <p>Change your password in three easy steps. This will help you to secure your password!</p>

            </div>
            <form action="ForgotPassword" method="POST">
                <div class="form-group">


                    <input class="form-control" type="email" name="email" id="email-for-pass" placeholder="Enter your email" required="">

                    <small class="form-text">Enter the registered email address. Then we'll email an OTP to this address.</small>
                </div>
                <div class="card-footer">
                    <button class="btn btn-success" type="submit">Get New Password</button>
                    <button class="btn btn-danger" onclick="redirectToSignup()" type="submit">Back to Login</button>
                </div>
            </form>
        </div>
        <script>
            function redirectToSignup() {
                window.location.href = "Signup.jsp"; // Redirect to signup.jsp
            }
        </script>

        <%
        // Check if there is an error message attribute
            String errorMessage = (String) request.getAttribute("error");
            if (errorMessage != null && !errorMessage.isEmpty()) {
        %>
        <!-- Display Sweet Alert for error -->
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script type="text/javascript">
        swal("Error", "<%= errorMessage%>", "error");
        </script>
        <%
            }
        %>


    </body>
</html>
