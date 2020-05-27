<%-- 
    Document   : index
    Created on : 2020.05.20., 12:48:12
    Author     : Isi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DI BLOG</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/main.css" />
    </head>
    <body>
        <%
            response.sendRedirect("homeServlet");
        %>
     
    </body>
</html>
 