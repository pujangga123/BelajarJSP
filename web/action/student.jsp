<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <jsp:include page="header.jsp"/>
<body>

    <h1> Student Registration Page</h1>
    <form action="studentdetails.jsp" method="post">
        First Name: <input type="text" name="firstName">
        <br><br> 
        Last Name: <input type="text" name="lastName">
        <br><br> 
        Email ID: <input type="email" name="emailId">
        <br><br> 
        Password: <input type="password" name="passwordx">
        <br><br> 
        <input type="submit" value="register">
    </form>

</body>
</html>