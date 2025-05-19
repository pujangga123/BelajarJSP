package crud;

import java.sql.*;

public class DBTable {
    public  final String DBDRIVER = "com.mysql.cj.jdbc.Driver";
    public  final String DBCONNECTION = "jdbc:mysql://localhost:3306/test";
    public  final String DBUSER = "root";       // ganti dengan user database kamu
    public  final String DBPASS = "";   // ganti dengan password database kamu
    
    public Connection conn = null;
    
    public DBTable() {
        // Load driver
        try {
            Class.forName(this.DBDRIVER);
            conn = DriverManager.getConnection(this.DBCONNECTION, this.DBUSER, this.DBPASS);
        } catch (Exception e) {
            //
        }
    }
}
