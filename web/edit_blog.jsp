<%-- 
    Document   : new_mess
    Created on : 2020.05.20., 18:03:30
    Author     : Isi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/main.css" />

        <title>Blog Szerkesztése</title>
    </head>
    <body>
         <c:if test="${fname == null}">
            <c:redirect url="index.jsp"/>
        </c:if>
        <%@include file="inc/header.jsp" %>
        <div class="new_blog">
            <h1>Új bejegyzés</h1>
            <c:if test="${error != null}">
                <div class="errors"><p>${error}</p></div>
            </c:if>
            <c:forEach var="b" items="${blog}">
            <form action="editServlet" method="post">
                <input type="hidden" name="id" value="${b.id}" />
                <input type="hidden" name="fname" value="${fname}" />
                <label for="title">Bejegyzés címe:</label>
                <input type="text" name="title" id="title" value="${b.title}" />
                <label for="postBody">Blog üzenet:</label>
                <textarea type="text" name="postBody" id="postBody" rows="50" cols="50" >${b.message}</textarea>
                <input type="submit" name="submit" value="Módosít" />
                <a href="${pageContext.request.contextPath}/loginServlet?fname=${fname}" class="cancel_btn">Mégse</a>
            </form>
            </c:forEach>
        </div>
        <%@include file="inc/footer.jsp" %>
    </body>
</html>
