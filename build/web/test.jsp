<%-- 
    Document   : test
    Created on : 16/09/2021, 09:06:18 PM
    Author     : Fow Idolo
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <jsp:useBean id="hora" class="java.util.Date"/>
        ${hora.hours}
        <c:if test="${hora.hours > 12}" >
            Buenas noches hpta
        </c:if>
            <c:choose>
                <c:when test="${hora.hours > 12}" >
                    Hello
                </c:when>
            
    </body>
</html>
