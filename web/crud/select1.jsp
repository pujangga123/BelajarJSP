<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
    // connection string, tidak perlu dirubah
    String DBDRIVER = "com.mysql.cj.jdbc.Driver";

    // URI database
    String DBCONNECTION = "jdbc:mysql://localhost:3306/test";

    // username & password database
    String DBUSER = "root";
    String DBPASS = "";
    Connection conn = null;
    PreparedStatement st;

    
    String nama = "Ratna";
    String nim = "832737";
    Integer nilai = 34;
    
    try {
        Class.forName(DBDRIVER);
        conn = DriverManager.getConnection(DBCONNECTION, DBUSER, DBPASS);

        // prepare select statement
        String sql = "INSERT INTO mahasiswa (nim,nama,nilai) values (?,?,?)";
        st = conn.prepareStatement(sql);
        st.setString(1, nim);
        st.setString(2, nama);
        st.setInt(3, nilai);
        st.executeUpdate();
        conn.close();
    } catch (Exception ex) {
        out.println("Error");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data Baru</title>

    </head>
    <body>
        NIM: <%= nim %><br>
        Nama: <%= nama %><br>
        Nilai: <%= nilai %><br>
    </body>
</html>