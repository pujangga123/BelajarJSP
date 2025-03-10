<%-- 
    Document   : login1
    Created on : 10 Mar 2025, 22.20.46
    Author     : En Tay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="doLogin.jsp" method="post">
            <input name="username">
            <input name="password" type="password">
            <button>Kirim</button>
        </form>
    </body>
</html>
