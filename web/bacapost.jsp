<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String nama = request.getParameter("username");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        Halo, <% out.println(nama); %>
    </body>
</html>
