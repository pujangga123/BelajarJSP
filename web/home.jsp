<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String namauser = session.getAttribute("namauser").toString();
%>
    
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Halaman Depan</h1>
        User: <%= namauser %>
    </body>
</html>
