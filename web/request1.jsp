<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    // panggil halaman ini dengan tambahan query ?nama=Budi
    // contoh: http://localhost:8080/BelajarJSP/request1.jsp?nama=Budi
    String nama = request.getParameter("nama");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Hello <%= nama %></h1>
    </body>
</html>
