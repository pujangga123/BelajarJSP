<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>forEach Example</title>
</head>
<body>

<h2>Fruit List</h2>

<%-- Create a sample list in request scope --%>
<%
    String[] fruits = { "A","B","C" };
    request.setAttribute("fruitList", fruits);
%>

<ul>
    <c:forEach var="fruit" items="${fruitList}">
        <li>${fruit}</li>
    </c:forEach>
</ul>

</body>
</html>
