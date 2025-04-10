<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    // Mendapatkan tanggal sekarang
    Date sekarang = new Date();

    // Format hari dalam bahasa Indonesia
    SimpleDateFormat formatterHari = new SimpleDateFormat("EEEE", new java.util.Locale("id", "ID"));
    String hari = formatterHari.format(sekarang);

    // Format tanggal ke yyyy-MM-dd
    SimpleDateFormat formatterTanggal = new SimpleDateFormat("yyyy-MM-dd");
    String tanggalFormatted = formatterTanggal.format(sekarang);
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        Hari ini: <%= hari %><br>
        Tanggal sekarang: <%= tanggalFormatted %><br>
    </body>
</html>