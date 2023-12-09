<%-- 
    Document   : login
    Created on : 12 6, 23, 6:44:42 PM
    Author     : Yvhan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="globals.css" />
    <link rel="stylesheet" href="styleguide.css" />
    <link rel="stylesheet" href="style.css" />
  </head>
  <body>
    <div class="page-mockup">
      <div class="div">
        <div class="overlap-group">
                           <div class="box"><img class="rectangleBlack" src="img/Rectangle 3434.png" /></div>
          <div class="rectangle"></div>
          
            <form action="LoginServlet" method="post">
            <!-- Add the form element with your server endpoint in the 'action' attribute -->
            <div class="overlap">
              <input type="text" class="usernameBox" name="username" placeholder="  Enter your username" />
              <input type="password" class="passwordBox" name="password" placeholder="  Enter your password" />
              <div class="username">Username</div>
              <div class="password">Password</div>
              <div class="overlap-2">
                  
                <button type="submit" class="loginButton">
                  <div class="login">LOGIN</div>
                </button>
              </div>
            </div>
          </form>
          
        </div>
        <img class="logo-sized" src="img/logo 3 sized.png" />
      </div>
    </div>
  </body>
</html>