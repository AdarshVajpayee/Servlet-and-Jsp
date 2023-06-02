<%-- 
    Document   : login
    Created on : 29 Apr, 2023, 11:32:23 PM
    Author     : vajpa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css"/>
        <title>Apple | Mac</title>
        <link rel="icon" href="favicon.ico">
    </head>
<body>
    <center><h3>Login</h3></center>
    <form action="Login" method="post">
  <div class="imgcontainer">
    <!--<img src="images.png" alt="Avatar" style="width:auto" class="avatar">-->
    <img src="apple-touch-icon.png" alt="Avatar" style="width:auto" class="avatar">
  </div>

  <div class="container">
    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="uname" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="pass" required>

    <button type="submit" value = "Login">Login</button>
    <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
    </label>
  </div>

  <div class="container" style="background-color:#f2f2f2">
    <button type="button" class="cancelbtn">Cancel</button>
    <span class="psw">Forgot <a href="#">password?</a></span>
  </div>
</form>
</body>
</html>
