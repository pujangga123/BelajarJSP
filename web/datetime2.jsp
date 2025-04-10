<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Date sekarang = new Date();
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm");
    
    Long luckynumber = Math.round(Math.random()*10);
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        Sekarang <%= sdf.format(sekarang) %><br>
        Angka keberuntunganmu hari ini <%= luckynumber %>
    </body>
</html>
