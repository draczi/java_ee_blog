    <%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="SessionBeans.blogsDAO"%>
<%@page import="Servlet.blogServlet"%>
<%-- 
    Document   : admin
    Created on : 2020.05.20., 15:48:05
    Author     : Isi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/main.css" />

    </head>
    <body>
        <c:if test="${fname == null}">
            <c:redirect url="index.jsp"/>
        </c:if>
        <%@include file="inc/header.jsp" %>
        <div class="admin_blog">
            <a href="new_post.jsp"><h1 style="margin-left: 20px">Új Bejegyzés</h1></a>
            <table>
                <thead>
                    <th>Azonosító</th>
                    <th>Blog cím</th>
                    <th>Blog tartalma</th>
                    <th>Szerző</th>
                    <th>Dátum</th>
                </thead>
                <c:forEach var="b" items="${allBlogs}">
                     <tr>
                    <td class="azo">${b.id}</td>
                    <td>${b.title}</td>
                    <td class="mess"> ${fn:substring(b.message, 0, 100)} ...</td>
                    <td>${b.author}</td>
                    <td><fmt:formatDate value="${b.createdAt}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
                    <td><a href="${pageContext.request.contextPath}/executeServlet?edit_id=${b.id}" class="modify">Szerkesztés</a></td>
                    <td><a href="${pageContext.request.contextPath}/executeServlet?delete_id=${b.id}" class="modify">Törlés</a></td>
                </tr>
                </c:forEach>
            </table>
        </div>
        <%@include file="inc/footer.jsp" %>
    </body>
</html>
