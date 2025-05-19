<%@ page import="java.sql.*" %>
<%
    String DBDRIVER = "com.mysql.cj.jdbc.Driver";
    String DBCONNECTION = "jdbc:mysql://localhost:3306/test";
    String DBUSER = "root";
    String DBPASS = "";

    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    try {
        Class.forName(DBDRIVER);
        conn = DriverManager.getConnection(DBCONNECTION, DBUSER, DBPASS);
        stmt = conn.createStatement();
        rs = stmt.executeQuery("SELECT * FROM daftar");
    } catch (Exception e) {
        //
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% while (rs.next()) {%>
            <%= rs.getInt("id")%><br>
            <%= rs.getString("nama")%><br>
            <%= rs.getInt("nilai")%><br>
            <hr>
        <% } %>
    
    <%
        rs.close();
        stmt.close();
        conn.close();
    %>
</body>
</html>
