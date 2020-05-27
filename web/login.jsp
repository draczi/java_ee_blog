<%-- 
    Document   : login
    Created on : 2020.05.20., 15:06:33
    Author     : Isi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bejelentkezés</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/main.css" />
    </head>
    <body>
          <%@include file="inc/header.jsp" %>
          <div class="clear"></div>
          <div class="login_box">
              <form action="loginServlet" method="post">
                  <h2>Belépés</h2>
                  <input type="text" name="username" id="username" placeholder="Felhasználónév" />
                  <input type="password" name="password" id="password" placeholder="Jelszó" />
                  <input type="submit" value="Bejelentkezés"/>
              </form>
          </div>
           <div class="clear"></div>
          <%@include file="inc/footer.jsp" %>
    </body>
</html>
