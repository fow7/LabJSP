<%-- 
    Document   : response
    Created on : 16/09/2021, 09:32:47 PM
    Author     : Fow Idolo
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
        <center> <h1 class="display-1">
        <jsp:useBean id="myBean" scope="session" class="co.edu.unipiloto.NameHandler" />
        
        <jsp:setProperty name="myBean" property="name" />
        <jsp:setProperty name="myBean" property="fecha" />
        Hola 
        <jsp:useBean id="hora"  class="java.util.Date" />
        </center> </h1> 
    <body>    
    <center> <h1 class="display-1">
    <c:choose>
        <c:when test="${hora.hours > 3 && hora.hours < 12}">
            Buenos dias!
        </c:when>
        <c:when test="${hora.hours >= 12 && hora.hours < 7}">
            Buenas tardes!
        </c:when>     
        <c:when test="${hora.hours >= 7 && hora.hours<=24 || hora.hours >= 0 && hora.hours<=3}">
            Buenas noches!
        </c:when>
            <c:otherwise>
               No valido
            </c:otherwise>      
    </c:choose>   
               
               
               <jsp:getProperty name="myBean" property="name" />
               tiene 
               <jsp:getProperty name="myBean" property="age" />
               años
    </center> </h1>
    </body>        
               
</html>               
               
        
    

