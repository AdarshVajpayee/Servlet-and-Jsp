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
        <link rel="icon" href="Images/favicon.ico">
        <link rel="stylesheet" href="Styles/styleRegister.css"/>
    </head>
    <body>
        <h3>Create an account</h3>
        <form class="formContainer" action="" name ="MyForm"  onsubmit= "return validateForm()" method="post">
            <div class="imgcontainer">
                <img src="Images/apple-touch-icon.png" alt="Avatar" style="width:auto" class="avatar">
            </div>
            <div class="CommonDesign" id="ftname">
                <input type="text" name="fname" placeholder="First name" required><b><span class="formError"></span></b>
            </div>
            <div class="CommonDesign" id="ltname">
                <input type="text" name="lname" placeholder="Last name" required><b><span class="formError"></span></b>
            </div>
            <div class="CommonDesign" id="email">
                <input type="email" name="femail" placeholder="Your Email Id" required ><b><span class="formError"></span></b>
            </div>
            <div class="CommonDesign" id="phone">
                <input type="phone" name="fphone" placeholder="Your Phone No" required ><b><span class="formError"></span></b>
            </div>
            <div class="CommonDesign" id="psw">
                <input type="password" name="fpassword" placeholder="Your Password" required ><b><span class="formError"></span></b>
            </div>
            <div class="CommonDesign" id="cpsw">
                <input type="password" name="cpassword" placeholder="Confirm Password" required ><b><span class="formError"></span></b>
            </div>

            <p>
                By enrolling your mobile phone number, you consent to receive automated security notifications via text message from Apple. Message and data rates may apply.
            </p>
            <div class="CommonDesign" id="spsw">
                <button type="submit" value = "Submit">Continue</button>
            </div>
            <div class="CommonDesign" style="background-color:#f2f2f2">
                <span class="psw"> Already have an account?<a href="login.jsp">Sign in</a></span>
                <p>
                    Buying for work? Create a free business account
                    By creating an account or logging in, you agree to Apple’s <span class="cb">Conditions of Use</span> and <span class="cb">Privacy Policy.</span>
                </p>
            </div>
        </form>


        <script src="Js/Register.js" ></script> 

    </body>
</html>
