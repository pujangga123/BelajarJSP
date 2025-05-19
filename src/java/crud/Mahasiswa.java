
package crud;

import java.util.ArrayList;
import java.sql.*;

public class Mahasiswa extends DBTable {
    public Mahasiswa() {
        PreparedStatement st = this.conn.prepareStatement();
    }
    
    public static ArrayList list() {
        ArrayList result = new ArrayList();
        PreparedStatement st;
        String sql = "SELECT * FROM mahasiswa";
        try {

        } catch (Exception e) {
            //
        }
    }
}
