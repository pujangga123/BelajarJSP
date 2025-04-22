<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="belajarjsp.User" %>
<%
    // contoh array data
    User[] daftar = {
        new User("Ayu", "Dyah", "P"),
        new User("Yuda", "Darmawan", "L"),
        new User("Laura", "Himawan", "P")
    };
    request.setAttribute("daftar", daftar);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:forEach var="row" items="${daftar}">
            <c:if test="${row.jenisKelamin=='L'}">
                <span style="color:blue">${row.namaLengkap()}</span><br>
            </c:if>
            <c:if test="${row.jenisKelamin=='P'}">
                <span style="color:red">${row.namaLengkap()}</span><br>
            </c:if>
        </c:forEach>
    </body>
</html>
