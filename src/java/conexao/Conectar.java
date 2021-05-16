package conexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLDataException;
import java.sql.SQLException;

public class Conectar {
    
    public static String driver="com.mysql.jdbc.Driver";
    public static String url="jdbc:mysql://localhost/agenda_ltp3";
    public static String usuario = "root";
    public static String senha = "root";

    public static Connection conectar() throws SQLException{
        try {
            Class.forName(driver);
            System.out.println("Conexão com sucesso ao banco de dados!");
            return DriverManager.getConnection(url,usuario,senha);
        } catch (ClassNotFoundException e) {
            throw new SQLDataException(e.getMessage());
        }   
    }
}