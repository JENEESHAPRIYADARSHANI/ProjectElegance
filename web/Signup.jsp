<%-- 
    Document   : Signup
    Created on : Apr 28, 2024, 3:19:26 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title>Login and Registration</title>
    <link rel="stylesheet" href="Login_Signup\css\login.css">
    <!-- Fontawesome CDN Link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
<body>
  <div class="container">
    <input type="checkbox" id="flip">
    <div class="cover">
      <div class="front">
        <img src="Login_Signup\images\login.jpg" alt="">
        <div class="text">
          <span class="text-1">DON'T MISS OUT ON THE <br> LATEST DROP AND OFFERS.</span>
          <span class="text-2">Let's get connected</span>
        </div>
      </div>
      <div class="back">
        <!--<img class="backImg" src="images/backImg.jpg" alt="">-->
        <div class="text">
          <span class="text-1">Complete miles of journey <br> with one step</span>
          <span class="text-2">Let's get started</span>
        </div>
      </div>
    </div>
    <div class="forms">
        <div class="form-content">
          <div class="login-form">
            <div class="title">Login</div>
          <form method="post" action="LoginServlet">
            <div class="input-boxes">
              <div class="input-box">
                <i class="fas fa-envelope"></i>
                <input type="text" name="email" placeholder="Enter your email" required>
              </div>
              <div class="input-box">
                <i class="fas fa-lock"></i>
                <input type="password" name="password" placeholder="Enter your password" required>
              </div>            
              
          
              <div >
                  <div  style="display: inline-block; margin-right: 10px;">
                            <input type="checkbox" class="form-check-input" id="formCheck" style="margin-right: 5px;">
                            <label for="formCheck" class="form-check-label text-secondary" style="text-decoration: none; color: #6c757d; font-size: 16px;"><small>Remember Me</small></label>
                        </div>

                        <div class="forgot">
                            <small><a href="forgetPsw.jsp" style="text-decoration: none; color: #6c757f; font-size: 16px;"><small>Forgot Password?</small></a></small>
                        </div>
             </div>            
                 <div class="button input-box">
                <input type="submit" value="login">
              </div>
              
              
              <div class="text sign-up-text">Don't have an account? <label for="flip">Sigup now</label></div>
            </div>
        </form>
      </div>
        <div class="signup-form">
          <div class="title">Signup</div>
        <form method="post" action="CustomerRegisterServlet">
            <div class="input-boxes">
              <div class="input-box">
                <i class="fas fa-user"></i>
                <input type="text" name="username"placeholder="Enter your name" required>
              </div>
              <div class="input-box">
                <i class="fas fa-envelope"></i>
                <input type="text" name="email" placeholder="Enter your email" required>
              </div>
              <div class="input-box">
                <i class="fas fa-lock"></i>
                <input type="password" name="password" placeholder="Enter your password" required>
              </div>
                <div class="input-box">
                <i class="fas fa-lock"></i>
                <input type="password" name="confirmpassword" placeholder="confirm password" required>
              </div>
              <div class="button input-box">
                <input type="submit" value="Sumbit">
              </div>
              <div class="text sign-up-text">Already have an account? <label for="flip">Login now</label></div>
            </div>
      </form>
    </div>
    </div>
    </div>
  </div>
</body>
</html>
