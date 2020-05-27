<%-- 
    Document   : index
    Created on : 2020.05.20., 12:48:12
    Author     : Isi
--%>

<%@page import="jdk.nashorn.internal.objects.NativeString"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DI BLOG</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/main.css" />
    </head>
    <body>
        <%@include file="inc/header.jsp" %>
         <div class="content">
            <div class="left">
                <%@include file="inc/left_menu.jsp" %>
            </div>
            <div class="right">
                <form class="search_form" action="homeServlet" method="GET">
                    <input type="text" id="search" name="search" placeholder="Keresés a blogok között" value="${search}" />
                    <input type="submit" id="search_btn" name="search_btn" value="Keresés" />
                    <a href="${pageContext.request.contextPath}/homeServlet" class="del_btn">Törlés</a>
                </form>
                <div class="records">
                    <c:forEach var="b" items="${allBlogs}">
                     <div class="record">
                        <div class="blog_head">
                            <h4 class="author">Készítette: ${b.author}}</h4>
                            <h4 class="create_at">Időpont:  <fmt:formatDate value="${b.createdAt}" pattern="yyyy-MM-dd" /></h4>
                        </div>
                        <div class="clear"></div>
                        <div class="blog_body">
                            <h1>${b.title}</h1>
                            <p> 
                                ${fn:substring(b.message, 0, 300)} ...
                            </p>
                            <a href="${pageContext.request.contextPath}/blogServlet?blog_id=${b.id}" class="blog_more"/>Több</a>
                        </div>
                    </div>
                </c:forEach>
                   
                   
                </div>
            </div>
        </div>
            <div class="clear"></div>
              <%@include file="inc/footer.jsp" %>
    </body>
</html>
 