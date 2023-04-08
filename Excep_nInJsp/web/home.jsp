<%-- 
    Document   : home
    Created on : 8 Apr, 2023, 8:22:57 PM
    Author     : vajpa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="error.jsp"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exception Handling in JSP Pages</title>
    </head>
    <body>
        
        <%
            try{
            int k = 9/0;
            }
            catch(Exception e){
            response.sendRedirect("error.jsp");
            out.println("Error: "+e.getMessage());
            }
        %>
        
    </body>
</html>
