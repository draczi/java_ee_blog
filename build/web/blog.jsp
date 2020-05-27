<%-- 
    Document   : index
    Created on : 2020.05.20., 12:48:12
    Author     : Isi
--%>

<%@page import="jdk.nashorn.internal.objects.NativeString"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Blog</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/main.css" />
    </head>
    <body>
        <%@include file="inc/header.jsp" %>
        <div class="clear"></div>
        
        <c:forEach var="b" items="${blog}" >
        <div class="content blog">
            <a href="" style="text-decoration: none" ><h3 style="margin-top: 20px; color: #000;">Vissza</h3></a>
            <h1 class="blog_title">${b.title}<span class="author">${b.author} <fmt:formatDate value="${b.createdAt}" pattern="yyyy-MM-dd" /></span></h1>
            <p class="b_body">${b.message}</p>
        </div>
        </c:forEach>
            <div class="clear"></div>
              <%@include file="inc/footer.jsp" %>
    </body>
</html>
 