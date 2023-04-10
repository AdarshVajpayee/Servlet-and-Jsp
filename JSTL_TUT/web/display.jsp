<%-- 
    Document   : newjsp
    Created on : 10 Apr, 2023, 10:13:56 PM
    Author     : vajpa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL Tut1</title>
    </head>
    <body>
        <h4>Hello Everyone!</h4>
        <%
            String name = request.getAttribute("Label").toString();
            out.println(name);
            out.println("<br>In terms of Expression language.");
        %>
        <br>
            ${Label}
    </body>
</html>
