<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String nama;
    if(session.getAttribute("nama")==null) {
        nama = "(kosong)";
    } else {
        nama = session.getAttribute("nama").toString();
    }
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        Session nama = <%= nama %><br>
        <a href="form5.jsp">Kembali ke form</a>
    </body>
</html>
