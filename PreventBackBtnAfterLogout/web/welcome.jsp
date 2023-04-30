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
        <title>Welcome</title>
        <link rel="stylesheet" href="style.css"/>
    </head>
    <body>
        <%
            // Browser Specific Code.
            response.setHeader("cache-control", "no-cache,no-store,must-revalidate");
            if (session.getAttribute("username") == null) {
                response.sendRedirect("login.jsp");
            }
        %>

    <center><h1>Welcome : ${username}</h1><br>
        <br>
        <h1>${username} Do you want to watch my Youtube Video</h1>
        <a href="videos.jsp">Videos Here</a>
        <br>
        <br>
    </center>
    <div class="imgcontainer">
        <img src="Video.png" alt="Avatar" style="width:auto" class="avatar">
    </div>

    <form action="Logout">
        <button type="submit" value = "Logout">Logout</button>
    </form>
</body>
</html>
