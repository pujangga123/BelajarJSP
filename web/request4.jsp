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
    
    String hobi = request.getParameter("hobi");
    
    Boolean status = Boolean.parseBoolean(request.getParameter("status"));
    String statusKeterangan;
    if(status) {
        statusKeterangan = "Sudah menikah";
    } else {
        statusKeterangan = "Belum menikah";
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
        Umur : <%= umur %> tahun. (<%= keterangan %>)<br>
        Hobi : <%= hobi %><br>
        Status : <%= statusKeterangan %>
    </body>
</html>
