package Util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Diego
 */
public class FabricaConexao {
    public static Connection getConexao() throws ClassNotFoundException, SQLException {
       Class.forName("org.postgresql.Driver");
       Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres", "123");
        
       return con;
    }
}