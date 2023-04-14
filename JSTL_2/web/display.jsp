<%-- 
    Document   : display
    Created on : 14 Apr, 2023, 10:56:25 PM
    Author     : vajpa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL 2</title>
    </head>
    <body>
        <c:forEach items="${students}" var = "s" >
            ${s}<br>
            ${s.name}
            <br>
        </c:forEach>
            While Working with JSTL We need to download a jar file from internet and then add to the project.
            <br>
            To Add To ur project you need to right click on your project then go to properties then 
            <br>
            go to libraries, then click on Add Jar file .
            <br>
            <c:import url="https://github.com/AdarshVajpayee19"></c:import>
            <c:out value="${students}"/>
    </body>
</html>

<!--

Output:

Student[rollno = 1,name = Abhay]
Abhay
Student[rollno = 2,name = Adarsh]
Adarsh
Student[rollno = 3,name = Aditi]
Aditi 
Github Page // Unbelieveable 

Student[rollno = 1,name = Abhay],Student[rollno = 2,name = Adarsh],Student[rollno = 3,name = Aditi]
-->

