<%-- 
    Document   : displayfunc
    Created on : 28 Apr, 2023, 10:54:08 PM
    Author     : vajpa
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL Function Tags</title>
    </head>
    <body>
        <c:set var="str" value="Adarsh Learning Java In 6th Sem." />
        <c:forEach items="${fn:split(str,' ')}" var="s">
            <br>
            ${s}
        </c:forEach>
        <br>
        index of Java : ${fn:indexOf(str,'Java')}
        <br>
        Is it Contains : ${fn:contains(str,'Java')}
        <br>
        Endswith : ${fn:endsWith(str, 'Sem.')}
        <br>
        UpperCase : ${fn:toUpperCase(str)}
        <br>
        LowerCase : ${fn:toLowerCase(str)}
        <br>
        SubString : ${fn:substring(str,0, 7)}
        <br>
        Replace : ${fn:replace(str, "Adarsh", "Aditya")}      
    </body>
</html>

