<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Pesan Anda kami terima</h1>
        
        Item: ${item}<br>
        Qty: <c:if test="${qty>10}">
            <span style="color:blue">${qty}</span>
        </c:if>
        <c:if test="${qty<=10}">
            <span style="color:red">${qty}</span>
        </c:if>
        
            
            <a href="form.jsp">Tambah Pesanan</a>
    </body>
</html>
