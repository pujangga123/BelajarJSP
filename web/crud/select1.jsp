<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head><title>Koneksi Database MySQL via JSP</title></head>
<body>

<h2>Daftar Pengguna dari Database</h2>

<%
    // Konfigurasi koneksi
    String jdbcUrl = "jdbc:mysql://localhost:3306/test";
    String dbUser = "root";       // ganti dengan user database kamu
    String dbPass = "";   // ganti dengan password database kamu

    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    try {
        // Load driver
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPass);
        stmt = conn.createStatement();
        rs = stmt.executeQuery("SELECT * FROM daftar");

%>
        <table border="1">
            <tr>
                <th>ID</th><th>Nama</th><th>Email</th>
            </tr>
<%
        while (rs.next()) {
%>
            <tr>
                <td><%= rs.getInt("id") %></td>
                <td><%= rs.getString("nama") %></td>
            </tr>
<%
        }
    } catch (Exception e) {
%>
        <p style="color:red;">Error: <%= e.getMessage() %></p>
<%
    } finally {
        try { if (rs != null) rs.close(); } catch (Exception e) {}
        try { if (stmt != null) stmt.close(); } catch (Exception e) {}
        try { if (conn != null) conn.close(); } catch (Exception e) {}
    }
%>
        </table>

</body>
</html>
