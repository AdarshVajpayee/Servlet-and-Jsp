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
        <link rel="stylesheet" href="Styles/style.css"/>
        <!--<script src="https://cdn.tailwindcss.com"></script>-->
        <!--<script src="https://kit.fontawesome.com/d94c02f20f.js" crossorigin="anonymous"></script>-->
        <link rel="icon" href="Images/favicon.ico">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="Styles/Splash.css"/>
    </head>
    <body>
        <%
            // Browser Specific Code.
            response.setHeader("Cache-Control", "no-store");
            response.setHeader("Pragma", "no-cache");
            response.setHeader("Expires", "0");
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
        
        <div class="intro">
            <h1 class="logo-header">
                <span class="logo">Apple</span><span class="logo"> Store</span>
            </h1>
        </div>
        
         
        
        <nav id="navbar" class="navbar navbar-expand-lg navbar-light bg-light ">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01"
                    aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
                <a class="navbar-brand logo1" href="#"><b>Apple Store</b></a>
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
                <div class="Right">
                    <form action="Logout" class ="formChange">
                        <button type="submit" value = "Logout" class="outbtn" style="margin: 5px 50px 5px;">Logout</button>
                    </form> 
                </div>

            </div>
        </nav>
        
        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="Images/Aplu.jpg" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="Images/Aplu4.jpg" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="Images/Aplu2.jpg" alt="Third slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
        <br>
        <div class="jumbotron">
            <h1 class="display-4">Welcome ${username}</h1>
            <h1 class="display-4">To<br>Apple's<br>BlackFriday Sales</h1>
            <p class="lead">Apple, known for its premium products and cutting-edge technology, has been captivating the world with its Black Friday sales. Each year, this highly anticipated event brings an exciting array of discounts and offers on a wide range of Apple products, making it the perfect time to indulge in the Apple ecosystem or upgrade your existing devices..</p>
            <hr class="my-4">
            <p>It uses During Apple's Black Friday sales, you can expect to find remarkable deals on popular items like iPhones, iPads, MacBooks, Apple Watches, AirPods, and more. Whether you're a tech enthusiast, a creative professional, or simply someone who appreciates top-quality gadgets, Apple's Black Friday sales offer something for everyone.</p>
            <p class="lead">
                <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a>
            </p>
        </div>
        <div class="container">

            <br>
            <div id="cardContainer" class="row">
                <div class="card mx-2 my-2" style="width: 22rem;">
                    <img class="card-img-top" src="Images/Aplu.jpg" alt="${contests[item].name}">
                    <div class="card-body">
                        <h5 class="card-title">${contests[item].name}</h5>
                        <p class="card-text">Status: ${contests[item].status}</p>
                        <p class="card-text">In 24 hours? ${contests[item].status}</p>
                        <p class="card-text">Start Time: ${contests[item].start_time}</p>
                        <p class="card-text">End Time: <small class="text-muted">${contests[item].end_time}</small></p>
                        <a href="${contests[item].url}" class="btn btn-primary my-4">Visit Contest</a>
                    </div>
                </div>
                <div class="card mx-2 my-2" style="width: 22rem;">
                    <img class="card-img-top" src="Images/Aplu2.jpg" alt="${contests[item].name}">
                    <div class="card-body">
                        <h5 class="card-title">${contests[item].name}</h5>
                        <p class="card-text">Status: ${contests[item].status}</p>
                        <p class="card-text">In 24 hours? ${contests[item].status}</p>
                        <p class="card-text">Start Time: ${contests[item].start_time}</p>
                        <p class="card-text">End Time: <small class="text-muted">${contests[item].end_time}</small></p>
                        <a href="${contests[item].url}" class="btn btn-primary my-4">Visit Contest</a>
                    </div>
                </div>
                <div class="card mx-2 my-2" style="width: 22rem;">
                    <img class="card-img-top" src="Images/Aplu4.jpg" alt="${contests[item].name}">
                    <div class="card-body">
                        <h5 class="card-title">${contests[item].name}</h5>
                        <p class="card-text">Status: ${contests[item].status}</p>
                        <p class="card-text">In 24 hours? ${contests[item].status}</p>
                        <p class="card-text">Start Time: ${contests[item].start_time}</p>
                        <p class="card-text">End Time: <small class="text-muted">${contests[item].end_time}</small></p>
                        <a href="${contests[item].url}" class="btn btn-primary my-4">Visit Contest</a>
                    </div>
                </div>
                <div class="card mx-2 my-2" style="width: 22rem;">
                    <img class="card-img-top" src="Images/Aplu2.jpg" alt="${contests[item].name}">
                    <div class="card-body">
                        <h5 class="card-title">${contests[item].name}</h5>
                        <p class="card-text">Status: ${contests[item].status}</p>
                        <p class="card-text">In 24 hours? ${contests[item].status}</p>
                        <p class="card-text">Start Time: ${contests[item].start_time}</p>
                        <p class="card-text">End Time: <small class="text-muted">${contests[item].end_time}</small></p>
                        <a href="${contests[item].url}" class="btn btn-primary my-4">Visit Contest</a>
                    </div>
                </div>



                <div class="card mx-2 my-2" style="width: 22rem;">
                    <img class="card-img-top" src="Images/Aplu.jpg" alt="${contests[item].name}">
                    <div class="card-body">
                        <h5 class="card-title">${contests[item].name}</h5>
                        <p class="card-text">Status: ${contests[item].status}</p>
                        <p class="card-text">In 24 hours? ${contests[item].status}</p>
                        <p class="card-text">Start Time: ${contests[item].start_time}</p>
                        <p class="card-text">End Time: <small class="text-muted">${contests[item].end_time}</small></p>
                        <a href="${contests[item].url}" class="btn btn-primary my-4">Visit Contest</a>
                    </div>
                </div>
                <div class="card mx-2 my-2" style="width: 22rem;">
                    <img class="card-img-top" src="Images/Aplu2.jpg" alt="${contests[item].name}">
                    <div class="card-body">
                        <h5 class="card-title">${contests[item].name}</h5>
                        <p class="card-text">Status: ${contests[item].status}</p>
                        <p class="card-text">In 24 hours? ${contests[item].status}</p>
                        <p class="card-text">Start Time: ${contests[item].start_time}</p>
                        <p class="card-text">End Time: <small class="text-muted">${contests[item].end_time}</small></p>
                        <a href="${contests[item].url}" class="btn btn-primary my-4">Visit Contest</a>
                    </div>
                </div>
                <div class="card mx-2 my-2" style="width: 22rem;">
                    <img class="card-img-top" src="Images/Aplu4.jpg" alt="${contests[item].name}">
                    <div class="card-body">
                        <h5 class="card-title">${contests[item].name}</h5>
                        <p class="card-text">Status: ${contests[item].status}</p>
                        <p class="card-text">In 24 hours? ${contests[item].status}</p>
                        <p class="card-text">Start Time: ${contests[item].start_time}</p>
                        <p class="card-text">End Time: <small class="text-muted">${contests[item].end_time}</small></p>
                        <a href="${contests[item].url}" class="btn btn-primary my-4">Visit Contest</a>
                    </div>
                </div>
                <div class="card mx-2 my-2" style="width: 22rem;">
                    <img class="card-img-top" src="Images/Aplu2.jpg" alt="${contests[item].name}">
                    <div class="card-body">
                        <h5 class="card-title">${contests[item].name}</h5>
                        <p class="card-text">Status: ${contests[item].status}</p>
                        <p class="card-text">In 24 hours? ${contests[item].status}</p>
                        <p class="card-text">Start Time: ${contests[item].start_time}</p>
                        <p class="card-text">End Time: <small class="text-muted">${contests[item].end_time}</small></p>
                        <a href="${contests[item].url}" class="btn btn-primary my-4">Visit Contest</a>
                    </div>
                </div>


                <div class="card mx-2 my-2" style="width: 22rem;">
                    <img class="card-img-top" src="Images/Aplu.jpg" alt="${contests[item].name}">
                    <div class="card-body">
                        <h5 class="card-title">${contests[item].name}</h5>
                        <p class="card-text">Status: ${contests[item].status}</p>
                        <p class="card-text">In 24 hours? ${contests[item].status}</p>
                        <p class="card-text">Start Time: ${contests[item].start_time}</p>
                        <p class="card-text">End Time: <small class="text-muted">${contests[item].end_time}</small></p>
                        <a href="${contests[item].url}" class="btn btn-primary my-4">Visit Contest</a>
                    </div>
                </div>
                <div class="card mx-2 my-2" style="width: 22rem;">
                    <img class="card-img-top" src="Images/Aplu2.jpg" alt="${contests[item].name}">
                    <div class="card-body">
                        <h5 class="card-title">${contests[item].name}</h5>
                        <p class="card-text">Status: ${contests[item].status}</p>
                        <p class="card-text">In 24 hours? ${contests[item].status}</p>
                        <p class="card-text">Start Time: ${contests[item].start_time}</p>
                        <p class="card-text">End Time: <small class="text-muted">${contests[item].end_time}</small></p>
                        <a href="${contests[item].url}" class="btn btn-primary my-4">Visit Contest</a>
                    </div>
                </div>
                <div class="card mx-2 my-2" style="width: 22rem;">
                    <img class="card-img-top" src="Images/Aplu4.jpg" alt="${contests[item].name}">
                    <div class="card-body">
                        <h5 class="card-title">${contests[item].name}</h5>
                        <p class="card-text">Status: ${contests[item].status}</p>
                        <p class="card-text">In 24 hours? ${contests[item].status}</p>
                        <p class="card-text">Start Time: ${contests[item].start_time}</p>
                        <p class="card-text">End Time: <small class="text-muted">${contests[item].end_time}</small></p>
                        <a href="${contests[item].url}" class="btn btn-primary my-4">Visit Contest</a>
                    </div>
                </div>
                <div class="card mx-2 my-2" style="width: 22rem;">
                    <img class="card-img-top" src="Images/Aplu2.jpg" alt="${contests[item].name}">
                    <div class="card-body">
                        <h5 class="card-title">${contests[item].name}</h5>
                        <p class="card-text">Status: ${contests[item].status}</p>
                        <p class="card-text">In 24 hours? ${contests[item].status}</p>
                        <p class="card-text">Start Time: ${contests[item].start_time}</p>
                        <p class="card-text">End Time: <small class="text-muted">${contests[item].end_time}</small></p>
                        <a href="${contests[item].url}" class="btn btn-primary my-4">Visit Contest</a>
                    </div>
                </div>


                <div class="card mx-2 my-2" style="width: 22rem;">
                    <img class="card-img-top" src="Images/Aplu.jpg" alt="${contests[item].name}">
                    <div class="card-body">
                        <h5 class="card-title">${contests[item].name}</h5>
                        <p class="card-text">Status: ${contests[item].status}</p>
                        <p class="card-text">In 24 hours? ${contests[item].status}</p>
                        <p class="card-text">Start Time: ${contests[item].start_time}</p>
                        <p class="card-text">End Time: <small class="text-muted">${contests[item].end_time}</small></p>
                        <a href="${contests[item].url}" class="btn btn-primary my-4">Visit Contest</a>
                    </div>
                </div>
                <div class="card mx-2 my-2" style="width: 22rem;">
                    <img class="card-img-top" src="Images/Aplu2.jpg" alt="${contests[item].name}">
                    <div class="card-body">
                        <h5 class="card-title">${contests[item].name}</h5>
                        <p class="card-text">Status: ${contests[item].status}</p>
                        <p class="card-text">In 24 hours? ${contests[item].status}</p>
                        <p class="card-text">Start Time: ${contests[item].start_time}</p>
                        <p class="card-text">End Time: <small class="text-muted">${contests[item].end_time}</small></p>
                        <a href="${contests[item].url}" class="btn btn-primary my-4">Visit Contest</a>
                    </div>
                </div>
                <div class="card mx-2 my-2" style="width: 22rem;">
                    <img class="card-img-top" src="Images/Aplu4.jpg" alt="${contests[item].name}">
                    <div class="card-body">
                        <h5 class="card-title">${contests[item].name}</h5>
                        <p class="card-text">Status: ${contests[item].status}</p>
                        <p class="card-text">In 24 hours? ${contests[item].status}</p>
                        <p class="card-text">Start Time: ${contests[item].start_time}</p>
                        <p class="card-text">End Time: <small class="text-muted">${contests[item].end_time}</small></p>
                        <a href="${contests[item].url}" class="btn btn-primary my-4">Visit Contest</a>
                    </div>
                </div>
                <div class="card mx-2 my-2" style="width: 22rem;">
                    <img class="card-img-top" src="Images/Aplu2.jpg" alt="${contests[item].name}">
                    <div class="card-body">
                        <h5 class="card-title">${contests[item].name}</h5>
                        <p class="card-text">Status: ${contests[item].status}</p>
                        <p class="card-text">In 24 hours? ${contests[item].status}</p>
                        <p class="card-text">Start Time: ${contests[item].start_time}</p>
                        <p class="card-text">End Time: <small class="text-muted">${contests[item].end_time}</small></p>
                        <a href="${contests[item].url}" class="btn btn-primary my-4">Visit Contest</a>
                    </div>
                </div>
                <div class="card mx-2 my-2" style="width: 22rem;">
                    <img class="card-img-top" src="Images/Aplu.jpg" alt="${contests[item].name}">
                    <div class="card-body">
                        <h5 class="card-title">${contests[item].name}</h5>
                        <p class="card-text">Status: ${contests[item].status}</p>
                        <p class="card-text">In 24 hours? ${contests[item].status}</p>
                        <p class="card-text">Start Time: ${contests[item].start_time}</p>
                        <p class="card-text">End Time: <small class="text-muted">${contests[item].end_time}</small></p>
                        <a href="${contests[item].url}" class="btn btn-primary my-4">Visit Contest</a>
                    </div>
                </div>
                <div class="card mx-2 my-2" style="width: 22rem;">
                    <img class="card-img-top" src="Images/Aplu2.jpg" alt="${contests[item].name}">
                    <div class="card-body">
                        <h5 class="card-title">${contests[item].name}</h5>
                        <p class="card-text">Status: ${contests[item].status}</p>
                        <p class="card-text">In 24 hours? ${contests[item].status}</p>
                        <p class="card-text">Start Time: ${contests[item].start_time}</p>
                        <p class="card-text">End Time: <small class="text-muted">${contests[item].end_time}</small></p>
                        <a href="${contests[item].url}" class="btn btn-primary my-4">Visit Contest</a>
                    </div>
                </div>
                <div class="card mx-2 my-2" style="width: 22rem;">
                    <img class="card-img-top" src="Images/Aplu4.jpg" alt="${contests[item].name}">
                    <div class="card-body">
                        <h5 class="card-title">${contests[item].name}</h5>
                        <p class="card-text">Status: ${contests[item].status}</p>
                        <p class="card-text">In 24 hours? ${contests[item].status}</p>
                        <p class="card-text">Start Time: ${contests[item].start_time}</p>
                        <p class="card-text">End Time: <small class="text-muted">${contests[item].end_time}</small></p>
                        <a href="${contests[item].url}" class="btn btn-primary my-4">Visit Contest</a>
                    </div>
                </div>

                <div class="card mx-2 my-2" style="width: 22rem;">
                    <img class="card-img-top" src="Images/Aplu.jpg" alt="${contests[item].name}">
                    <div class="card-body">
                        <h5 class="card-title">${contests[item].name}</h5>
                        <p class="card-text">Status: ${contests[item].status}</p>
                        <p class="card-text">In 24 hours? ${contests[item].status}</p>
                        <p class="card-text">Start Time: ${contests[item].start_time}</p>
                        <p class="card-text">End Time: <small class="text-muted">${contests[item].end_time}</small></p>
                        <a href="${contests[item].url}" class="btn btn-primary my-4">Visit Contest</a>
                    </div>
                </div>
                <div class="card mx-2 my-2" style="width: 22rem;">
                    <img class="card-img-top" src="Images/Aplu2.jpg" alt="${contests[item].name}">
                    <div class="card-body">
                        <h5 class="card-title">${contests[item].name}</h5>
                        <p class="card-text">Status: ${contests[item].status}</p>
                        <p class="card-text">In 24 hours? ${contests[item].status}</p>
                        <p class="card-text">Start Time: ${contests[item].start_time}</p>
                        <p class="card-text">End Time: <small class="text-muted">${contests[item].end_time}</small></p>
                        <a href="${contests[item].url}" class="btn btn-primary my-4">Visit Contest</a>
                    </div>
                </div>

            </div>
        </div>

        

                    
<script src="Js/app.js"></script>
        <script src="Js/script.js"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
                integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
                integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
                integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>

    </body>
</html>
