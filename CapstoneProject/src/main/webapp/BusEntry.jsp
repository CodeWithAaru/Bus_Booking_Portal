<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script
      src="https://kit.fontawesome.com/64d58efce2.js"
      crossorigin="anonymous"
    ></script>
    <link rel="stylesheet" href="style2.css" />
    <title>Login Page</title>
  </head>
  <body>
    <div class="container">
      <div class="forms-container">
        <div class="signin-signup">
          <form method="post" action="LoginServlet" class="sign-in-form">
            <h2 class="title">Login</h2>
            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="text" placeholder="Username" name="uname"/>
              
            </div>
            
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" placeholder="Password" name="password"/>
            </div>
           
            <input type="submit" value="Login" class="btn solid" >
            <a href="register.jsp">Create Account</a>
          </form>
          <form method="post" action="AdminServlet" class="sign-up-form">
            <h2 class="title">Login</h2>
            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="text" placeholder="Username" name="uname"/>
            </div>
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" placeholder="Password" name="password" />
            </div>
            
            <input type="submit" class="btn" value="Login" />
          </form>
        </div>
      </div>

      <div class="panels-container">
        <div class="panel left-panel">
          <div class="content">
            <h3>Admin</h3>
            <p>
              Click on Admin login button for admin panel access
              and fill you username and password
            </p>
            <button class="btn transparent" id="sign-up-btn">
               Admin login
            </button>
          </div>
          <img src="log.svg" class="image" alt="" />
        </div>
        <div class="panel right-panel">
          <div class="content">
            <h3>User</h3>
            <p>
              For Booking the Bus Ticket please login with the help of your 
              username and password
            </p>
            <button class="btn transparent" id="sign-in-btn">
              User Login
            </button>
          </div>
          <img src="log.svg" class="image" alt="" />
        </div>
      </div>
    </div>

    <script src="app.js"></script>
  </body>
</html>