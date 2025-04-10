<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Date sekarang = new Date();
    SimpleDateFormat sdf = new SimpleDateFormat("EEEE yyyy-MM-dd", new java.util.Locale("id", "ID"));
    String hari = sdf.format(sekarang);
    
    int jam = sekarang.getHours();
    
    String waktu;
    if(jam<12) {
        waktu = "Pagi";
    } else {
        waktu = "Siang";
    }
    jam = 9;
    
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        Sekarang <%= sdf.format(sekarang) %><br>
        <%= waktu %> pukul <%= jam %>
    </body>
</html>
