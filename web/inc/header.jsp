<%-- 
    Document   : header
    Created on : 2020.05.20., 12:42:28
    Author     : Isi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu Page</title>
        
    </head>
    <body>
        <div class="header">
            <div class="left-nav"><a href="index.jps">DI Blog</a></div>
            <c:if test="${fname != null}">
                <div class="dropdown">
                    <button class="dropbtn">Hello ${fname}</button>
                    <div class="dropdown-content">
                        <a href="${pageContext.request.contextPath}/loginServlet?fname=${fname}">Admin felület</a>
                        <a href="${pageContext.request.contextPath}/logoutServlet?sessionName=${fname}">Kijelentkezés</a>
                    </div>
                </div>
            </c:if>
            <c:if test="${fname == null}">
          
                <div class="right-nav"><a href="login.jsp" >Bejelentkezés</a></div>
            </c:if>
        </div>
        <div class="clear"></div>
        <c:if test="${fname == null}">
            <div class="header-kep"><img src="${pageContext.request.contextPath}/styles/images/java.jpg" /></div>
        </c:if>
