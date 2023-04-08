<%-- 
    Document   : error.jsp
    Created on : 8 Apr, 2023, 8:24:57 PM
    Author     : vajpa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exception Handling in Jsp</title>
    </head>
    <body bgcolor="red">
        <h1>Hello User!</h1>
        <h5>
            In case of web Development it is not good practice to show just an exception
            instead create a new page for the kind of exception,with colors....etc.
        </h5>
        Error
        <%= exception %>
    </body>
</html>
