

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="belajarjsp.User" %>
<%
    // contoh array data
    User[] daftar = {
        new User("Ayu", "Dyah", "P", 3000000),
        new User("Yuda", "Darmawan", "L", 4000000),
        new User("Laura", "Himawan", "P", 5000000)
    };

    request.setAttribute("daftar", daftar);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <table>
        <tr>
            <th>NAMA</th><th>GAJI</th>
        </tr>
        <c:forEach var="row" items="${daftar}">
            <tr>
                <td>${row.namaLengkap()}</td>
                <td> <fmt:formatNumber type="number" value="${row.gaji}"/></td>
            </tr>
        </c:forEach>

    </table>

</head>
<body>

</body>
</html>
