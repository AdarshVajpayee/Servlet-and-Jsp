<%-- 
    Document   : display.jsp
    Created on : 14 Apr, 2023, 11:58:59 PM
    Author     : vajpa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@taglib  prefix = "sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTl SQL TAGS</title>
    </head>
    <body>
        
        <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:4307/adarsh" user="root" password = "Your Password"/>
        
        <sql:update dataSource = "${db}" var = "rs">
             INSERT INTO students VALUES (6, "Naayi",85);
        </sql:update>
        
        <sql:query dataSource="${db}" var="rs">  
        SELECT * from students;  
        </sql:query>  
            
        <table border = "1" width = "100%">
         <tr>
            <th>USN</th>
            <th>Name</th>
            <th>Marks</th>
         </tr>
         
        <c:forEach items="${rs.rows}" var ="stud">
            <tr>
                <td><c:out value="${stud.rollno}" /></td>
                <td><c:out value="${stud.name}" /></td>
                <td><c:out value="${stud.marks}" /></td>
            <tr>
        </c:forEach>
      </table>

    </body>
</html>

<!--
USN 	Name 	Marks
1 	Abhay Kamat 	99
2 	Adarsh Vajpayee 79
3 	Aditi Srinivas 	98
4 	Sunil Kumar 	100
5 	Prajjwal 	85

OUTPUT in table Form 

-->

