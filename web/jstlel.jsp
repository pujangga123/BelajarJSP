<%@page import="belajarjsp.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    User siswa = new User("Budi", "Raharjo", "L", 3000000);
    Integer nilai = 70;

    User[] daftar = {
        new User("Ayu", "Dyah", "P", 3000000),
        new User("Yuda", "Darmawan", "L", 4000000),
        new User("Laura", "Himawan", "P", 5000000)
    };

    // set attribut
    request.setAttribute("siswa", siswa);
    request.setAttribute("nilai", nilai);
    request.setAttribute("daftarsiswa", daftar);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- Expression Language -->
        EL: ${siswa.namaLengkap()}<br>
        <br>

        <!-- c:out -->
        <c:out value="${siswa.namaLengkap()}" /><br>

        <br>
        
        <!-- c:if -->
        <!-- perintah c:if tidak support ELSE -->
        <c:if test="${nilai>70}">
            KAMU LULUS<br>
        </c:if>
        <c:if test="${nilai<=70}">
            KAMU TIDAK LULUS<br>
        </c:if>

        <br>

        <!-- c:forEach -->
        <c:forEach var="row" items="${daftarsiswa}">
            ${row.namaLengkap()} - ${row.jenisKelamin} -  ${row.gaji}<br>
        </c:forEach>

    </body>
</html>