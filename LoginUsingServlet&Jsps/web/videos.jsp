<%-- 
    Document   : videos.jsp
    Created on : 30 Apr, 2023, 12:54:58 AM
    Author     : vajpa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
    <div style="align-content: center">
        <iframe width="560" style="padding:150px 370px" height="315" src="https://www.youtube.com/embed/0yfWzw1miw8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
    </div>
    </body>
</html>
