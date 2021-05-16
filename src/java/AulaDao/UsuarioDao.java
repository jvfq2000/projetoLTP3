package AulaDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UsuarioDao {
    private final Connection conn;

    public UsuarioDao() throws SQLException {
        this.conn = conexao.Conectar.conectar();
    }
    
public void inserirUsuario(Usuarios usuario) throws SQLException{
    String insertUsu = "INSERT INTO usuarios(user_login,user_passwd) VALUES(?,?)";
    PreparedStatement stmtInsert = this.conn.prepareStatement(insertUsu);
    stmtInsert.setString(1, usuario.getLogin());
    stmtInsert.setString(2, usuario.getPasswd());
    stmtInsert.execute();
    stmtInsert.close();   
}

public List<Usuarios> listaUsuarios() throws SQLException{
        String consulta = "SELECT * FROM usuarios";
        PreparedStatement stmtListUsuario = this.conn.prepareStatement(consulta);
        ResultSet rslt = stmtListUsuario.executeQuery();
        List<Usuarios> lstUser = new ArrayList<>();
        while (rslt.next()) {
            Usuarios usu = new Usuarios();
            usu.setId(rslt.getInt("user_id"));
            usu.setLogin(rslt.getString("user_login"));
            usu.setPasswd(rslt.getString("user_passwd"));
            lstUser.add(usu);
    }
        rslt.close();
        stmtListUsuario.close();
        return lstUser;
}

public void alteraUsuario(Usuarios usuario) throws SQLException{
    String conAlteracao = "UPDATE usuarios SET user_login = ?, user_passwd=? WHERE user_id = ?";
    PreparedStatement stmtAltera = this.conn.prepareStatement(conAlteracao);
    stmtAltera.setString(1, usuario.getLogin());
    stmtAltera.setString(2, usuario.getPasswd());
    stmtAltera.setInt(3, usuario.getId());
    stmtAltera.execute();
    stmtAltera.close();
}

public void excluirUsuario (Usuarios usuarios) throws SQLException{
    String excluir = "DELETE FROM usuarios WHERE user_id=?";
    PreparedStatement stmtExcluiUsuario = this.conn.prepareStatement(excluir);
    stmtExcluiUsuario.setInt(1, usuarios.getId() );
    stmtExcluiUsuario.execute();
    stmtExcluiUsuario.close();
}
}