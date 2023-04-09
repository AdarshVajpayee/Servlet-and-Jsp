<%-- 
    Document   : profile
    Created on : 8 Apr, 2023, 8:57:01 PM
    Author     : vajpa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.lang.ClassNotFoundException" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JDBC Tut1</title>
    </head>
    <body>
        <%
           String url = "jdbc:mysql://localhost:4307/adarsh";
           String username = "root";
           String password = "Adarsh12vaj3";
           

           String sql = "select * from students";
           
           String driver = "com.mysql.cj.jdbc.Driver";
           Class.forName(driver);
           Connection con  = DriverManager.getConnection(url,username,password);
           Statement st = con.createStatement();
           ResultSet rs = st.executeQuery(sql);
           
           String stuData="";
           while(rs.next())
           {
                stuData = rs.getInt(1)+":"+rs.getString(2)+":"+rs.getInt(3)+"<br>";
//                System.out.println(stuData); prints on console
                out.println(stuData+"\n");
           }
//          Output on webpage 
//           1:Abhay Kamat:99
//           2:Adarsh Vajpayee:79
//           3:Aditi Srinivas:98
        %>
    </body>
</html>
