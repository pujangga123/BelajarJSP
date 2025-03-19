<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String nama = request.getParameter("nama");
    Integer umur = Integer.parseInt(request.getParameter("umur"));
    String keterangan;
    
    if(umur>40) {
        keterangan = "sudah dewasa";
    } else {
        keterangan = "masih muda";
    }
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        Halo <%= nama %><br>
        Umurmu <%= umur %> tahun. (<%= keterangan %>)
    </body>
</html>
