<%-- 
    Document   : Register
    Created on : 9 Jun, 2023, 9:14:39 PM
    Author     : vajpa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Apple Registration</title>
        <link rel="icon" href="favicon.ico">
        <link rel="stylesheet" href="styleRegister.css"/>
    </head>
    <body>
        <h3>Create an account</h3>
        <form class="formContainer">
            <div class="imgcontainer">
                <img src="apple-touch-icon.png" alt="Avatar" style="width:auto" class="avatar">
            </div>
            <div class="CommonDesign" id="name">
                <input type="text" name="fname" placeholder="First name">
            </div>
            <div class="CommonDesign" id="name">
                <input type="text" name="fname" placeholder="Last name">
            </div>
            <div class="CommonDesign" id="email">
                <input type="email" name="femail" placeholder="Your Email Id">
            </div>
            <div class="CommonDesign" id="psw">
                <input type="password" name="fpassword" placeholder="Your Password">
            </div>
            <div class="CommonDesign" id="cpsw">
                <input type="password" name="cpassword" placeholder="Confirm Password">
            </div>

            <p>
                By enrolling your mobile phone number, you consent to receive automated security notifications via text message from Apple. Message and data rates may apply.
            </p>
            <div class="CommonDesign" id="psw">
                <button type="submit" value = "Sign Up">Continue</button>
            </div>
            <div class="CommonDesign" style="background-color:#f2f2f2">
                <span class="psw"> Already have an account?<a href="login.jsp">Sign in</a></span>
                <p>
                    Buying for work? Create a free business account
                    By creating an account or logging in, you agree to Amazon’s <span class="cb">Conditions of Use</span> and <span class="cb">Privacy Policy.</span>
                </p>
            </div>
        </form>




    </body>
</html>
