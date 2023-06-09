<%-- 
    Document   : welcome
    Created on : 30 Apr, 2023, 12:29:24 AM
    Author     : vajpa
--%>


<%@page import="javax.websocket.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Apple</title>
         <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="style.css"/>
        <link rel="icon" href="favicon.ico">
    </head>
    <body>
        <%
            // Browser Specific Code.
            response.setHeader("Cache-Control","no-store");
            response.setHeader("Pragma","no-cache"); 
            response.setHeader ("Expires", "0");
            if (session.getAttribute("username") == null) {
                response.sendRedirect("login.jsp");
            }
        %>

<!--    <center><h1>Welcome : ${username}</h1><br>
        <br>
        <h1>${username} Do you want to watch my Youtube Video</h1>
        <a href="videos.jsp">Videos Here</a>
        <br>
        <br>
    </center>
    <div class="imgcontainer">
        <img src="Video.png" alt="Avatar" style="width:auto" class="avatar">
    </div>-->
        
       <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01"
            aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
            <a class="navbar-brand" href="#">Apple</a>
            <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Services</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="#">about</a>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <!--<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>-->
            </form>
        </div>
    </nav>

    <div class="container">
        <div class="jumbotron">
            <h3 class="welcome">Welcome ${username}</h3>
            <h1 class="display-4">Apple<br>BlackFriday Sales</h1>
            <p class="lead">This is a simple hero unit, a simple jumbotron-style component for calling extra attention
                to featured content or information.</p>
            <hr class="my-4">
            <p>It uses utility classes for typography and spacing to space content out within the larger container.</p>
            <p class="lead">
                <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a>
            </p>
        </div>
        <br>
        <div id="cardContainer" class="row">
            
        </div>
    </div>


<!-- 
    <ol>
        <li>Use a free API from internet and fetch your app with live data.</li>
        <li>Create a Note Saving app Which Stores your note to localStorage.</li>
        <li>Repeat the last question and fetch the note Which was record.</li>
        <li>Delete the note in the previous question.</li>
        https://kontests.net/api/v1/all
    </ol> -->



    <script src="script.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>

    <form action="Logout">
        <button type="submit" value = "Logout">Logout</button>
    </form>
</body>
</html>
