<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="controller1.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- Expression Language -->
        EL: ${siswa.nama}<br>
        
        <!-- c:out -->
        <c:out value="${siswa.nama}" /><br>
        
        <!-- c:if -->
        <!-- perintah c:if tidak support ELSE -->
        <c:if test="${nilai>70}">
            KAMU LULUS<br>
        </c:if>
        <c:if test="${nilai<=70}">
            KAMU TIDAK LULUS<br>
        </c:if>
        
        <!-- c:forEach -->
        <c:forEach var="row" items="${daftarsiswa}">
            ${row.nama}<br>
        </c:forEach>
                
    </body>
</html>
