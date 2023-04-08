<%-- 
    Document   : add
    Created on : 8 Apr, 2023, 2:48:09 PM
    Author     : vajpa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Basic Code using Scriplet tag</title>
    </head>
    <body>
        <h1>Hello Adarsh!</h1>
        <%
         int i = Integer.parseInt(request.getParameter("num1"));
        int j = Integer.parseInt(request.getParameter("num2"));
        
        int k = i+j;
        
        out.println("The Addition of two numbers = "+k);
        out.println("\n You can view Servlet type format of Jsp File.");
        out.println("\n By clicking  of add.jsp,you get an option 'view Servlet'-->then you get a file with name (add_jsp.java)");
        %>
    </body>
</html>
