<%-- 
    Document   : left_menu
    Created on : 2020.05.20., 13:52:10
    Author     : Isi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/main.css" />

        <title>JSP Page</title>
    </head>
    <body>
        <div class="new_post">
            <ul>
                <p>Legfrissebb hozzászolások</p>
                <c:forEach var="a" items="${articles}">
                    <li><a href="${pageContext.request.contextPath}/blogServlet?blog_id=${a.id}">${a.title}</a></li>
                </c:forEach>
            </ul>
        </div>
  